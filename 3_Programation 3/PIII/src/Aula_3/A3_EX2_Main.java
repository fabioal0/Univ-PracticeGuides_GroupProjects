
package Aula_3;


public class A3_EX2_Main {

    //Codigo em comentario funciona porem nao a nececidade de apresentar 2 vezes a mesma informação
    
    public static void main(String[] args) {
       
        A3_EX2_Class_Circulo c1 = new A3_EX2_Class_Circulo (2);
        A3_EX2_Class_Circulo c2 = new A3_EX2_Class_Circulo (1,3,2);
        A3_EX2_Class_Circulo c3 = new A3_EX2_Class_Circulo (c1);
        
        System.out.println(c1 );
        //System.out.println("tem area: " + c1.Area_Circ()+ " e perimetro: " + c1. Perimetro_Circ());
        System.out.println(c3 );
        //System.out.println("tem area: " + c3.Area_Circ()+ " e perimetro: " + c3. Perimetro_Circ());
        System.out.println("c1 equals to c3? -> " + c1.equals(c3)); 
        
        A3_EX2_Class_Quadrado q1 = new A3_EX2_Class_Quadrado(2);
        A3_EX2_Class_Quadrado q2 = new A3_EX2_Class_Quadrado(3,4,2);
        A3_EX2_Class_Quadrado q3 = new A3_EX2_Class_Quadrado(q2);
        
        System.out.println(q1 );
        //System.out.println("tem area: " + q1.Area_Quad()+ " e perimetro: " + q1.Perimetro_Quad());
        System.out.println(q3 );
        //System.out.println("tem area: " + q3.Area_Quad()+ " e perimetro: " + q3.Perimetro_Quad());
        System.out.println("q1 equals to q3? -> " + q1.equals(q3)); 

        A3_EX2_Class_Rectangulo r1 = new A3_EX2_Class_Rectangulo(2,3);
        A3_EX2_Class_Rectangulo r2 = new A3_EX2_Class_Rectangulo(3,4,2,3);
        A3_EX2_Class_Rectangulo r3 = new A3_EX2_Class_Rectangulo(r2);
        
        System.out.println(r1 );
        //System.out.println("tem area: " + r1.Area_rect()+ " e perimetro: " + r1. Perimetro_rect());
        System.out.println(r3 );
        //System.out.println("tem area: " + r3.Area_rect()+ " e perimetro: " + r3. Perimetro_rect());
        System.out.println("r2 equals to r3? -> " + r2.equals(r3)); 
        
    }
    
}
