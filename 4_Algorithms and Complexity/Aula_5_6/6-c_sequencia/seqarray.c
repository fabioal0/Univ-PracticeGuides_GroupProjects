/*******************************************************************************
 Ficheiro de implementação do Tipo de Dados Abstracto SEQ_ARRAY (seqarray.c).
 A estrutura de dados de suporte da sequência é um registo, constituída pelos
 campos de tipo inteiro Dim para indicar a capacidade de armazenamento da 
 sequência e Size para indicar o número de elementos efectivamente armazenados na
 sequência e o campo de tipo ponteiro Seq, para representar a sequência (array) 
 atribuída dinamicamente onde são armazenados os números inteiros.

 Autor : Fábio Daniel Ribeiro Alves                                   NMEC : 84734          
*******************************************************************************/

#include <stdio.h> 
#include <stdlib.h>

#include "seqarray.h"  /* Ficheiro de interface do TDA - ADT Interface file */

/************ Definição da Estrutura de Dados Interna da Sequência ************/

struct seqarray
{
  unsigned int Dim; /* capacidade de armazenamento - array's size */
  int Size; /* número de elementos - sequence's size */
  int *Seq; /* ponteiro para armazenar a sequencia - array to store the numbers */
};

/*********************** Controlo Centralizado de Error ************************/

static unsigned int Error = OK;  /* inicialização do erro */

static char *ErrorMessages[] = {
                                 "sem erro - Without Error",
                                 "sequencia(s) inexistente(s) - Sequence(s) do not exist",
                                 "memoria esgotada - Out of memory",
                                 "indice errado - Wrong index",
                                 "elemento inexistente - Element does not exist",
                                 "sequencia vazia - Empty sequence",
                                 "sequencia cheia - Full sequence",
                                 "dimensao da sequencia errada - Wrong size",
                                 "ficheiro inexistente - File does not exist"
                               };

static char *AbnormalErrorMessage = "erro desconhecido - Unknown error";

/************** Número de mensagens de erro previstas no módulo ***************/

#define N (sizeof (ErrorMessages) / sizeof (char *))

/*************************** Definição das Funções ****************************/

void SeqArrayClearError (void)
{ Error = OK; }
int SeqArrayError (void)
{ return Error; }

char *SeqArrayErrorMessage (void) 
{
  if (Error < N) return ErrorMessages[Error];
  else return AbnormalErrorMessage;  /* sem mensagem de erro - no error message */
}

PtSeqArray SeqArrayCreate (unsigned int pdim)
{
    if (pdim == 0) {
        Error = BAD_SIZE;
        return NULL;
    }
    
    PtSeqArray Array;
    
    if ((Array = malloc (sizeof (struct seqarray))) == NULL){
        Error = NO_MEM; 
        return NULL; 
    }
   
    Array->Size = 0;
    Array->Dim  = pdim;
    Array->Seq = malloc(sizeof (int)*pdim);
    
    if( Array->Seq == NULL){
        free(Array); 
        Error = NO_MEM; 
        return NULL; 
    
    }
        
    Error = OK;
   
    return Array;
}

void SeqArrayDestroy (PtSeqArray *pseq){
    
    PtSeqArray Array = *pseq;
     
    if (Array == NULL) { 
        Error = NO_SEQ; 
        return ; 
    }

    free (Array->Seq);
    free (Array);
  
    Error = OK;
    *pseq = NULL; 
}

PtSeqArray SeqArrayCopy (PtSeqArray pseq)
{
  PtSeqArray Copy; int I;

  /* verifica se a sequência existe - verifies if sequence exists */
  if (pseq == NULL) { Error = NO_SEQ; return NULL; }

  /* criação da sequência copia vazia - creating an empty sequence */
  if ((Copy = SeqArrayCreate (pseq->Dim)) == NULL) return NULL;

  /* fazer a copia dos elementos da sequência - copying the components */
  for (I = 0; I < pseq->Size; I++) Copy->Seq[I] = pseq->Seq[I];
  Copy->Size = pseq->Size;

  return Copy;  /* devolve a sequência copia - returning the new sequence */
}

