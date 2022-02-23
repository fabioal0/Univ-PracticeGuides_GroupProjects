package Aula5_Ex1;

public abstract class Figura implements Comparable<Figura> {

    public Ponto Centro_Canto;

    public abstract double Perimetro();

    public abstract double Area();

    @Override
    public int compareTo(Figura f) {

        int i = 0;

        if (this.Area() > f.Area()) {

            i = 1;

        }

        else if (this.Area() < f.Area()) {

            i = -1;

        }

        return i;

    }

}

 