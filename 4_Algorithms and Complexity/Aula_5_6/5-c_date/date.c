/************************************************************************
 Ficheiro de implementação do Tipo de Dados Abstracto Data (date.c).
 A estrutura de dados de suporte do tempo é um registo constituído pelos
 três campos de tipo inteiro Day, Month e Year.

 Autor : Fábio Alves                           NMEC : 84734          
************************************************************************/

#include <stdio.h> 
#include <stdlib.h>
#include <string.h>
#include "date.h" /* Ficheiro de interface do TDA - ADT Interface file */

/*************** Definição da Estrutura de Dados da Data ***************/

struct date
{   unsigned int Day; 
    unsigned int Month; 
    unsigned int Year;
};

/******************** Controlo Centralizado de Erro ********************/

static unsigned int Error = OK;	/* inicialização do erro */

static char *ErrorMessages[] = { "sem erro", "data inexistente",
                                 "memoria esgotada", "data invalida",
				 "ponteiro inexistente" };

static char *AbnormalErrorMessage = "erro desconhecido";

/*********** Número de mensagens de erro previstas no módulo ***********/

#define N (sizeof (ErrorMessages) / sizeof (char *))

/***************** Protótipos dos Subprogramas Internos ****************/

static int LeapYear (int); /* ano bissexto */
static int ValidDate (int, int, int); /* validar data */

/********************** Definição dos Subprogramas *********************/

void DateClearError (void)
{ Error = OK; }

int DateError (void)
{ return Error; }

char *DateErrorMessage (void)
{
	if (Error < N) return ErrorMessages [Error];
	else return AbnormalErrorMessage; /* sem mensagem de erro */
}
//make -f mkdate
//./mkdate

PtDate DateCreate (int pday, int pmonth, int pyear) /* construtor inicializador */
{
    if(!ValidDate(pday, pmonth, pyear)){
        Error = INVALID;
        return NULL;
    }
    
    PtDate Date;

    if((Date = malloc (sizeof (struct date)))== NULL){
        Error = NO_MEM;
        return NULL;
    }
    
    Date->Day   =   pday;
    Date->Month =   pmonth;
    Date->Year  =   pyear;
    
    Error = OK;
    
    return Date;
    
}

void DateDestroy (PtDate *pdate) /* destrutor */
{
    PtDate RelDate = *pdate;
    
    if(RelDate == NULL){
        Error = NO_DATE;
        return ;
    }
    
    free (RelDate);
    
    Error = OK;
    *pdate = NULL;
}

PtDate DateStringCreate (char *pstrdate) /* construtor a partir de uma string */
{
	if (pstrdate == NULL) { Error = NULL_PTR; return NULL; }
	if (strlen (pstrdate) != 10) { Error = INVALID; return NULL; }

	char * date[4]; int i = 0;

	date[i] = strtok (pstrdate, "-");
	while (date[i] != NULL) date[++i] = strtok (NULL, "-");

	if (i != 3) { Error = INVALID; return NULL; }

	int Year, Month, Day;
	sscanf (date[0], "%d", &Year);
	sscanf (date[1], "%d", &Month);
	sscanf (date[2], "%d", &Day);

	return DateCreate (Day, Month, Year);
}

PtDate DateCopy (PtDate pdate)	/* construtor cópia */
{
	if (pdate == NULL) { Error = NO_DATE; return NULL; }
	else return DateCreate (pdate->Day, pdate->Month, pdate->Year);
}

int  DateGetYear (PtDate pdate) /* observador do ano */
{
    if (pdate == NULL) {
        Error = NO_DATE; 
        return 0;
    }
    
    Error = OK;
    return pdate->Year;
}

int DateGetMonth (PtDate pdate) /* observador do mês */
{
	if (pdate == NULL) { Error = NO_DATE; return 0; }
	else { Error = OK; return pdate->Month; }
}

int DateGetDay (PtDate pdate) /* observador do dia */
{
    if (pdate == NULL) {
        Error = NO_DATE; 
        return 0;
    }
    
    Error = OK;
    return pdate->Day;
}

void DateSet (PtDate pdate, int pday, int pmonth, int pyear) /* modificador da data */
{
    if(pdate == NULL){
        Error = NO_DATE;
        return;
    }
    
    if(ValidDate(pday, pmonth, pyear)){
        Error = OK;
        pdate ->Day = pday;
        pdate ->Month = pmonth;
        pdate ->Year = pyear;
    }
    
    else{
        Error = INVALID;
    }
}

int DateEquals ( PtDate pdate1, PtDate pdate2)  /* comparador de igualdade */
{
    if(pdate1 == NULL || pdate2 == NULL){
        Error = NO_DATE;
        return 0;
    }
    else if(pdate1->Day   == pdate2->Day   &&
            pdate1->Month == pdate2->Month &&
            pdate1->Year  == pdate2->Year   ){
        
        Error = OK;
        return 1; 
    }
    
    else{
        Error = OK;
        return 0; 
    }

}

int DateCompareTo (PtDate pdate1, PtDate pdate2)  /* operador relacional (> == <) */
{
     if(pdate1 == NULL || pdate2 == NULL){
        Error = NO_DATE;
        return 0;
    }
     else if(DateEquals(pdate1,pdate2)){
        Error = OK;
        return 0;
    }
    
    else if(pdate1->Year > pdate2->Year){
        Error = OK;
        return 1;
    }
    else if(pdate1->Year < pdate2->Year){ 
        Error = OK;
        return -1;
    }
    else{
        
        if(pdate1->Month > pdate2->Month){
            Error = OK;
            return 1;
        }
        else if(pdate1->Month < pdate2->Month){
            Error = OK;
            return -1;
        }
        
        else{
            
            if(pdate1->Day > pdate2->Day){
                Error = OK;
                return 1;
            }
            else if(pdate1->Day < pdate2->Day){
                Error = OK;
                return -1;    
            }
        }
    }
}

