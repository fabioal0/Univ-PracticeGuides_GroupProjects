package Aula5_Ex3;

import static Aula_1.A1_EX2_Class_Data.Dia_Valido;
import static Aula_1.A1_EX2_Class_Data.Mes_Valido;
import static Aula_1.A1_EX2_Class_Pessoa.Nome_Valido;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) throws IOException {
 
            Scanner kb = new Scanner(System.in);
    
        int Escolha=0;
	int Dia,Mes,Ano,CC;    
        String Nome;
        LinkedList <Pessoa> Base_Dados = new LinkedList();
        Pessoa Dados = null;
        Data Data;
        int formato;
        
        while(Escolha!=6) { 

            System.out.println("(1)-Adicionar pessoa");	
            System.out.println("(2)-Remover pessoa");
            System.out.println("(3)-Ver dados");
            System.out.println("(6)-Save in file");
            System.out.println();
            System.out.print("Escolha: ");

            Escolha=kb.nextInt();
            
            assert Escolha>0 && Escolha<=6 : "Numero Invalido";
            
            System.out.println();

            switch(Escolha) {

                case 1: 
                    
                    System.out.print("Nome: ");
                        Nome=kb.next();
                    
                    assert Nome_Valido(Nome) : "Nome Invalido";    
                    
                    System.out.print("Ano: ");
                        Ano=kb.nextInt();                    
  
                    System.out.print("Mes: ");
                        Mes=kb.nextInt();
                    
                    assert Mes_Valido(Mes) : "Mes Invalido";    
                    
                    System.out.print("Dia: ");
                        Dia=kb.nextInt();
                        
                    assert Dia_Valido(Mes,Dia,Ano) : "Dia Invaliido"; 
        
                    System.out.print("Cartao de Cidadao: ");
                        CC=kb.nextInt();
                    
                    assert CC>0 : "cc Invalido"; 
                    
                    Data=new Data(Dia,Mes,Ano);
                    Dados=new Pessoa(Nome,CC,Data);
                    Base_Dados.addFirst(CC,Dados);
                                
                break;
                    
                case 2:
                    
                    System.out.print("Cartao de Cidadao: ");
                        CC=kb.nextInt();
                    
                    assert CC>0 : "cc Invalido"; 
                     
                    Base_Dados.remover(CC); 
                    
                break;	

                case 3:
                    
                    System.out.println("_____________________________________________________________________________");
                    System.out.println("|                   |                   |                                    |");
                    System.out.println("|       Nome        |         CC        |          Data de Nascimento        |");
                    System.out.println("|___________________|___________________|____________________________________|");
                    
                    Pessoa []A=new Pessoa[Base_Dados.size()];
                    
                    Base_Dados.print(A);    
                    
                    for(int i=0;i<Base_Dados.size();i++){
                        
                        A[i].Print_Dados();
 
                    }
                    
                break;
     
            }    
                
        } 
        
        Pessoa []B=new Pessoa[Base_Dados.size()];
                    
        Base_Dados.print(B);    
        
        System.out.println("Formato: 0-Nokia 1-vCard 2-CSV ");
            formato=kb.nextInt();

        System.out.print("Ficheiro de saida: ");
            String nameOut = kb.next();

        PrintWriter pw = new PrintWriter(new FileWriter(nameOut+".txt", true)); 

        switch(formato){

            case 0:
                
                    pw.println("Nokia");
                    
                for(int i = 0 ; i < Base_Dados.size() ; i++) {
                    
                    pw.println(B[i].Nome());
                    pw.println(B[i].CC());
                    pw.println(B[i].Data_Nasc());
                    pw.println();
                }

                pw.close();

            break;

            case 1:
                
                    pw.println("vCard");
                
                for(int i = 0 ; i < Base_Dados.size() ; i++) {
                    
                    pw.print("#"+B[i].Nome());
                    pw.print("#"+B[i].CC());
                    pw.print("#"+B[i].Data_Nasc());
                    pw.println();
                }

                pw.close();
                
            break;

            case 2:
    
                    pw.println("CSV");
                
                for(int i = 0 ; i < Base_Dados.size() ; i++) {
                    
                    pw.print("  "+B[i].Nome());
                    pw.print("  "+B[i].CC());
                    pw.print("  "+B[i].Data_Nasc());
                    pw.println();
                }

                pw.close();
                
            break;    
        }
    }
    
}
