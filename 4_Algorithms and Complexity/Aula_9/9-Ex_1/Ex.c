/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Ex.c
 * Author: FábioAlves
 *
 * Created on May 15, 2018, 3:40 PM
 */

#include <stdio.h>
#include <stdlib.h>
#include "stack.h"

/*
 * 
 */
int main(int argc, char** argv) {


    char k[30];

    printf("String:");
    fgets(k, 30, stdin);

    PtStack s = StackCreate(sizeof (char));

    char *p = k;
    
    while (p !='\0') {

        StackPush(s, p);
        p++;
        
    }
    
    char o;
    
    while (!StackIsEmpty(s)){
        
        StackPop(s,&o);
        printf("%c",o);
       
    }
    
    printf("\n");
    
    
    
    return (EXIT_SUCCESS);
}

