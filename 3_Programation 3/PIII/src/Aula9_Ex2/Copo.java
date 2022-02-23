package Aula9_Ex2;

public class Copo implements Gelado {

    Gelado tipo;
    int numero;

    public Copo(Gelado tipo) {
        this.tipo = tipo;

    }

    @Override
    public void base(int i) {
        numero = i;
        System.out.println(toString());
    }

    @Override
    public String toString() {
        return "  ("+numero +" bolas de Gelado de" + tipo.toString()+ " em copo)  ";
    }

}
