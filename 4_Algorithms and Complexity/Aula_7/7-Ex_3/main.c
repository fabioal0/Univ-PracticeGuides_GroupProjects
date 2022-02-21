/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.c
 * Author: FábioAlves
 *
 * Created on April 10, 2018, 4:16 PM
 */

/*
 * 
 * int isPower(unsigned int a, unsigned int b){
 *  assert a>0 && b>0;
 * }
 * 
 * Exemplos
 *  
 *  isPower(1,10)   ->true
 *  isPower(10,10)  ->true
 *  isPower(9,10)   ->false
 *  isPower(100,10) ->true
 *  isPower(50,10)  ->false
 * 
 * melhor caso para n nao multiplo
 * pior caso ser multiplo   O(log b(a))  floor (log b(n))
 * 
 * 
 */

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

unsigned int count = 0;

int isPower(unsigned int a, unsigned int b) {
    assert (a!=0 && b!=0);
    
    if (a == 1) {
        return 1;
    } 
    
    else if (b == 1) {
        return 1;
    }
    
    else if (b == a) {
        return 1;
    }
    
    else {
        
        if (a % b == 0) {
            count++;
            isPower(a / b, b); 
        } 
        
        else {
            return 0;
        }
    }
}

int main(int argc, char** argv) {

    printf("IsPower: %s\t\t",isPower(1024, 2) ? "true" : "false");
    printf("mult: %u",count);
    
    return (EXIT_SUCCESS);
}

