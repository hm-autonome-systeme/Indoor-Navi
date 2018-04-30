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

#include <float.h>
#include <iwlib.h>
#include <stdio.h>
#include <stdlib.h>

#include "../bus_component/bus_handler.h"
#include "blescan.h"
#include "data_connection.h"
#include "FileHandler.h"
#include "wlanscan.h"

#define numberAP 60
#define numberMes 5

/* void navigate(int argc, char **argv, int skfd,PositionList_t positionList, int *socket_desc); */
void navigate(int argc, char **argv, int skfd,PositionList_t positionList);

void scanWlan(int argc, char **argv, int skfd, Position_t position);

#endif /* SCANHANDLER_H_ */
