package Aula10_Ex1;

import Aula5_Ex1.Circulo;
import Aula5_Ex1.Figura;
import Aula5_Ex1.Quadrado;
import Aula5_Ex1.Rectangulo;
import Aula5_Ex3.Data;
import Aula5_Ex3.Pessoa;
import java.util.Iterator;

public abstract class Main {

    public static void main(String[] args) {

        VectorGeneric<Pessoa> vp = new VectorGeneric<>();
        for (int i = 0; i < 10; i++) {
            vp.addElem(new Pessoa("Bebé no Vector " + i, 1000 + i, Data.Today()));
        }
        Iterator<Pessoa> vec = vp.iterator();

        printSet(vp.iterator());
        ListaGeneric<Pessoa> lp = new ListaGeneric<>();
        while (vec.hasNext()) {
            lp.addElem(vec.next());
        }
        Iterator<Pessoa> lista = lp.iterator();
        while (lista.hasNext()) {
            System.out.println(lista.next());
        }
        ListaGeneric<Figura> figList = new ListaGeneric<>();
        figList.addElem(new Circulo(1, 3, 1));
        figList.addElem(new Quadrado(3, 4, 2));
        figList.addElem(new Rectangulo(1, 2, 2, 5));
        printSet(figList.iterator());
        System.out.println("Soma da Area de Lista de Figuras: "
                + sumArea(figList));

        ListaGeneric< Rectangulo> quadList
                = new ListaGeneric<>();
        //quadList.addElem(new Quadrado(3, 4, 2));    (Quadrado extends Rectangulo)-nao acontece
        quadList.addElem(new Rectangulo(1, 2, 2, 5));
        System.out.println("Soma da Area de Lista de Quadrados: "
                + sumArea(quadList));
    }

    private static <T> void printSet(Iterator<T> iterator) {
        iterator.forEachRemaining((x) -> System.out.println(x.toString()));
    }

    static double k;

    private static double sumArea(ListaGeneric<? extends Figura> figList) {
        k = 0;
        figList.iterator().forEachRemaining(e -> {
            k += e.Area();
        });
        return k;
    }
}
