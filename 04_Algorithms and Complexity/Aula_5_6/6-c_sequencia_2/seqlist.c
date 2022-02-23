/*******************************************************************************
 Ficheiro de implementação do Tipo de Dados Abstracto SEQ_LIST (seqlist.c).
 A estrutura de dados de suporte da sequência é uma estrutura, constituída pelos
 campos de tipo inteiro Size para indicar o número de elementos armazenados na
 sequência e os campos de tipo ponteiro para nós de lista biligada Head e Tail,
 para representar, respectivamente, a cabeça e a cauda da lista biligada onde
 são armazenados os números inteiros.

Autor : Fábio Daniel Ribeiro Alves                                   NMEC : 84734  
*******************************************************************************/

#include <stdio.h> 
#include <stdlib.h>

#include "seqlist.h"  /* Ficheiro de interface do TDA - ADT Interface file */

/************ Definição da Estrutura de Dados Interna da Sequência ************/

typedef struct binode *PtBiNode;
struct binode /* definição do nó da lista biligada */
{
	int Elem; /* o elemento da lista */
	PtBiNode PtPrev, PtNext; /* ponteiros para o nós anterior e seguinte */
};

struct seqlist
{
  int Size; /* número de elementos - sequence's size */
  PtBiNode Head; /* ponteiro para o início da lista (cabeça da lista) - list head */
  PtBiNode Tail; /* ponteiro para o fim da lista (cauda da lista) - list tail */
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
                                 "ficheiro inexistente - File does not exist",
                                 "ponteiro nulo - Null pointer"
                               };

static char *AbnormalErrorMessage = "erro desconhecido - Unknown error";

/************** Número de mensagens de erro previstas no módulo ***************/

#define N (sizeof (ErrorMessages) / sizeof (char *))

/******************** Protótipos dos Subprogramas Internos ********************/

PtBiNode BiNodeCreate (int);
void BiNodeDestroy (PtBiNode *);
void DoubleListDestroy (PtBiNode *);

/*************************** Definição das Funções ****************************/

void SeqListClearError (void)
{ Error = OK; }

int SeqListError (void)
{ return Error; }

char *SeqListErrorMessage (void)
{
  if (Error < N) return ErrorMessages[Error];
  else return AbnormalErrorMessage;  /* sem mensagem de erro - no error message */
}

PtSeqList SeqListCreate ()
{
    
    PtSeqList list = malloc(sizeof(struct seqlist));
    
    if(list == NULL) { 
        Error = NO_MEM; 
        return NULL; 
    }

    list->Size = 0;

    list->Head = NULL;
    list->Tail = NULL;

    Error = OK;

    return list;
}

void SeqListDestroy (PtSeqList *pseq)
{
    PtSeqList list = *pseq;
	
    if (list == NULL) { 
        Error = NO_SEQ; 
        return ; 
    }

    DoubleListDestroy(&list->Head);
    free(list);

    Error = OK;
    *pseq = NULL;
}

PtSeqList SeqListCopy (PtSeqList pseq)
{
  PtSeqList Copy;

  /* verifica se a sequência existe - verifies if sequence exists */
  if (pseq == NULL) { Error = NO_SEQ; return NULL; }

  /* criação da sequência copia nulo - creating an empty sequence */
  if ((Copy = SeqListCreate ()) == NULL) return NULL;

  /* fazer a copia da sequência - copying the components */
  for (PtBiNode Node = pseq->Head; Node != NULL; Node = Node->PtNext)
  {
    SeqListInsert (Copy, Node->Elem);
    if (Error == NO_MEM) break;
  }
  
  if (Error == NO_MEM) { SeqListDestroy (&Copy); return NULL; }
  
  Copy->Size = pseq->Size;
  Error = OK;
  return Copy;  /* devolve a sequência copia - returning the new sequence */
}

