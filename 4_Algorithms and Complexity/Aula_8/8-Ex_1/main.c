/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.c
 * Author: FábioAlves
 *
 * Created on April 17, 2018, 3:20 PM
 */

/*
 ******************************************************************************************************************************
 *  
 * S(0) = 1 ;
 * S(1) = S(0) + somatório(0->0) S(i)*S(i)   = 2
 * S(2) = S(1) + somatório(0->1) S(i)*S(1-i) = S(1) + S(0)*S(1)             + S(1)*S(0) = 6
 * S(3)                                      = S(2) + S(0)*S(2) + S(1)*S(1) + S(2)*S(0) = 22
 * S(4) = S(3) + somatório(0->3) S(i)*S(3-i) = S(3) + S(0)*S(3) + S(1)*S(2) + S(2)*S(1) + S(3)*S(0)
 *
 ******************************************************************************************************************************
 * 
 * Prática_1 :
 * 
 * S(0) = 1;
 * S(1) = 2*S(0);
 * S(2) = 2*S(1); 
 * 
 * impar > 1
 * S(n) = S(n-1) + S((n-1)/2) + 2 * somatório(0-(n-1)/2) S(i)*S(n-1-i);
 * 
 * par > 2
 * S(n) = S(n-1) + 2 * somatório(0->n/2-1) S(i)*S(n-1-i);
 * 
 * 
 *          |   0 , se n=0;
 * Mult=    |  
 *          |   n + Mult(n-1) + somatorio (0->n-1) Mult(i) + somatorio (0->n-1) Mult(n-1-i) <=>
 *          <=> n + Mult(n-1) + 2 somatorio(0->n-1) Mult(i)
 * 
 *          726 ou 400(e poucos) multiplicações
 * 
 * Teórica_1 :
 * 
 *      | Mult(n)   = n     + Mult(n-1) + 2 somatório(0->n-1) Mult(i)
 *      | Mult(n-1) = (n-1) + Mult(n-2) + 2 somatorio(0->n-2) Mult(i)
 * 
 *      |    Mult(n)-Mult(n-1) = 1 + Mult(n-1) - Mult(n-2) + 2 Mult(n-1)
 *      |<=> Mult(n) = 4 Mult(n-1) - Mult(n-2) + 1
 *      |<=> Mult(n) < 4 Mult(n-1)
 * 
 * 
 *******************************************************************************************************************************
 *
 *  Prática_2 : 
 *   
 *    unsigned int S_Prog_Dim(unsigned int n){
 *  
 *          1º criar o array de dimensão(n+1)
 *          
 *          Casos simples-> fazer return
 * 
 *          S[0]=1;
 *          
 *          for(...)
 *              -> Preencher o array 
 *              
 *              for(...)
 *                  ->para fazer calculos
 *          
 *          return ... ;
 *      }        
 * 
 *      |---------------|
 *      |1|2|6|22|90|394|
 *      |---------------|
 *       0 1 2  3  4  5
 * 
 * 
 */


#include <stdio.h>
#include <stdlib.h>

unsigned int count = 0;

float auxi(int n){
   
    float som=0;
    
    if(n==0|n==1){
        return n+1;
    }
        
    else if(n%2==0){
    
        for(int i=1;i<n/2;i++){
            count++;
            som+=auxi(i)*auxi(n-i-1);
        }
        
        count++;
        return 3*auxi(n-1)+som+som; 
        
    }
        
    else{
        
        for(int i=1;i<(n-1)/2;i++){
            count++;
            som+=auxi(i)*auxi(n-i-1);
        }
        
        count+=2;
        return 3*auxi(n-1)+ auxi((n-1)/2) *auxi((n-1)/2)+som+som; 
        
    }    
   
}

int main(int argc, char** argv) {

    int l;
    
    for (int i = 0; i <= 12; i++) {

        l= auxi(i);
        printf("result: %d\t\t mult: %u\n",l, count); 
        count = 0;
        
    }
    
    return (EXIT_SUCCESS);
}