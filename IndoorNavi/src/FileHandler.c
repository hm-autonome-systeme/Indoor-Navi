/*
 * FileHandler.c
 *
 *  Created on: 19.06.2017
 *      Author: Daniel
 *
 *  Updated on: 20.12.2017
 *      Author: Thai
 */
#include <string.h>
#include "data_connection.h"

#include <stdio.h>
#include <stdlib.h>

static FILE *fp;

void openFile(char fileName[100],char mode[2]) {
	fp = fopen(fileName, mode);
}

void writeMacadressAndSignalPower(char macAdress[20], int signalPower) {
	fprintf(fp, "%s %d,", macAdress, signalPower);
}

void writeWordWrap() {
	fprintf(fp, "\n");
}

void writePosition(double xPos, double yPos) {
	fprintf(fp, "#%d,%d\n", (int)xPos, (int)yPos);
}

void flushFile() {
	fflush(fp);
}

void closeFile() {
	fclose(fp);
}

/* reads the database in a struct */
PositionList_t readFromFile() {

	PositionList_t positionList;

	/* variable saving the mac adress */
	char macAdress[20];

	/* variable saving the RSSI */
	char signal[5];

	char position[5];
	int signalPower;
	double x;
	double y;
	int posi = 0;
	int index = 0;
	int deviceIndex = 0;
	int charIndex = 0;
	int c;
	int macOrPower = 0;
	char *pt;

	while(!feof(fp)) {


			c = fgetc(fp);

			if(feof(fp)) {
				break;
			}

		/* saving mac adress */
		if (c == ' ') {
			strncpy(positionList.list[index].AdressAndPower[deviceIndex].macadress, macAdress, sizeof(macAdress));
			memset(macAdress,'\0',sizeof(macAdress));

			charIndex = 0;

			/* mac adress completely read */
			macOrPower = 1;

			/* go to loop beginning */
			continue;
		}


		/* save RSSI */
		if (c == ',') {


			if (posi == 1){

				x = strtod(position, &pt);
				positionList.list[index].x = x;
				memset(&position,'\0',sizeof(position));

				/* next character y-coord */
				posi = 2;
				charIndex = 0;
				continue;
			}


				/* String to int (Typumwandlung) */
				signalPower = atoi(signal);
				positionList.list[index].AdressAndPower[deviceIndex].signalpower = signalPower;
				memset(signal, '\0', sizeof(signal));

				/* next access point */
				deviceIndex++;

				/* read mac adress again */
				macOrPower = 0;

			charIndex = 0;
			continue;
		}

		/* new measurement in database */
		if (c == '\n') {

			if (posi == 2){
				y = strtod(position, &pt);
				positionList.list[index].y = y;
				posi = 0;
			}

			macOrPower = 0;
			index++;
			deviceIndex = 0;
			charIndex = 0;
			continue;
		}

		/* save position */
		if (c == '#') {
			posi = 1;
		}

		if (macOrPower == 0) {
			macAdress[charIndex] = c;
		}
		else if(macOrPower == 1) {
			signal[charIndex] = c;
		}

		if(posi == 1 || posi == 2) {
			if(c == '#'){
				continue;
			} else {
				position[charIndex] = c;
			}
		}

		charIndex++;
	}

	closeFile();

	return positionList;
}
