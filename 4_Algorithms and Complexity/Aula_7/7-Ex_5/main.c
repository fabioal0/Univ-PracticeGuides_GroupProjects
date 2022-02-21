/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.c
 * Author: FábioAlves
 *
 * Created on April 10, 2018, 4:56 PM
 */

#include <stdio.h>
#include <stdlib.h>

unsigned int count = 0;

int rec(unsigned int n, int array[]) {

    if (n == 0 || n == 1) {
        return n;
    }

    count += 2;
    return 3 * array[n - 1] + 2 * array[n - 2];
}

int main(int argc, char** argv) {

    for (int n = 0; n <= 12; n++) {
        int array[n];
  
        for (int i = 0; i <= n; i++) {
            array[i] = rec(i, array);
        }

        printf("result: %d\t\t mult: %u\n", array[n], count);
        count = 0;
    }
    return (EXIT_SUCCESS);
}

