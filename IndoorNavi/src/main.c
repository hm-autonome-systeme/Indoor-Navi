/*
 * main.c
 *
 *  Created on: 30.06.2017
 *      Author: robert
 *
 *  Updated on: 11.01.2017
 *  	Author: Thai
 */


#include <stdio.h>
#include <stdlib.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <unistd.h>
//#include "wireless.h"
//#include "../include/iwlib.h"
//#include "wlanscan.h"
#include "data_connection.h"
#include "../bus_component/bus_handler.h"
#include "Odometrie.h"
#include "ScanHandler.h"
#include "FileHandler.h"
//#include "data_connection.h"
//#include "ConnectionHandler.h"



int main(int argc, char*argv[]){
	int skfd =0;
	int timer;
	if((skfd = iw_sockets_open()) < 0)
	{
		perror("socket");
		return -1;
	}

	/* Offlinephase - Measurement of RSSI value at reference point */
	if (strcmp(argv[1], "Vermessung") == 0) {

		if(argv[2] == 0){
			printf("Bitte X Koordinate eingeben!\n");
			return -1;
		} else if(argv[3] == 0){
			printf("Bitte Y Koordinate eingeben!\n");
			return -1;
		}

		double x = atof(argv[2]);
		double y = atof(argv[3]);


		Position_t pos ={x,y};

		for(timer=1;timer<= numberMes;timer++){
			printf("Measurement number: %d\n", timer);
			scanWlan(argc,argv,skfd,pos);
			usleep(1000000);
		}



	}else if(strcmp(argv[1], "Navigation") == 0){
		openFile("database_final.txt","r+");
		printf("Open File\n\n");

		PositionList_t positionList;


		positionList = readFromFile();

		printf("File read\n\n");

		// ---------------------------- Connect to remote Station ---------------------------------------
		//		int socket_desc;
		//		struct sockaddr_in server;
		//
		//		// --- Create socket ---
		//		socket_desc = socket(AF_INET, SOCK_STREAM, 0);
		//
		//		if(socket_desc == -1){
		//
		//			printf("Could not create socket.");
		//
		//		}
		//
		//		server.sin_addr.s_addr = inet_addr("10.179.6.176");
		//		server.sin_family = AF_INET;
		//		server.sin_port = htons(1234);
		//
		//		//Connect to remote server
		//		if (connect(socket_desc , (struct sockaddr *)&server , sizeof(server)) < 0)
		//		{
		//			printf("connect error\n");
		//			return 1;
		//		}
		//
		//		printf("Connected\n");
		//		// ---------------------------------------------------


		for(timer=1;timer<=50;timer++){
			printf("Messung Nummer: %d\n", timer);
			navigate(argc,argv,skfd,positionList);
			//			navigate(argc,argv,skfd,positionList, &socket_desc);
			usleep(1000000);
		}
		//		close(socket_desc);
	}


//	iw_sockets_close(skfd);
	return 0;
}
