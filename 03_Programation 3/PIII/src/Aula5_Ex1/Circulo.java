package Aula5_Ex1;

import java.util.Objects;

public class Circulo extends Figura {

    public static final double PI = Math.PI;
    private final double Raio;

    public Circulo(double x, double y, double Raio) {

        this.Centro_Canto = new Ponto(x, y);
        this.Raio = Raio;

    }

    public Circulo(double Raio) {

        this.Centro_Canto = new Ponto(0, 0);
        this.Raio = Raio;

    }

    public Circulo(Circulo Circulo) {

        this.Centro_Canto = Circulo.Centro_Canto;
        this.Raio = Circulo.Raio;

    }

    public double Raio() {
        return Raio;
    }

    public Ponto Centro() {
        return Centro_Canto;
    }

    @Override
    public double Perimetro() {
        return 2 * this.PI * this.Raio;
    }

    @Override
    public double Area() {
        return PI * Raio * Raio;
    }

    public boolean Intreecao(Circulo Circulo) {

        return this.Raio + Circulo.Raio() >= Math.sqrt(Math.abs(Math.pow(Circulo.Centro().x() - this.Centro().x(), 2) + Math.abs(Math.pow(Circulo.Centro().y() - this.Centro().y(), 2))));

    }

    @Override
    public String toString() {

        return "O circulo cuja origem e "+this.Centro_Canto.toString()+" tem " + this.Raio;

    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 29 * hash + Objects.hashCode(this.Centro_Canto);
        hash = 29 * hash + (int) (Double.doubleToLongBits(this.Raio) ^ (Double.doubleToLongBits(this.Raio) >>> 32));
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Circulo other = (Circulo) obj;
        if (Double.doubleToLongBits(this.Raio) != Double.doubleToLongBits(other.Raio)) {
            return false;
        }
        if (!Objects.equals(this.Centro_Canto, other.Centro_Canto)) {
            return false;
        }
        return true;
    }
    
    
}
