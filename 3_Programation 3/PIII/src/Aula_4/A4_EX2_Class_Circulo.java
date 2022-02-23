package Aula_4;

import Aula_3.A3_EX2_Class_Ponto;
import java.util.Objects;

public class A4_EX2_Class_Circulo extends A4_EX2_Class_Figura {

    public static final double PI = Math.PI;
    private final double Raio;

    public A4_EX2_Class_Circulo(double x, double y, double Raio) {

        this.Centro_Canto = new A3_EX2_Class_Ponto(x, y);
        this.Raio = Raio;

    }

    public A4_EX2_Class_Circulo(double Raio) {

        this.Centro_Canto = new A3_EX2_Class_Ponto(0, 0);
        this.Raio = Raio;

    }

    public A4_EX2_Class_Circulo(A4_EX2_Class_Circulo Circulo) {

        this.Centro_Canto = Circulo.Centro_Canto;
        this.Raio = Circulo.Raio;

    }

    public double Raio() {
        return Raio;
    }

    public A3_EX2_Class_Ponto Centro() {
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

    public boolean Intreecao(A4_EX2_Class_Circulo Circulo) {

        return this.Raio + Circulo.Raio() >= Math.sqrt(Math.abs(Math.pow(Circulo.Centro().x() - this.Centro().x(), 2) + Math.abs(Math.pow(Circulo.Centro().y() - this.Centro().y(), 2))));

    }

    @Override
    public String toString() {

        return "O circulo cuja origem e (" + Centro_Canto.x() + "," + Centro_Canto.y() + ") tem " + this.Raio + " unidades de raio, " + this.Perimetro() + " unidades de perimetro e " + this.Area() + " unidades de area";

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
        final A4_EX2_Class_Circulo other = (A4_EX2_Class_Circulo) obj;
        if (Double.doubleToLongBits(this.Raio) != Double.doubleToLongBits(other.Raio)) {
            return false;
        }
        if (!Objects.equals(this.Centro_Canto, other.Centro_Canto)) {
            return false;
        }
        return true;
    }
    
}
