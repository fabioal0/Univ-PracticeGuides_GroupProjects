package Aula9_Ex2;

public class Cone implements Gelado {

    Gelado tipo;
    int numero;

    public Cone(Gelado tipo) {
        this.tipo = tipo;

    }

    @Override
    public void base(int i) {
        numero = i;
        System.out.println(toString());
    }

    @Override
    public String toString() {
        return "  ("+numero +" bolas de Gelado de" + tipo.toString()+ " em cone)  ";
    }

}