PtSeqArray SeqArrayFileCreate (char *pfname)
{
  PtSeqArray Seq; FILE *PtF; unsigned int Dim, Size, I;

  /* abertura com validacao do ficheiro para leitura - opening the text file for reading */
  if ( (PtF = fopen (pfname, "r")) == NULL) { Error = NO_FILE; return NULL; }

  /* leitura da dimensão da sequência e do número de elementos armazenados */
  /* reading the sequence's dimension and the number of elements */
  fscanf (PtF, "%u %u", &Dim, &Size);
  if (Dim < 1) { Error = BAD_SIZE; fclose (PtF); return NULL; }

  /* criação da sequência com a dimensão pretendida - creating the sequence */
  if ((Seq = SeqArrayCreate (Dim)) == NULL) { fclose (PtF); return NULL; }

  /* leitura da sequência do ficheiro - reading the sequence's components from the text file */
  for (I = 0; I < Size; I++) fscanf (PtF, "%d", Seq->Seq+I);
  Seq->Size = Size;

  fclose (PtF);  /* fecho do ficheiro - closing the text file */
  Error = OK;
  return Seq;  /* devolve a sequência criada - returning the new sequence */
}

void SeqArrayStoreFile (PtSeqArray pseq, char *pfname)
{
  FILE *PtF; unsigned int I;

  /* verifica se a sequência existe - verifies if sequence exists */
  if (pseq == NULL) { Error = NO_SEQ; return ; }

  /* verifica se a sequência tem elementos - verifies if sequence has elements */
  if (pseq->Size == 0) { Error = SEQ_EMPTY; return ; }

  /* abertura com validacao do ficheiro para escrita - opening the text file for writing */
  if ((PtF = fopen (pfname, "w")) == NULL) { Error = NO_FILE; return ; }

  /* escrita da dimensão da sequência e do número de elementos armazenados na sequência */
  /* writing the sequence's dimension and the number of elements */
  fprintf (PtF, "%u %u\n", pseq->Dim, pseq->Size);

  /* escrita da sequência - writing the sequence's components in the text file */
  for (I = 0; I < pseq->Size; I++) fprintf (PtF, "%d\n", pseq->Seq[I]);

  Error = OK;
  fclose (PtF);  /* fecho do ficheiro - closing the text file */
}

int SeqArrayGetDimension (PtSeqArray pseq)
{
    if(pseq==NULL){
        Error=NO_SEQ;
        return 0;
    }
    
    Error = OK;
    
    return pseq->Dim;
}

int SeqArrayGetSize (PtSeqArray pseq)
{
    if(pseq==NULL){
        Error=NO_SEQ;
        return 0;
    }
    
    Error = OK;
    
  return pseq->Size;
}

int SeqArrayGetElement (PtSeqArray pseq, int pindex)
{
     if(pseq == NULL){
        Error = NO_SEQ;
        return 0;
    }
     
    if(pindex < -pseq->Size || pindex >= pseq->Size){
        Error = BAD_INDEX;
        return 0;
    }
    
    Error = OK;
     
    if(pindex >= 0){
        return pseq->Seq[pindex];
    }
    else{ 
        return pseq->Seq[pseq->Size+pindex];
    }
}

void SeqArraySetElement (PtSeqArray pseq, int pindex, int pvalue)
{
    if(pseq == NULL) { 
        Error = NO_SEQ; 
    }

    else if(pindex < -pseq->Size || pindex >= pseq->Size) {
        Error = BAD_INDEX; 
    }

    else{
        Error = OK;		

        if(pindex >= 0){
            pseq->Seq[pindex] = pvalue;
        }
        else{ 
            pseq->Seq[pseq->Size+pindex] = pvalue;
        }
    }
}


int SeqArrayEquals (PtSeqArray pseq1, PtSeqArray pseq2)
{
    if( pseq1 == NULL || pseq2 == NULL ){
        Error = NO_SEQ;
        return 0;
    }
    
    Error=OK; 
    
    if(pseq1->Dim != pseq2->Dim){
        return 0;
    }
    
    if(pseq1->Size != pseq2->Size){
        return 0;
    }
    
    for(int k = 0; k < pseq1->Size; k++) {
            
        if(pseq1->Seq[k] != pseq2->Seq[k]){
            return 0;
        }
    }
    
    return 1;  
}

void SeqArrayInsert (PtSeqArray pseq, int pvalue)
{
    if(pseq == NULL ) {
        Error = NO_SEQ; 
    }

    else if(pseq->Size == pseq->Dim) {
        Error = SEQ_FULL;
    }

    else{
            Error = OK;
            pseq->Seq[pseq->Size] = pvalue;
            pseq->Size++;
    }
}

void SeqArrayDelete (PtSeqArray pseq, int pvalue)
{
    if(pseq == NULL ) { 
        Error = NO_SEQ;  
    }
    
    else if(pseq->Size == 0) {
        Error = SEQ_EMPTY;  
    }

    else {
        Error = OK;

        int j;
        
        for(int i = 0; i < pseq->Size; i++) {
            
            if(pseq->Seq[i] == pvalue) {
                            
                for(j = i; j < pseq->Size-1; j++) {
                    pseq->Seq[j] = pseq->Seq[j+1];
                }
                
            pseq->Size--;
            i--;
            
            }
        }
    }
}

