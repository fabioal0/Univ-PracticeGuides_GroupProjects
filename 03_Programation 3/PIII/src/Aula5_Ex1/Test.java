package Aula5_Ex1;

public class Test {

    public static void main(String[] args) {

        Circulo c1 = new Circulo(2);
        Circulo c2 = new Circulo(1, 3, 2);
        Quadrado q1 = new Quadrado(2);
        Quadrado q2 = new Quadrado(3, 4, 2);
        Rectangulo r1 = new Rectangulo(2, 3);
        Rectangulo r2 = new Rectangulo(3, 4, 2, 3);

        ColecaoFiguras col = new ColecaoFiguras(42.0); // MaxArea

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

        Figura[] listaFig = col.getFiguras();
        System.out.println("\nLista de Figuras:");

        for (Figura f : listaFig) {
            
            System.out.println(f);
            
        }

        System.out.println("\nComparacao da area do primeiro elemento com todos");
        
        for (int i = 0; i < listaFig.length; i++) {
            
            System.out.printf("%2d %12s de area %6.2f compareTo(listaFig[0]) = %2d\n", i,
                    
                listaFig[i].getClass().getSimpleName(),
                listaFig[i].Area(),
                listaFig[i].compareTo(listaFig[0]));
            
        }
        
        System.out.println("\nFigura com maior Area: " + UtilCompare.findMax(listaFig));
        
        UtilCompare.sortArray(listaFig);
        
        System.out.println("\nLista de Figuras Ordenadas por Area:");

        for (Figura f : listaFig) {
            
            System.out.println(f + " -> area: " + String.format("%2.2f", f.Area())
                               + " e perimetro: " + String.format("%2.2f", f.Perimetro()));
            
        }

    }
}
