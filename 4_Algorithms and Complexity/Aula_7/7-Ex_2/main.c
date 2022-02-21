/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.c
 * Author: FábioAlves
 *
 * Created on April 10, 2018, 3:42 PM
 */

//Casos particulares : quandoo é que o expoente é par
//quando o expoente e impar

//O(log2(n))
/*
 *  0        2
 *  1        3
 *  10       4
 *  11       4
 *  100      5
 *  101      5
 *  110      6
 *  111      5
 *  1000     6
 *  1001     6    
 *  1010  
 
 *  1,se n=0
 *  x^n/2 * x^n/2 , se n>0
 *  x*x|n/2|floor*x|n/2|floor
 */
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

unsigned int count = 0;

float func(float x, unsigned int n) {

    if (n == 0) {
        return 1;
    }
    else if (n % 2 == 0) {
        count++;
        return pow(func(x, n / 2), 2);
    }
    else {
        count += 2;
        return x * pow(func(x, n / 2), 2);
    }
}

int main(int argc, char** argv) {

    float l; 
    float x = 0.5;
    
    for (int i = 1; i <= 16; i++) {

        l = func(x, i);
        printf("result: %f      mult: %u\n", l, count);
        count = 0;
        
    }
    return (EXIT_SUCCESS);
}