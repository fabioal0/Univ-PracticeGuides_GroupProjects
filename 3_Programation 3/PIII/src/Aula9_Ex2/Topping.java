package Aula9_Ex2;

public class Topping implements Gelado {

    Gelado tipo;
    String extra;
    int numero;

    public Topping(Gelado tipo, String extra) {
        this.tipo = tipo;
        this.extra = extra;
    }

    @Override
    public void base(int i) {
        numero = i;
        System.out.println(toString());
    }

    @Override
    public String toString() {
        return "  ("+numero +" bolas de Gelado de" + tipo.toString()+ " em copo com"+extra+")  ";
    }

}
