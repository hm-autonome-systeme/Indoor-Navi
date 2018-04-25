/*
 * ScanHandler.h
 *
 *  Created on: 19.06.2017
 *      Author: Daniel
 *
 *  Updated on: 20.12.2017
 *      Author: Thai
 *
 */

#ifndef SCANHANDLER_H_
#define SCANHANDLER_H_

#include "data_connection.h"

#define numberAP 60
#define numberMes 5

/* void navigate(int argc, char **argv, int skfd,PositionList_t positionList, int *socket_desc); */
void navigate(int argc, char **argv, int skfd,PositionList_t positionList);

void scanWlan(int argc, char **argv, int skfd, Position_t position);

#endif /* SCANHANDLER_H_ */
