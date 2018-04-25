/*
 * data_connection.h
 *
 *  Created on: 16.05.2017
 *      Author: Daniel
 *
 *  Updated on: 20.12.2017
 *      Author: Thai
 */

#ifndef DATA_CONNECTION_H_
#define DATA_CONNECTION_H_

typedef struct AdressAndPower {
	int signalpower;
	char macadress[20];
} AdressAndPower_t;

typedef struct ListRow {
	double x;
	double y;
	AdressAndPower_t AdressAndPower[100];
} ListRow_t;

typedef struct PositionList {
	ListRow_t list[29];
} PositionList_t;

typedef struct Position {
	double x;
	double y;
} Position_t;

int minSignalPower(int array[], int signalpower);

int getAmountOfTwoSignals(int first, int second);

Position_t findPositionOfSignal(AdressAndPower_t searchedSignal[], PositionList_t positionList);

int getIndexByRegex(char row[], char regex, int beginningIndex);

double calcEuklid(double offlinesignal, double onlinesignal, double eukl);

int*  searchSmallestEuklid(int size, double *euklArray);

#endif /* DATA_CONNECTION_H_ */
