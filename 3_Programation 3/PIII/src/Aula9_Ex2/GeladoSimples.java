package Aula9_Ex2;

public class GeladoSimples implements Gelado {

    String tipo;
    int numero;

    public GeladoSimples(String tipo) {
        this.tipo = tipo;
    }

    @Override
    public void base(int i) {
        numero = i;
        System.out.println(toString());

    }

    @Override
    public String toString() {
        return "  ("+numero+" bolas de gelado de " + tipo+")  " ;
    }

}
