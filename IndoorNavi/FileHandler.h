/*
 * FileHandler.h
 *
 *  Created on: 19.06.2017
 *      Author: Daniel
 *
 *
 *   Updated on: 12.01.2018
 *   	Author: Thai
 */

#ifndef FILEHANDLER_H_
#define FILEHANDLER_H_

FILE *fp;

void openFile(char fileName[100],char mode[2]);

void writeMacadressAndSignalPower(char macAdress[20], int signalPower);

void writePosition(double xPos, double yPos);

void flushFile();

void closeFile();

void writeWordWrap();

PositionList_t readFromFile();

#endif /* FILEHANDLER_H_ */
