/*
 * blescan.h
 *
 *  Created on: 29.06.2017
 *      Author: robert
 */

#ifndef BLESCAN_H_
#define BLESCAN_H_

#include <bluetooth/bluetooth.h>
#include <bluetooth/hci.h>
#include <bluetooth/hci_lib.h>
#include <errno.h>
#include <sys/time.h>
#include <stdlib.h>
#include <sys/ioctl.h>
#include <sys/socket.h>
#include <string.h>
#include <time.h>
#include <unistd.h>

 struct blescan{
	char SSID[18];
	int RSSI;
};
 typedef struct{
	 struct blescan blescan[3];
 }blescan_t;

 int bleScan(blescan_t* bleData);
#endif /* BLESCAN_H_ */
