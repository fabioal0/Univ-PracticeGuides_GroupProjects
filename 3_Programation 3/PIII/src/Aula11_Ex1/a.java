package Aula11_Ex1;

import Aula5_Ex1.Circulo;
import Aula5_Ex1.Figura;
import Aula5_Ex1.Quadrado;
import Aula5_Ex1.Rectangulo;
import Aula5_Ex3.Data;
import Aula5_Ex3.Pessoa;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public abstract class a {

    public static void main(String[] args) {

        List<Pessoa> vp = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            vp.add(new Pessoa("Bebé no Vector " + i, 1000 + i, Data.Today()));
        }
        Iterator<Pessoa> vec = vp.iterator();

        printSet(vp.iterator());
        List<Pessoa> lp = new LinkedList<>();
        while (vec.hasNext()) {
            lp.add(vec.next());
        }
        Iterator<Pessoa> lista = lp.iterator();
        while (lista.hasNext()) {
            System.out.println(lista.next());
        }
        List<Figura> figList = new LinkedList<>();
        figList.add(new Circulo(1, 3, 1));
        figList.add(new Quadrado(3, 4, 2));
        figList.add(new Rectangulo(1, 2, 2, 5));
        printSet(figList.iterator());
        System.out.println("Soma da Area de Lista de Figuras: "
                + sumArea(figList));

        List< Rectangulo> quadList
                = new LinkedList<>();
        //quadList.addElem(new Quadrado(3, 4, 2));    (Quadrado extends Rectangulo)-nao acontece
        quadList.add(new Rectangulo(1, 2, 2, 5));
        System.out.println("Soma da Area de Lista de Quadrados: "
                + sumArea(quadList));
    }

    private static <T> void printSet(Iterator<T> iterator) {
        iterator.forEachRemaining((x) -> System.out.println(x.toString()));
    }

    static double k;

    private static double sumArea(List<? extends Figura> figList) {
        k = 0;
        figList.iterator().forEachRemaining(e -> {
            k += e.Area();
        });
        return k;
    }
}
