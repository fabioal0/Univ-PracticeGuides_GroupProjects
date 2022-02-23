package Aula_1;
import java.util.Scanner;

public class A1_EX3_Main {

    public static void main(String[] args) {

        Scanner kb=new Scanner(System.in);

        double X,Y;
        double Lado_Largura_Raio;
        double Comprimento;
        int Escolha;

        System.out.println("Escolha ( 1-circulo || 2-rectangulo || 3-quadrado )");
            Escolha=kb.nextInt();
        
        switch(Escolha){    
        
            case 1:
        
            System.out.println("Coordenada x1: ");
                X=kb.nextDouble();
            
            System.out.println("Coordenada y1: ");
                Y=kb.nextDouble();
            
            System.out.println("Raio1: ");
                Lado_Largura_Raio=kb.nextDouble();
            
            assert Lado_Largura_Raio>0:"Raio Invalido" ;   
                
            A1_EX3_Class_Circulo Circulo_1=new A1_EX3_Class_Circulo(X,Y,Lado_Largura_Raio);
         
            System.out.println(Circulo_1);
            
            System.out.println("Comparar 2 circulos( 0-Sim || (1 a 9)-Nao )");
                Escolha=kb.nextInt();
            
            if(Escolha==0){
                
            System.out.println("Coordenada x2: ");
                X=kb.nextDouble();
            
            System.out.println("Coordenada y2: ");
                Y=kb.nextDouble();
            
            System.out.println("Raio2: ");
                Lado_Largura_Raio=kb.nextDouble();
     
            assert Lado_Largura_Raio>0:"Lado Invalida" ;                   
                
            A1_EX3_Class_Ponto Centro=new A1_EX3_Class_Ponto(X,Y);
            A1_EX3_Class_Circulo Circulo_2=new A1_EX3_Class_Circulo(Centro,Lado_Largura_Raio);
           
            System.out.println(Circulo_2);
            System.out.println("Igual "+Circulo_1.equals(Circulo_2));
            System.out.println("Intercecao "+Circulo_1.Intreecao(Circulo_2));       
            }
            
            break;
            
            case 2:
        
            System.out.println("Largura: ");
                Comprimento=kb.nextDouble();
          
            assert Comprimento>0:"Comprimento Invalida" ;   

            System.out.println("Comprimento: ");
                Lado_Largura_Raio=kb.nextDouble();
            
            assert Lado_Largura_Raio>0:"Largura Invalida" ;                   
                
            A1_EX3_Class_Rectangulo Rectangulo=new A1_EX3_Class_Rectangulo(Comprimento,Lado_Largura_Raio);    
            
            System.out.println(Rectangulo);
                
            break;
        
            case 3:
            
            System.out.println("Lado: ");
                Lado_Largura_Raio=kb.nextDouble();
            
            A1_EX3_Class_Quadrado Quadrado=new A1_EX3_Class_Quadrado(Lado_Largura_Raio);  
            
            System.out.println(Quadrado);
            
            break;
        }
        
    }
    
}
