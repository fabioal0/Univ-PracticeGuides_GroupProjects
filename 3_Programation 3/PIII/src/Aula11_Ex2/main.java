package Aula11_Ex2;

import Aula5_Ex1.Figura;
import Aula5_Ex1.Quadrado;
import Aula5_Ex1.Rectangulo;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class main {

    public static void main(String[] args) {
        List<Figura> quad = new ArrayList<>();

        quad.add(new Quadrado(5, 5, 2));
        quad.add(new Quadrado(2, 7, 5));
        quad.add(new Quadrado(9, 5, 7));
        quad.add(new Quadrado(2, 1, 5));
        quad.add(new Quadrado(5, 5, 9));
        quad.add(new Rectangulo(5, 9, 1,4));
        quad.add(new Rectangulo(5, 5, 6,5));
        quad.add(new Rectangulo(3, 2,3, 0));

        System.out.println(maiorFiguraJ7(quad).get());
        System.out.println(maiorFiguraJ7A(quad).get());
        System.out.println("Area Total: "+Area(quad));
        System.out.println("Area Quadrado: "+AreaSub(quad, "Quadrado"));
        System.out.println("Area Rectangulo: "+AreaSub(quad, "Rectangulo"));
    }

    private static Optional<? extends Figura> maiorFiguraJ7(List<? extends Figura> figs) {
        return figs.stream().max((x, y) -> x.compareTo(y));
    }

    private static Optional<? extends Figura> maiorFiguraJ7A(List<? extends Figura> figs) {
        return figs.stream().max((x, y) -> Double.compare(x.Perimetro(), y.Perimetro()));
    }

    private static double Area(List<? extends Figura> figs) {
        return figs.stream().mapToDouble(Figura::Area).sum();
    }

    private static double AreaSub(List<? extends Figura> figs, String subtipe) {
        return figs.stream().filter(p -> p.getClass().getSimpleName().equals(subtipe))
                .mapToDouble(Figura::Area).sum();
    }

}