PtSeqList SeqListFileCreate (char *pfname)
{
  PtSeqList Seq; FILE *PtF; unsigned int Size, I; int Elem;

  /* abertura com validacao do ficheiro para leitura - opening the text file for reading */
  if ( (PtF = fopen (pfname, "r")) == NULL) { Error = NO_FILE; return NULL; }

  /* leitura da dimensão da sequência e do número de elementos */
  /* reading the sequence's dimension and the number of elements */
  fscanf (PtF, "%u", &Size);
  if (Size < 1) { Error = BAD_SIZE; fclose (PtF); return NULL; }

  /* criação da sequência vazia - creating an empty sequence */
  if ((Seq = SeqListCreate ()) == NULL) { fclose (PtF); return NULL; }

  Error = OK;
  /* leitura da sequência do ficheiro - reading the sequence's components from the text file */
  for (I = 0; I < Size; I++)
  {
    fscanf (PtF, "%d", &Elem);
    SeqListInsert (Seq, Elem);
    if (Error == NO_MEM) break;
  }

  if (Error == NO_MEM) { SeqListDestroy (&Seq); return NULL; }

  fclose (PtF);  /* fecho do ficheiro - closing the text file */
  return Seq;  /* devolve a sequência criada - returning the new sequence */
}

void SeqListStoreFile (PtSeqList pseq, char *pfname)
{
  FILE *PtF;

  /* verifica se a sequência existe - verifies if sequence exists */
  if (pseq == NULL) { Error = NO_SEQ; return ; }

  /* verifica se a sequência tem elementos - verifies if sequence has elements */
  if (pseq->Size == 0) { Error = SEQ_EMPTY; return ; }

  /* abertura com validacao do ficheiro para escrita - opening the text file for writing */
  if ((PtF = fopen (pfname, "w")) == NULL) { Error = NO_FILE; return ; }

  /* escrita do número de elementos armazenados na sequência */
  /* writing the number of elements */
  fprintf (PtF, "%u\n", pseq->Size);

  /* escrita da sequência - writing the sequence's components in the text file */
  for (PtBiNode Node = pseq->Head; Node != NULL; Node = Node->PtNext)
	fprintf (PtF, "%d\n", Node->Elem);

  Error = OK;
  fclose (PtF);  /* fecho do ficheiro - closing the text file */
}

int SeqListGetSize (PtSeqList pseq)
{
    if(pseq == NULL) { 
        Error = NO_SEQ; 
        return 0; 
    }

    Error = OK;

    return pseq->Size;
}

int SeqListGetElement (PtSeqList pseq, int pindex)
{
    if(pseq == NULL || pseq->Head == NULL) { 
        Error = NO_SEQ; 
        return 0; 
    }
    
    if(pindex < -pseq->Size || pindex >= pseq->Size) { 
        Error = BAD_INDEX; 
        return 0; 
    }

    Error = OK;
    PtBiNode aux;

    if(pindex >= 0) {
        
        aux = pseq->Head;		
        
        for(int i = 0; i < pseq->Size; i++) {
                    
            if(i == pindex){ 
                return aux->Elem;
            }			
            
            aux = aux->PtNext;		
        }
    }
    
    else {
        
        aux = pseq->Tail;
            
        for(int i = -1; i >= -pseq->Size; i--) {
                    
            if(i == pindex){ 
                return aux->Elem;
            }
                    
            aux = aux->PtPrev;
        }
    }
    return 0;
}

void SeqListSetElement (PtSeqList pseq, int pindex, int pvalue)
{
    if(pindex < -pseq->Size || pindex >= pseq->Size) { 
        Error = BAD_INDEX; 
        return ; 
    }

    Error = OK;

    PtBiNode aux;
    int *elem;

    if(pindex >= 0) {
        
        aux = pseq->Head;	
        elem = &(pseq->Head->Elem);	
        
        for(int i = 0; i < pseq->Size; i++) {
                
            if(i == pindex){ 
                *elem = pvalue;
            }			
            
            aux = aux->PtNext;
            elem = &(aux->Elem);		
        }
    } 
    
    else {
        
        aux = pseq->Tail;
        elem = &(pseq->Tail->Elem);	
        
        for(int i = -1; i >= -pseq->Size; i--) {
                
            if(i == pindex){ 
                *elem = pvalue;
            } 
                
            aux = aux->PtPrev;
            elem = &(aux->Elem);
        }
    }
}

