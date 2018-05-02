/*
 * ScanHandler.c
 *
 *  Created on: 19.06.2017
 *      Author: Daniel
 *
 *  Updated on: 20.12.2017
 *      Author: Thai
 *
 */
#include "../include/ScanHandler.h"



/**
 * WLAN:
 * Makes a scan and checks to the list of data. Calculates Position with Euclidian distance.
 *
 * Change: char *dev = "wlan0" if other WLAN Driver
 *
 *
 * BLE:
 * Makes a scan and calculates Position with Trilaterion
 *
 * void navigate(int argc, char **argv, int skfd, PositionList_t positionList, int *socket_desc)
 *
 */
void navigate(int argc, char **argv, int skfd, PositionList_t positionList) {
//    char *dev = "wlp1s0";
//    char *dev = "wlp3s0";
    char *dev = "wlan0";
    //char *cmd = "scan";
    char **args = argv +3;
    int count = argc -3;
    scanData_t retscanData[numberAP];


    if(strcmp(argv[2], "BleAndWlan") == 0 || strcmp(argv[2], "Bluetooth") == 0){
        blescan_t blescan;
        AdressAndPower_t adressPowerBle[3];

        int j;
        if(bleScan(&blescan) > 0){
            for(j=0;j<3;j++){
                strcpy(adressPowerBle[j].macadress,blescan.blescan[j].SSID);
                adressPowerBle[j].signalpower = blescan.blescan[j].RSSI;
            }

            /* Position Beacon 1 */
            double x1 = 0;
            double y1 = 0;

            /* Position Beacon 2 */
            double x2 = 6;
            double y2 = 0;

            /* Position Beacon 3 */
            double x3 = 0;
            double y3 = 3;


            /* Formula for Trilateration */
            /* RSSI at one Meter */
            double A1, A2, A3;

            A1 = -64.8;
            A2 = -64.8;
            A3 = -62.0;


            /* propagation pathloss exponent */
            //		double n = 2.2;
            double n = 4;

            /* distance to Beacons */
            double d1, d2, d3;

            d1 = pow(10,((adressPowerBle[0].signalpower - A1)/(-10*n)));
            d2 = pow(10,((adressPowerBle[1].signalpower - A2)/(-10*n)));
            d3 = pow(10,((adressPowerBle[3].signalpower - A3)/(-10*n)));

            /* position of receiver */
            double x, y;

            /* variable for Trilateration */
            double C = (pow(d1,2) - pow(d2,2) - pow(x1,2) + pow(x2,2) - pow(y1,2) + pow(y2,2));
            double E = ((-2)*y2 + 2*y3);
            double F = (pow(d2,2) - pow(d3,2) - pow(x2,2) + pow(x3,2) - pow(y2,2) + pow(y3,2));
            double B = ((-2)*y1 + 2*y2);
            double A = ((-2)*x1 + 2*x2);
            double D = ((-2)*x2 + 2*x3);


            /* Trilateration */
            x = (C*E - F*B)/(E*A - B*D);
            y = (C*D - A*F)/(B*D - A*E);

            printf("\n");
            printf("Position (BLE): %lf, %lf\n",x,y);
        }
    }

    if(strcmp(argv[2], "BleAndWlan") == 0 || strcmp(argv[2], "Wlan") == 0){
        /* Array with all euclidian distances [SIZE OF ARRAY DEPENDENT OF SIZE DATABASE] => Change size if Database is bigger! */
        double euklArray[29];


        int count_measurement = 0;

        /* number of received Access Points */
        int valid = 0;

        while(valid < 3) {

            /* measure max. 10 times to get one valid Measurment, else cancel */
            if(count_measurement >= 10) {

                printf("Termination. Receiving less than 3 Access Points. No valid Measurement possible.\n");
                exit(EXIT_FAILURE);

            }

            if(count_measurement != 0){
                memset(&retscanData, 0, sizeof(retscanData));
            }

            valid = 0;

            if (dev){

                (print_scanning_info)(skfd, dev, args, count,retscanData);
                count_measurement++;

            }
            else{

                printf("ELSE!");
            }

            //		printf("Found Networks: \n");

            for(size_t j = 0; j < sizeof(retscanData)/sizeof(retscanData[0]); j++) {

                if (retscanData[j].validScan == 1 && retscanData[j].SSID > -100 && retscanData[j].SSID < 0){
                    //				printf("ESSID: %s\n",retscanData[j].essid);
                    //				printf("SCAN: %s,%d\n\n",retscanData[j].mac,retscanData[j].SSID);
                    valid++;
                }
            }

            usleep(1000000);
        }

        AdressAndPower_t adressPower[15];

        /* save first 15 Access Points and the belonging RSSI value */
        int p;
        for (p = 0; p < 15 ; p++) {
            if (retscanData[p].validScan != 1 || retscanData[p].SSID < -100 || retscanData[p].SSID > 0){
                break;
            } else {

                strncpy(adressPower[p].macadress,retscanData[p].mac,sizeof(retscanData[p].mac));
                adressPower[p].signalpower = retscanData[p].SSID;
            }
        }


        /* number of corresponding Access Points (Measurement - Database) */
        int numberOfMatches;

        /* number of calculated euclidian distances */
        int euklidCounter = 0;
        double eukl;
        double diff;

        //----------------- Iterate through Database ----------------------------
        for (size_t i = 0; i < sizeof(positionList.list)/sizeof(positionList.list[0]); i++) {


            size_t deviceIndex;
            numberOfMatches = 0;
            eukl = 0;

            /* Iterate through Access Points in Database */
            for (deviceIndex = 0;
                    deviceIndex < sizeof(positionList.list[i].AdressAndPower)/sizeof(positionList.list[i].AdressAndPower[0]);
                    deviceIndex++) {

                size_t checkIndex;
                double sSignal;
                double listSignal;

                /* Iterate through Access Points of Measurement */
                for (checkIndex = 0; checkIndex < sizeof(adressPower)/sizeof(adressPower[0]); checkIndex++) {

                    /* if Access Point of Measurement is the same as in Database: calculate euclidian distance */
                    if (strcmp(positionList.list[i].AdressAndPower[deviceIndex].macadress, adressPower[checkIndex].macadress) == 0) {

                        numberOfMatches++;
                        sSignal = adressPower[checkIndex].signalpower;
                        listSignal = positionList.list[i].AdressAndPower[deviceIndex].signalpower;

                        sSignal = fabs(sSignal);
                        listSignal = fabs(listSignal);

                        if(sSignal > listSignal){
                            diff = sSignal - listSignal;
                        } else {
                            diff = listSignal - sSignal;
                        }

                        //Berechnung Euklidischer Abstand
                        double diff_square = pow(diff, 2);

                        eukl = diff_square + eukl;

                    }
                }

            }

            /* only save euclidian distance, if 5 or more Access Points matches (Measurement - Database) */
            if(numberOfMatches > 5){

                euklidCounter = euklidCounter + 1;
                euklArray[i] = sqrt(eukl);

            } else {

                /* save infinity, if less than 3 matches */
                euklArray[i] = DBL_MAX;
            }
        }

        /* Use 4 Reference Points with the smallest euclidian distance for Interpolation
           - if less than 4 euclidian distances was calculated, then interpolate between them
           - if none euclidian distance was calculated -> return */
        int size = 0;

        if(euklidCounter > 3){

            size = 4;

        } else if (euklidCounter < 4 && euklidCounter > 0){

            printf("Not enough Euclidian Distances were calculated.\n\n");
            return;
            //		size = euklidCounter;

        } else if (euklidCounter == 0){

            printf("No Euclidian Distance was calculated.\n\n");
            return;
        }


        /* Array with indices of the smallest euclidian distance */
        size_t index[size];

        size_t k;
        int l;

        /* Search for the smallest euclidian distances */
        for(l = 0; l < size; l++){
            double smallest_value = DBL_MAX;
            for(k = 0; k < sizeof(euklArray)/sizeof(euklArray[0]); k++){
                if(l == 0){
                    if (euklArray[k] < smallest_value)
                    {
                        smallest_value = euklArray[k];
                        index[l] = k;
                    }
                }

                if(l != 0){
                    if (euklArray[k] < smallest_value && euklArray[k] > euklArray[index[l-1]])
                    {
                        smallest_value = euklArray[k];
                        index[l] = k;
                    } else if (euklArray[k] == euklArray[index[l-1]]){
                        size_t z;
                        int inside = 0;
                        for(z = 0; z < sizeof(index)/sizeof(index[0]); z++ ){

                            if(k == index[z]){
                                inside = 1;
                            }
                        }
                        if(inside == 0){

                            index[l] = k;
                            break;
                        }
                    }
                }
            }
        }

        /* Interpolate between 4 euclidian distances and their belonging x-y-coords
           - if alle listings are infinity or less than 4 euclidian distances were calculated -> terminate */
        if(euklidCounter > 3) {

            int m;
            double numerator_x = 0;
            double numerator_y = 0;
            double denominator = 0;
            int n;

            for(m = 0; m < 4; m++){

                n = index[m];

                double tmp_x = pow(euklArray[n], -1.0) * positionList.list[index[m]].x;
                numerator_x = tmp_x + numerator_x;


                double tmp_y = pow(euklArray[n], -1.0) * positionList.list[index[m]].y;
                numerator_y = tmp_y + numerator_y;

                denominator = pow(euklArray[n], -1.0) + denominator;

            }

            double x = numerator_x/denominator;
            double y = numerator_y/denominator;

            printf("Position (WLAN): %lf, %lf\n",x, y);

            /* Send position to remote station */
            /*		char message[100];
                    sprintf(message, "%lf,%lf", x, y);
                    printf("%s\n",message);

                    if(send(*socket_desc , message , (sizeof(message)+8) , 0) < 0){
                    puts("Send failed");
                    }

                    usleep(1000000);
                    printf("Data Send\n"); */

        } else {

            /* Send position to remote station */
            /*		char error[] = "Position nicht gefunden.";
                    if(send(*socket_desc , error , (sizeof(error)-1) , 0) < 0){
                    puts("Send failed");
                    }

                    usleep(1000000);
                    printf("Data Send\n");
                    printf("Position nicht gefunden\n\n"); */
        }
    }
}

