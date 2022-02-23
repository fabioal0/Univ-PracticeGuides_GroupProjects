package Aula6_Ex1;

import java.io.Serializable;

public class Alimento implements Comparable<Alimento>, Serializable {
    
    private final double proteina ;
    private final double calorias;
    private final double peso;

    public Alimento(double proteina, double calorias, double peso) {
        this.proteina = proteina;
        this.calorias = calorias;
        this.peso = peso;
    }

    public double getProteina() {
        return proteina;
    }

    public double getCalorias() {
        return calorias;
    }

    public double getPeso() {
        return peso;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 97 * hash + (int) (Double.doubleToLongBits(this.proteina) ^ (Double.doubleToLongBits(this.proteina) >>> 32));
        hash = 97 * hash + (int) (Double.doubleToLongBits(this.calorias) ^ (Double.doubleToLongBits(this.calorias) >>> 32));
        hash = 97 * hash + (int) (Double.doubleToLongBits(this.peso) ^ (Double.doubleToLongBits(this.peso) >>> 32));
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
        final Alimento other = (Alimento) obj;
        if (Double.doubleToLongBits(this.proteina) != Double.doubleToLongBits(other.proteina)) {
            return false;
        }
        if (Double.doubleToLongBits(this.calorias) != Double.doubleToLongBits(other.calorias)) {
            return false;
        }
        if (Double.doubleToLongBits(this.peso) != Double.doubleToLongBits(other.peso)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Alimentos: " + "proteina=" + proteina + ", calorias=" + calorias + ", peso=" + peso;
    }

    @Override
    public int compareTo(Alimento o) {

        int i=0;
        
        if (this.calorias>o.getCalorias()) i= 1;
        
        else if (this.calorias>o.getCalorias()) i= -1;
 
        return i;
    }
     
}
