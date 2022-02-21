/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Exx.c
 * Author: FábioAlves
 *
 * Created on May 15, 2018, 4:24 PM
 */

#include <stdio.h>
#include <stdlib.h>

/*
 * 
 */
int main(int argc, char** argv) {

    int k[10];
    
    printf("Insira:");
    fputs(k,10,stdin);
    
    PtStack s = StackCreate(sizeof (int));
    PtQueue l = QueueCreate(sizeof (int));
   
    int*pon =k ;
    
    while(pon!='\0'){
    
        StackPush(s,pon);
        QueueEnqueue(l,pon);
        pon++;
        
    }
    
    int a;
    int b;
    
    while(!StackIsEmpty(s)){
    
        StackPop(s,&a);
        QueueDequeue(l,&b);
        
        if(a!=b){
            printf("nao");
            return (EXIT_SUCCESS);
        }
        
    }
    printf("sim");
    return (EXIT_SUCCESS);
}