/**
 * Scans the driver of the wlan/BLE and writes it with the position to the file.
 *
 * Change: char *dev = "wlp1s0" if other wlan driver
 *
 */
void scanWlan(int argc, char **argv, int skfd, Position_t position) {

    //char *dev = "wlp1s0";
    //char *dev = "wlp3s0"; // Jussi's laptop
    char *dev = "wlan0";
    //char *cmd = "scan";
    char **args = argv +5;
    int count = argc -5;

    /* for each Position Measurement of max. 30 Access Points */
    scanData_t retScanData[numberAP];

    ListRow_t listRow;

    /* Bluetooth Scan */
    if(strcmp(argv[4], "Bluetooth") == 0 || strcmp(argv[4], "BleAndWlan") == 0) {
        printf("--(Info) Scanning Bluetooth or Bluetooth and Wlan combined.\n");

        blescan_t blescan;
        openFile("../exports/database_ble.txt", "a+");

        if(bleScan(&blescan) > 0){
            for(int j=0;j<3;j++){
                strcpy(listRow.AdressAndPower[j].macadress,blescan.blescan[j].SSID);
                listRow.AdressAndPower[j].signalpower = blescan.blescan[j].RSSI;
            }
        } else {
            printf("--(Info) Unsuccessfull! bleScan returned: %d\n", bleScan(&blescan));
        }

        listRow.x = position.x;
        listRow.y = position.y;

        int i;
        for (i = 0; i < 3; i++) {
            writeMacadressAndSignalPower(listRow.AdressAndPower[i].macadress, listRow.AdressAndPower[i].signalpower);
        }

        writePosition(listRow.x, listRow.y);
        flushFile();
        usleep(1000000);

    } else if(strcmp(argv[4], "Wlan") == 0 || strcmp(argv[4], "BleAndWlan") == 0) {
        /* WLAN Scan */

        openFile("../exports/database_final.txt", "a+");

        int count_measurement = 0;

        /* number of received Access Points */
        int valid = 0;

        /* do the actual work */
        while(valid < 3) {

            /* max. 10 Measurements for one valid Measurement, if not terminate */
            if(count_measurement >= 10) {

                printf("Abbruch. Empfange weniger als 3 Access Points. Keine gueltige Messung moeglich.\n");
                exit(EXIT_FAILURE);

            }

            if(count_measurement != 0){
                memset(&retScanData, 0, sizeof(retScanData));
            }

            valid = 0;

            if (dev){

                (print_scanning_info)(skfd, dev, args, count,retScanData);
                count_measurement++;
            }
            else{

                printf("ELSE!");
            }

            //			printf("Found Networks: \n");

            for(size_t j = 0; j < sizeof(retScanData)/sizeof(retScanData[0]); j++) {

                if (retScanData[j].validScan == 1 && retScanData[j].SSID > -100 && retScanData[j].SSID < 0){
                    //printf("ESSID: %s\n",retScanData[j].essid);
                    //printf("SCAN: %s,%d\n\n",retScanData[j].mac,retScanData[j].SSID);
                    valid++;
                }
            }

            usleep(1000000);
        }


        for (size_t i = 0; i < sizeof(retScanData)/sizeof(retScanData[0]); i++) {
            if (retScanData[i].validScan != 1 || retScanData[i].SSID < -100 || retScanData[i].SSID > 0){
                break;
            } else {
                strncpy(listRow.AdressAndPower[i].macadress,retScanData[i].mac,sizeof(retScanData[i].mac));
                listRow.AdressAndPower[i].signalpower = retScanData[i].SSID;
            }
        }

        listRow.x = position.x;
        listRow.y = position.y;

        /* save Mac-Adress and RSSI in database */
        int z;
        for(z = 0; z < valid/*(sizeof(listRow.AdressAndPower)/
                              sizeof(listRow.AdressAndPower[0]))*/; z++) {
            writeMacadressAndSignalPower(listRow.AdressAndPower[z].macadress, listRow.AdressAndPower[z].signalpower);
        }

        writePosition(listRow.x, listRow.y);
        flushFile();
        usleep(1000000);
    } else {
        printf("--(Info) Invalid CMD Argument.\n");
    }

}