int DateDayMonth (int pmonth, int pyear) /* dias de um mês */
{
	int MonthDays[] = { 31,28,31,30,31,30,31,31,30,31,30,31 };

}

char * DateToString (PtDate pdate)  /* data no formato dd/mm/yyyy */
{
	/* verifica se a data existe - verifies if date exists */
	if (pdate == NULL) { Error = NO_DATE; return NULL; }

	char * Str;
	/* cria a sequência de caracteres - allocating the string */
	if ((Str = calloc (11, sizeof (char))) == NULL)
	{ Error = NO_MEM; return NULL; }

	sprintf (Str, "%02d/%02d/%04d", pdate->Day, pdate->Month, pdate->Year);
	Error = OK;
	return Str;
}

char * DateToFullString (PtDate pdate)  /* data por extenso */
{
	char* FullMonth[] = {"janeiro", "fevereiro", "março", "abril",
						 "maio", "junho", "julho", "agosto",
						 "setembro", "outubro", "novembro", "dezembro"};

	/* verifica se a data existe - verifies if date exists */
	if (pdate == NULL) { Error = NO_DATE; return NULL; }

	char * Str;  
	/* cria a sequência de caracteres - allocating the string */
	if ((Str = calloc (23, sizeof (char))) == NULL)
	{ Error = NO_MEM; return NULL; }

	sprintf (Str, "%02d de %s de %04d", pdate->Day, FullMonth[pdate->Month-1], pdate->Year);
	Error = OK;
	return Str;
}

PtDate DateTomorrow (PtDate pdate)  /* nova data com o dia seguinte */
{ 
    if (pdate == NULL) { 
        Error = NO_DATE; 
        return NULL; 
    }
    

    int day = DateGetDay(pdate);
    int month = DateGetMonth(pdate);
    int year = DateGetYear(pdate);

    switch (month){
        case  1:case  3:case  5:case  7:case  8:case 10:case 12: 

            if (day != 31){
                day++;
            }

            else{
                day = 1;

                if(month != 12){
                    month++;
                }
                else{
                    month = 1; 
                    year++;
                }
            }

            break;

        case  4:case  6:case  9:case 11: 

            if (day != 30){
                day++;
            }

            else{

                day = 1;
                month++;

            }
            break;

        case  2: 

            if(LeapYear){

                if(day == 29){
                    day = 1;
                    month++;
                }
                else{
                    day++;
                }
            }

            else{

                if(day == 28){
                    day = 1;
                    month++;
                }
                else{
                    day++;
                }
            } 
            break;
    }

    Error = OK;
    return  DateCreate (day, month, year); 
        
    
}


PtDate DateYesterday (PtDate pdate)  /* nova data com o dia anterior */
{
    
    if (pdate == NULL) { 
        Error = NO_DATE; 
        return NULL; 
    }
  
    int day = DateGetDay(pdate);
    int month = DateGetMonth(pdate);
    int year = DateGetYear(pdate);

    switch (month){
        
        case  3:

            if(LeapYear){

                if(day == 1){
                    day = 29;
                    month--;
                }
                else{
                    day--;
                }
            }

            else{

                if(day == 1){
                    day = 28;
                    month--;
                }
                else{
                    day--;
                }
            } 
            break;

        case  5:case  7:case  8:case 10:case 12: 

            if(day==1){
                day=30;
            }
            else{
                day--;
            }

            break;

        case  1:case 2:case  4:case  6:case  9:case 11: 

            if(day==1){
                
                day=31;
                
                if(month == 1){
                    month = 12;
                    year--;
                }
                else {
                    month--;
                }
          
            }
            else{
                day--;
            }

            break;
    }
 
    Error = OK;    
    return  DateCreate (day,month,year); 
       
}

/*************** Implementação dos Subprogramas Internos ***************/

/*******************************************************************************
 Função auxiliar que verifica se um ano é bissexto. Devolve 1 em caso afirmativo
  e 0 em caso contrário. Valores de erro: OK.
 
 Auxiliary function to verify if a year is a leap year. Returns 1 in affirmative
 case and 0 otherwise. Error codes: OK.
*******************************************************************************/
static int LeapYear (int pyear)
{
	Error = OK;
	return (pyear % 4 == 0) && (pyear % 100 != 0) || (pyear % 400 == 0);
}

/*******************************************************************************
 Função auxiliar que verifica se uma data definida por dia, mês e ano é válida.
 Devolve 1 em caso afirmativo e 0 em caso contrário. Valores de erro: OK ou INVALID.
 
 Auxiliary function to verify if a date defined by day, month and year is valid.
 Returns 1 in affirmative case and 0 otherwise. Error codes: OK or INVALID.
*******************************************************************************/

static int ValidDate (int pday, int pmonth, int pyear)
{
	int leapyear;

	Error = OK;
	switch (pmonth)
	{
		case  1:
		case  3:
		case  5:
		case  7:
		case  8:
		case 10:
    		case 12: if (pday < 1 || pday > 31) Error = INVALID;
			 break;
    		case  4:
    		case  6:
    		case  9:
    		case 11: if (pday < 1 || pday > 30) Error = INVALID;
			 break;
    		case  2: leapyear = LeapYear (pyear);
                	 if (pday < 1 || (pday > 29 && leapyear) || (pday > 28 && !leapyear))
				Error = INVALID;
                	 break;
	}
	if (Error == OK) return 1; else return 0;
}
