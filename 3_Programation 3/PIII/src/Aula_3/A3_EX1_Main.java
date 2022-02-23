
package Aula_3;

import Aula_1.A1_EX2_Class_Data;


public class A3_EX1_Main {


    public static void main(String[] args) {
           
        //A1_EX2_Class_Data nao usa @override porque a classe é usada noutros exercicios e já tem uma função de impressão;
        
        A3_EX1_Class_Estudante est=new A3_EX1_Class_Estudante("Andreia",9855678,new A1_EX2_Class_Data(18,7,1974));
        A3_EX1_Class_Bolseiro bls =new A3_EX1_Class_Bolseiro("Maria", 8976543, new A1_EX2_Class_Data(11,5,1976));
        
        bls.set(745);
        
        System.out.println("Estudante: "+ est.Nome());
        System.out.println(est);
        
        System.out.println("Bolseiro: "+ bls.Nome() + ", NMec: " + bls.N_Mec()+", Bolsa:"+ bls.bolsa());
        System.out.println(bls);
        
    }
    
}
