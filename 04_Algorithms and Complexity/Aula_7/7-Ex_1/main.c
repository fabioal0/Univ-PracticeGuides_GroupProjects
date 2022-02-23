/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.c
 * Author: FábioAlves
 *
 * Created on April 10, 2018, 3:14 PM
 */

//O(N)

#include <stdio.h>
#include <stdlib.h>

unsigned int count = 0;

float func(float x, unsigned int n) {

    if (n == 0) {
        return 1;
    }

    count++;
    n--;

    return x * func(x, n);
}

int main(int argc, char** argv) {

    float x = 0.5;
    float l;
    
    for (int i = 1; i <= 16; i++) {

        l = func(x, i);
        printf("result: %f      mult: %u\n", l, count);
        count = 0;

    }
    return (EXIT_SUCCESS);
}