int SeqListEquals (PtSeqList pseq1, PtSeqList pseq2)
{
    if(pseq1 == NULL || pseq2 == NULL) { 
        Error = NO_SEQ; 
        return 0; 
    }

    Error = OK;

    if(pseq1->Size != pseq2->Size){ 
        return 0;
    }

    PtBiNode aux1;
    PtBiNode aux2;

    aux1 = pseq1->Head;
    aux2 = pseq2->Head;

    for(int i = 0; i < pseq1->Size; i++) {

        if(aux1->Elem != aux2->Elem){ 
            return 0;
        }

        aux1 = aux1->PtNext;
        aux2 = aux2->PtNext;
        
    }	
    return 1;
}

void SeqListInsert (PtSeqList pseq, int pvalue)
{
    if(pseq == NULL) { 
        Error = NO_SEQ; 
        return ; 
    }

    PtBiNode aux;

    aux = BiNodeCreate(pvalue);

    if(Error == NO_MEM) { 
        return ; 
    }

    aux->Elem = pvalue;

    if(pseq->Size == 0) {
        pseq->Head = aux;
        pseq->Tail = aux;
    } 
    
    else{
        pseq->Tail->PtNext = aux;
        pseq->Tail->PtNext->PtPrev = pseq->Tail;
        pseq->Tail = aux;
    }
    
    pseq->Size++;
}

void SeqListDelete (PtSeqList pseq, int pvalue)
{
    if(pseq == NULL) { 
        Error = NO_SEQ; 
        return ; 
    }
    
    if(pseq->Size == 0) { 
        Error = SEQ_EMPTY; 
        return ;
    }

    int rem = 0;

    PtBiNode aux = pseq->Head;

    for(int i = 0; i < pseq->Size; i++) {
        
        if(aux->Elem == pvalue) {
            
            if(i == 0) { 				
                pseq->Head = pseq->Head->PtNext;
            } 
            
            else if(i == pseq->Size-1) {
                pseq->Tail = pseq->Tail->PtPrev;
            } 
            
            else {
                aux->PtPrev->PtNext = aux->PtNext;
                aux->PtNext->PtPrev = aux->PtPrev;

            }
            
            pseq->Size--;
            rem = 1;
        }
        aux = aux->PtNext;
        
    }

    if(rem == 0) { 
        Error = NO_NUMBER; 
        return ; 
    }
    
    Error = OK;

}

int SeqListIsOrdered (PtSeqList pseq)
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

    PtBiNode aux1 = pseq->Head->PtNext;
    int aux = pseq->Head->Elem;

    for(int i = 1; i < pseq->Size; i++) {
        
        if(aux > aux1->Elem){ 
            return 0;
        }
        
        aux = aux1->Elem;
        aux1 = aux1->PtNext;
        
    } 
    return 1;
}

int SeqListIsEvenOdd (PtSeqList pseq)
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
    PtBiNode aux = pseq->Head->PtNext;

    if(pseq->Head->Elem % 2 == 0) {
        
        for(int i = 1; i < pseq->Size; i++) {
            
            if((i % 2 == 1 && aux->Elem % 2 != 1) || (i % 2 == 0 && aux->Elem % 2 != 0)){ 
                return 0;
            }
            
            aux = aux->PtNext;
        }
    }
    else {
        
        for(int i = 1; i < pseq->Size; i++) {
            
            if((i % 2 == 1 && aux->Elem % 2 != 0) || (i % 2 == 0 && aux->Elem % 2 != 1)){ 
                return 0;
            }
            
            aux = aux->PtNext;
        }
    }
    return 1;
}

