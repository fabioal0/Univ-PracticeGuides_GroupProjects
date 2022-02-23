/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.c
 * Author: FábioAlves
 *
 * Created on May 14, 2018, 10:59 AM
 */

#include <stdio.h>
#include <stdlib.h>

unsigned int count = 0;

float auxi(int n) {

    float array[n + 1];
    float res;
    int i, k;

    array[0] = 1;

    for (i = 1; i <= n; i++) {

        res = 0;

        for (k = 0; k < i; k++) {

            count++;
            res += array[k] * array[i - k - 1];

        }

        array[i] = array[i - 1] + res;
    }
    return array[n];
}

int main(int argc, char** argv) {

    int l;

    for (int i = 0; i <= 12; i++) {

        l = auxi(i);
        printf("result: %d\t\t mult: %u\n", l, count);
        count = 0;

    }

    return (EXIT_SUCCESS);
}

