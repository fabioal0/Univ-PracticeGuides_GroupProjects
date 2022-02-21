#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include "elapsed_time.h"


/* definição do tipo de dados inteiro sem sinal de 64 bits */
/* definition of the 64-bit unsigned integer type */
typedef unsigned long long u64;

/* alusão das funções que implementam os algoritmos pretendidos */
/* allusion to the functions that implement the required algorithms */
u64 fib (int);

/* variável global para contar as operações aritméticas executadas pelo algoritmo */
/* global variable for counting the arithmetic operations executed by the algorithm */
u64 Count;

int main (void)
{
	u64 Result; int NLines, N, Test;

	/* leitura do valor limite da tabela */
	/* reading the limit value for the table */
	do
	{
		printf ("N de elementos da tabela? "); Test = scanf ("%d", &NLines);
		scanf ("%*[^\n]"); scanf ("%*c");
	} while (Test == 0);

    /* impressão da tabela de execução do algoritmo */
    /* impression of the table values for the algorithm's execution */
	for (N = 1; N <= NLines; N++)
	{
        /* inicialização da variável global contadora das operações aritméticas */
        /* initialization of the global variable for counting the arithmetic operations */
		Count = 0;

		/* invocação do algoritmo pretendido */
		/* invocation of the pretended algorithm */
		Result = fib (N);

		/* apresentação do resultado e do número de operações aritméticas executadas pelo algoritmo */
		/* presenting the result and the number of arithmetic operations executed by the algorithm */
		fprintf (stdout, "Fibonacci de %2d = %22llu e executou %12llu somas\n", N, Result, Count);
	}

	exit (EXIT_SUCCESS);
}

/* implementação dos algoritmos pretendidos */
/* acrescentar a contagem das operações aritméticas executadas pelos algoritmos usando a variável global */

/* implementation of the pretended algorithms */
/* do not forget to count the arithmetic operations using the global variable */

u64 fib (int n)
{
	return 0;
}



///* 
// * File:   Aula_2.cpp
// * Author: Fábio Alves nº84734
// */
//
//#include <stdio.h>
//#include <assert.h>
//#include <math.h>
//
//typedef unsigned long long int u64;
//
//int main(int argc, char** argv) {
//
//    double dt1 = 0.0;
//
//    int n = 100;
//    int count = -2;
//
//    u64 prev1 = (u64) 0;
//    u64 prev2 = (u64) 1;
//    u64 prev3 = (u64) 0;
//
//    for (int i = 0; i <= n; i++) {
//
//        prev3 = prev1;
//
//        prev1 = prev1 + prev2;
//
//        prev2 = prev3;
//
//        count++;
//
//        printf("%llu \n", prev2);
//
//    }
//
//    if (n == 0)
//        prev2 = 0;
//
//    else if (n == 1)
//        prev2 = 1;
//
//
//    printf("\n %d \n", count);
//    
//    return 0;
//}