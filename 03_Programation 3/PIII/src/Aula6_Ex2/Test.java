package Aula6_Ex2;

import Aula5_Ex1.Circulo;
import Aula5_Ex1.Figura;
import Aula5_Ex1.Quadrado;
import Aula5_Ex1.Rectangulo;
import Aula_1.A1_EX2_Class_Data;
import Aula_3.A3_EX1_Class_Bolseiro;
import Aula_3.A3_EX1_Class_Estudante;
import java.util.ArrayList;
import java.util.List;

public class Test {

    public static void main(String[] args) {

        List<Figura> lista = new ArrayList<>();
        
        lista.add(new Circulo(2));
        lista.add(new Circulo(1, 3, 1));
        lista.add(new Quadrado(5));
        lista.add(new Quadrado(3, 4, 2));
        lista.add(new Rectangulo(2, 3));
        lista.add(new Rectangulo(3, 4, 5, 3));
        lista.add(new Rectangulo(1, 1, 5, 6));
        
        System.out.println("Figuras Filter 1:");
        List<Figura> ret = ListsProcess.filter(lista, f -> f.Area() > 20);
        printList(ret);
        
        System.out.println("\nFiguras Filter 2:");
        ret = ListsProcess.filter(lista, f -> f.Perimetro() < 15);
        printList(ret);
        
        System.out.println("\nFiguras Filter 3:");
        ret = ListsProcess.filter(lista, f -> f.Perimetro() < 15 && f.Area() > 10);
        printList(ret);
        
        List<A3_EX1_Class_Estudante> lista2 = new ArrayList<>();
        
        lista2.add(new A3_EX1_Class_Estudante("Andreia", 9855678, new A1_EX2_Class_Data(18, 7, 1974)));
        lista2.add(new A3_EX1_Class_Estudante("Monica", 75266454, new A1_EX2_Class_Data(11, 8, 1978)));
        lista2.add(new A3_EX1_Class_Estudante("Jose", 85265426, new A1_EX2_Class_Data(15, 2, 1976)));
        lista2.add(new A3_EX1_Class_Bolseiro("Maria", 8976543, new A1_EX2_Class_Data(12, 5, 1976)));
        lista2.add(new A3_EX1_Class_Bolseiro("Xico", 872356522, new A1_EX2_Class_Data(21, 4, 1975)));
        
        System.out.println("\nEstudante Filter 1:");
        List<A3_EX1_Class_Estudante> ret2 = ListsProcess.filter(lista2, e -> e.N_Mec() < 103);
        printList(ret2);
        
        System.out.println("\nEstudante Filter 2:");
        ret2 = ListsProcess.filter(lista2,e -> e.getClass().getSimpleName().equals("A3_EX1_Class_Bolseiro"));
        printList(ret2);
        
    }
    
    private static <T> void printList(List<T> myList) {
        myList.forEach((e) -> {
            System.out.println(e);
        });
    }
}
