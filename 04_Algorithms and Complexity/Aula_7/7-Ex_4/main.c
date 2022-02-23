/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.c
 * Author: FábioAlves
 *
 * Created on April 10, 2018, 4:34 PM
 */

#include <stdio.h>
#include <stdlib.h>

/*
 * P(0) = 0
 * P(1) = 1
 * P(n) = 3 × P(n – 1) + 2 × P (n – 2), para n >1
 * 
 * 0    0   0
 * 1    1   0
 * 2    3   2
 * 3    11  4
 * 4    39  8
 * 5        14
 * 6        24
 * 7        40
 * 8        66 
 * 9        108 
 * 
 * 1    -   verificar caso de base
 * 2    -   criar 1 array de tamanho apropriado
 * 3    -   registar caso de base
 * 4    -   ciclo for para preencher array
 * 5    -   Desenvolver o valor pedido(esta no array)(Linear)
 * 
 */

unsigned int count = 0;

int rec(unsigned int n) {

    if (n == 0 || n==1) {
        return n;
    }

    count+=2;
    return 3 * rec(n - 1) + 2 * rec(n - 2);

}

int main(int argc, char** argv) {
 
    int l;
    
    for (int i = 0; i <= 12; i++) {

        l = rec(i);
        printf("result: %d\t\t mult: %u\n", l, count);
        count = 0;
        
    }

    return (EXIT_SUCCESS);
}