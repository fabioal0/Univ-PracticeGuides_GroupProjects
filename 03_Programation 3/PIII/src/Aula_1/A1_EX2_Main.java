package Aula_1;
import static Aula_1.A1_EX2_Class_Data.Dia_Valido;
import static Aula_1.A1_EX2_Class_Data.Mes_Valido;
import static Aula_1.A1_EX2_Class_Pessoa.Nome_Valido;
import java.util.Scanner;

public class A1_EX2_Main {

    public static void main(String[] args) {
      
        Scanner kb = new Scanner(System.in);
    
        int Escolha=0;
	int Dia,Mes,Ano,CC;    
        String Nome;
        A1_EX2_Class_LinkedList <A1_EX2_Class_Pessoa> Base_Dados = new A1_EX2_Class_LinkedList();
        A1_EX2_Class_Pessoa Dados = null;
        A1_EX2_Class_Data Data;
        
        while(Escolha!=6) { 

            System.out.println("(1)-Adicionar pessoa");	
            System.out.println("(2)-Remover pessoa");
            System.out.println("(3)-Ver dados");
            System.out.println("(4)-Ordenar por cc");
            System.out.println("(5)-Ordenar por nome");
            System.out.println("(6)-Exit");
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
                    
                    Data=new A1_EX2_Class_Data(Dia,Mes,Ano);
                    Dados=new A1_EX2_Class_Pessoa(Nome,CC,Data);
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

                    for(int i=0;i<Base_Dados.size();i++){
  
                        Base_Dados.print()[i].Elem.Print_Dados();

                    }
                    
                break;
                
                case 4:
                    
                    System.out.println("_____________________________________________________________________________");
                    System.out.println("|                   |                   |                                    |");
                    System.out.println("|       Nome        |         CC        |          Data de Nascimento        |");
                    System.out.println("|___________________|___________________|____________________________________|");
                    
                    Dados.Sort_CC(Base_Dados.print());
                
                break;    
                    
                case 5:
                    
                    System.out.println("_____________________________________________________________________________");
                    System.out.println("|                   |                   |                                    |");
                    System.out.println("|       Nome        |         CC        |          Data de Nascimento        |");
                    System.out.println("|___________________|___________________|____________________________________|");
                    
                    Dados.Sort_Nome(Base_Dados.print());
                    
                break;    
                    
            }

        }
        
    }
    
}
