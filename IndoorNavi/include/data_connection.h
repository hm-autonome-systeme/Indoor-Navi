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

#include <math.h>
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<stdbool.h>
#include <float.h>

#define ROWSIZE 50

typedef struct AdressAndPower {
    int signalpower;
    char macadress[20];
} AdressAndPower_t;

/**
 * Struct that contains the data to be saved.
 */
typedef struct ListRow {
    double x;
    double y;
    AdressAndPower_t AdressAndPower[100];
} ListRow_t;

/**
 * This is the list containing the saved data.
 */
typedef struct PositionList {
    ListRow_t list[29];
} PositionList_t;

/**
 * This struct contins the data to determine a position.
 */
typedef struct Position {
    double x;
    double y;
} Position_t;

int minSignalPower(int array[], int signalpower);

double getAmountOfTwoSignals(double first, double second);

Position_t findPositionOfSignal(AdressAndPower_t searchedSignal[], PositionList_t positionList);

int getIndexByRegex(char row[], char *regex, int beginningIndex);

double calcEuklid(double offlinesignal, double onlinesignal, double eukl);

int*  searchSmallestEuklid(int size, double *euklArray);

#endif /* DATA_CONNECTION_H_ */
