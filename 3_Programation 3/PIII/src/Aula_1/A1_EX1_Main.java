package Aula_1;
import java.util.Scanner;

public class A1_EX1_Main {

    public static void main(String[] args) {
        
        Scanner kb=new Scanner(System.in);
       
        int Escolha=0;          
        String frase;
        
        System.out.println("Insira a frase: ");
            frase=kb.nextLine();
        
            assert frase!=null:"Frase invalida";
            
        A1_EX1_Class_Dados resultados=new A1_EX1_Class_Dados(frase);
        
        while(Escolha !=6){
        
            System.out.println("1 - Total de caracteres numéricos (0..9)");
            System.out.println("2 - Indicar se so tem minusculas");
            System.out.println("3 - Indicar se so tem maiusculas");
            System.out.println("4 - Total de palavras e sua impressao");
            System.out.println("5 - Todos os caracteres sa trocados 2 a 2");
            System.out.print("Escolha: ");
            
            Escolha=kb.nextInt();    
            
            assert Escolha>0 && Escolha<7:"Escolha invalida";
            
            switch(Escolha){

                case 1:

                    resultados.Numeros_Total();
                    
                break;

                case 2:

                    resultados.So_Minusculas();
                  
                break;    

                case 3:

                    resultados.So_Maiusculas();

                break;

                case 4:

                    resultados.Print_Words();

                break;

                case 5:
                  
                    resultados.Troca_Letras();
                    
                break;
        
            }
            
        }    
            
    }
    
}