void SeqArrayDuplicate (PtSeqArray pseq)
{
  int *newSeq;
  /* verifica se a sequência existe - verifies if sequence exists */
  if (pseq == NULL) { Error = NO_SEQ; return; }
  
  /* verifica se a sequência não está vazia - verifies if sequence is not empty */  
  if (pseq->Size == 0) { Error = SEQ_EMPTY; return; }
 
  if ((newSeq = calloc (2*pseq->Size, sizeof (int))) == NULL)
  { Error = NO_MEM; return; }
  
  pseq->Dim = 2*pseq->Size;  /* armazenamento da nova dimensão - storing the new dimension */

  /* copiar os elementos - copying the elements */
  for (int I = 0; I < pseq->Size; I++) newSeq[I] = pseq->Seq[I];
  /* guardar o novo array e libertar o antigo - storing the new arry and freeing the old */
  int * Tmp = pseq->Seq; pseq->Seq = newSeq; free (Tmp);
  
  Error = OK;
}

int SeqArrayIsOrdered (PtSeqArray pseq)
{ 
    if (pseq == NULL) { 
        Error = NO_SEQ; 
        return 0; 
    }

    if (pseq->Size == 0) { 
        Error = SEQ_EMPTY; 
        return 0; 
    }

    Error = OK;

    for(int i = 0; i < pseq->Size-1; i++) {

        if(pseq->Seq[i] > pseq->Seq[i+1]){ 
            return 0;
        }
    }
    return 1;
}

int SeqArrayIsEvenOdd (PtSeqArray pseq)
{
    if (pseq == NULL) { 
        Error = NO_SEQ; 
        return 0; 
    }

    if (pseq->Size == 0) { 
        Error = SEQ_EMPTY; 
        return 0; 
    }

    Error = OK;

    if(pseq->Seq[0] % 2 == 0) {
		
        for(int i = 1; i < pseq->Size; i++) {
			
            if((i % 2 == 1 && pseq->Seq[i] % 2 != 1) || (i % 2 == 0 && pseq->Seq[i] % 2 != 0)){ 
                return 0;
            }
        }
    }

    else {
		
        for(int k = 1; k < pseq->Size; k++) {
			
            if((k % 2 == 1 && pseq->Seq[k] % 2 != 0) || (k % 2 == 0 && pseq->Seq[k] % 2 != 1)){
                return 0;
            }
        }
    }
    
    return 1;
}

int SeqArrayNumberOfMultiples (PtSeqArray pseq, int pvalue)
{
    if (pseq == NULL) { 
        Error = NO_SEQ; 
        return 0; 
    }

    if (pseq->Size == 0) { 
        Error = SEQ_EMPTY; 
        return 0; 
    }

    Error = OK;
    int count = 0;
    
    for(int i = 0; i < pseq->Size; i++) {
		
        if(pseq->Seq[i] % pvalue == 0){ 
            count++;
        }
    }
    return count;
}

void SeqArraySmallerBigger (PtSeqArray pseq, int * psmall, int * pbig)
{
    if (pseq == NULL) { 
        Error = NO_SEQ; 
        return ; 
    }

    if (pseq->Size == 0) { 
        Error = SEQ_EMPTY; 
        return ; 
    }

    int i, small, big;
    small = pseq->Seq[0];
    big = pseq->Seq[0];

    for(i = 1; i < pseq->Size; i++) {
        
        if(pseq->Seq[i] < small){ 
            small = pseq->Seq[i];
        }
        
        if(pseq->Seq[i] > big){ 
            big = pseq->Seq[i];
        }
    }

    *psmall = small;
    *pbig = big;
    
}

int SeqArrayIsPalindromic (PtSeqArray pseq)
{
    if (pseq == NULL) { 
        Error = NO_SEQ; 
        return 0;
    }
    
    if (pseq->Size == 0) { 
        Error = SEQ_EMPTY; 
        return 0; 
    }

    Error = OK;
    int aux = pseq->Size-1;

    for(int i = 0; i <= aux; i++) {
		
        if(pseq->Seq[i] != pseq->Seq[aux]){
            return 0;
	}
        
        aux--;
    }
    
    return 1;
}

double SeqArrayAverage (PtSeqArray pseq)
{
    if (pseq == NULL) { 
        Error = NO_SEQ; 
        return 0; 
    }
    
    if (pseq->Size == 0) { 
        Error = SEQ_EMPTY; 
        return 0; 
    }

    Error = OK;	
    int soma = 0;
    
    for(int i = 0; i < pseq->Size; i++) {
        
        soma += pseq->Seq[i];
        
    }

    return soma / pseq->Size;
}