int SeqListNumberOfMultiples (PtSeqList pseq, int pvalue)
{
 	
    if (pseq == NULL) { 
        Error = NO_SEQ; 
        return 0; 
    }
    
    if (pseq->Size == 0) { 
        Error = SEQ_EMPTY; 
        return 0; 
    }
    
    int count = 0;
    Error = OK;
    PtBiNode aux = pseq->Head;

    for(int i = 0; i < pseq->Size; i++) {
		
        if(aux->Elem % pvalue == 0){ 
            count++;
        }
        
        aux = aux->PtNext;
    }
    
    return count;
}

void SeqListSmallerBigger (PtSeqList pseq, int * psmall, int * pbig)
{
    
    if (pseq == NULL) {
        Error = NO_SEQ; 
        return ; 
    }
    
    if (pseq->Size == 0) { 
        Error = SEQ_EMPTY; 
        return ; 
    }

    int small, big;
    
    small = pseq->Head->Elem;
    big = pseq->Head->Elem;

    PtBiNode aux = pseq->Head->PtNext;

    for(int i = 1; i < pseq->Size; i++) {
        
        if(aux->Elem < small){ 
            small = aux->Elem;
        }
        
        if(aux->Elem > big){ 
            big = aux->Elem;
        }

        aux = aux->PtNext; 
    }

    *psmall = small;
    *pbig = big;
}

int SeqListIsPalindromic (PtSeqList pseq)
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

    PtBiNode aux1 = pseq->Head;
    PtBiNode aux2 = pseq->Tail;

    for(int i = 0; i <= (pseq->Size+1)/2; i++) {

        if(aux1->Elem != aux2->Elem){ 
            return 0;
        }

        aux1 = aux1->PtNext;
        aux2 = aux2->PtPrev;

    }
    return 1;
}

double SeqListAverage (PtSeqList pseq)
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

    int sum = 0;

    PtBiNode aux = pseq->Head;

    for(int i = 0; i < pseq->Size; i++) {
        
        sum += aux->Elem;
        aux = aux->PtNext;		
    
    }

    return sum / pseq->Size;
}

/*******************************************************************************
 Função auxiliar para criar um nó da lista biligada. Valores de erro: OK ou NO_MEM.
 
 Auxiliary function to create a binode. Error codes: OK or NO_MEM.
*******************************************************************************/

PtBiNode BiNodeCreate (int pelem)	/* alocação do nó */
{
	PtBiNode Node;

	if ((Node = (PtBiNode) malloc (sizeof (struct binode))) == NULL)
	{ Error = NO_MEM; return NULL; }

	Node->Elem = pelem;	/* copiar a informação */
	Node->PtPrev = NULL;	/* apontar para detrás para NULL */
	Node->PtNext = NULL;	/* apontar para a frente para NULL */

	Error = OK;
	return Node;
}

/*******************************************************************************
 Função auxiliar para libertar um nó da lista biligada. Valores de erro: OK ou NULL_PTR.
 
 Auxiliary function to free a binode. Error codes: OK or NULL_PTR.
*******************************************************************************/
void BiNodeDestroy (PtBiNode *pnode)	/* libertação do nó */
{
	if (*pnode == NULL) { Error = NULL_PTR; return; }
	free (*pnode);	/* libertação do nó */
	*pnode = NULL;	/* colocar o ponteiro a nulo */
	Error = OK;
}

/*******************************************************************************
 Função auxiliar para destruir uma lista biligada. Valores de erro: OK ou NULL_PTR.
 
 Auxiliary function to destroy a double link list. Error codes: OK or NULL_PTR.
*******************************************************************************/
void DoubleListDestroy (PtBiNode *phead)
{
	PtBiNode TmpHead = *phead; PtBiNode Node;

	if (TmpHead == NULL) { Error = NULL_PTR; return; }
	while (TmpHead != NULL)
	{
		Node = TmpHead; TmpHead = TmpHead->PtNext;
		BiNodeDestroy (&Node);
	}
	Error = OK; 
}