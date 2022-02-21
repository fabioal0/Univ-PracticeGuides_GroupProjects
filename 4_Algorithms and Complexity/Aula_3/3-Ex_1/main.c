/* 
 * File:   Aula_3.c
 * Author: Fábio Alves nº84734
 */
#include <stdio.h>
#include <stdlib.h>

/* alusão da função que implementa o algoritmo */
/* allusion to the function that implements the algorithm */
int CountElements (int [], int);

/* variável global para contar as operações aritméticas executadas pelo algoritmo */
/* global variable for counting the arithmetic operations executed by the algorithm */
int Comp = 0;

int main (void)
{
	/* declaração dos arrays de teste - usar o pretendido para cada execução */
	/* declaration of the test arrays - use each one for each execution */

//	 int Array[] = { 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 }; 
//	 int Array[] = { 4, 3, 3, 3, 3, 3, 3, 3, 3, 3 }; 
//	 int Array[] = { 4, 5, 3, 3, 3, 3, 3, 3, 3, 3 }; 
//	 int Array[] = { 4, 5, 1, 3, 3, 3, 3, 3, 3, 3 }; 
//	 int Array[] = { 4, 5, 1, 2, 3, 3, 3, 3, 3, 3 }; 
//	 int Array[] = { 4, 5, 1, 2, 6, 3, 3, 3, 3, 3 }; 
//	 int Array[] = { 4, 5, 1, 2, 6, 8, 3, 3, 3, 3 }; 
//	 int Array[] = { 4, 5, 1, 2, 6, 8, 7, 3, 3, 3 }; 
//	 int Array[] = { 4, 5, 1, 2, 6, 8, 7, 9, 3, 3 }; 
	 int Array[] = { 4, 5, 1, 2, 6, 8, 7, 9, 3, 0 }; 

//	int Array[] = { };
	int NElem = sizeof (Array) / sizeof (int); int Result;

	/* invocação do algoritmo -  algorithm invocation */
	Result = CountElements (Array, NElem);

	/* apresentação do resultado e do número de operações aritméticas executadas pelo algoritmo */
	/* presenting the result and the number of arithmetic operations executed by the algorithm */
	fprintf (stdout, "Resultado = %3d \nN. de operacoes = %3d\n", Result, Comp);

   
}

/* implementação do algoritmo pretendido */
/* não se esqueça de contar as operações aritméticas executadas pelo algoritmo usando a variável global */

/* implementation of the pretended algorithm */
/* do not forget to count the arithmetic operations using the global variable */


int CountElements (int array[], int n){
    
    int i = 0;
    int count=0;
    for (i = 1; i < n; i++) {
        Comp++;
        if (array[i] != array[i - 1]) {
            count++;
        }

    }
    
    return count;
}