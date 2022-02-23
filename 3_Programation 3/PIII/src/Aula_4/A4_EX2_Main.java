package Aula_4;

import Aula_3.A3_EX2_Class_Ponto;

public class A4_EX2_Main {

    public static void main(String[] args) {

        A4_EX2_Class_Circulo c1 = new A4_EX2_Class_Circulo(2);
        A4_EX2_Class_Circulo c2 = new A4_EX2_Class_Circulo(1, 3, 2);
        A4_EX2_Class_Quadrado q1 = new A4_EX2_Class_Quadrado(2);
        A4_EX2_Class_Quadrado q2 = new A4_EX2_Class_Quadrado(3, 4, 2);
        A4_EX2_Class_Rectangulo r1 = new A4_EX2_Class_Rectangulo(2, 3);
        A4_EX2_Class_Rectangulo r2 = new A4_EX2_Class_Rectangulo(3, 4, 2, 3);
        
        A4_EX2_Class_ColecaoFiguras col = new A4_EX2_Class_ColecaoFiguras(42.0); // MaxArea

        System.out.println(col.addFigura(c2)); // true
        System.out.println(col.addFigura(r1)); // true
        System.out.println(col.addFigura(r1)); // false
        System.out.println(col.addFigura(r2)); // true
        System.out.println(col.addFigura(c1)); // true
        System.out.println(col.addFigura(q2)); // true
        System.out.println(col.addFigura(q1)); // true q1!=q2
        System.out.println(col.delFigura(r1)); // true
        System.out.println(col.addFigura(q1)); // false q1=q1
        System.out.println("\nÁrea Total da Lista de Figuras: " + col.areaTotal());
        System.out.println("\nLista de Figuras:");
    
        for (A4_EX2_Class_Figura f: col.getFiguras()){

            System.out.println(f);

        }

        System.out.println("\n\nCirculos na Lista de Figuras:");

        for (A4_EX2_Class_Figura f: col.getFiguras()){

            if (f instanceof A4_EX2_Class_Circulo){

                System.out.println(f);
                
            }

        }
        
        System.out.println("\n\nCentro das Figuras:");
       
        for (A3_EX2_Class_Ponto p: col.getCentros() ){

            System.out.println(p);

        }
    
    }    

}
