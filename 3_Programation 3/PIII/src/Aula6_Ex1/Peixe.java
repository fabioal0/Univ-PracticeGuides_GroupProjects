package Aula6_Ex1;

import java.util.Objects;

public class Peixe extends Alimento {
    
    private final TipoPeixe tipo;

    public Peixe(TipoPeixe tipo, double proteina, double calorias, double peso) {
        super(proteina, calorias, peso);
        this.tipo = tipo;
    }

    public TipoPeixe getTipo() {
        return tipo;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 83 * hash + Objects.hashCode(this.tipo);
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
        final Peixe other = (Peixe) obj;
        if (this.tipo != other.tipo) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Peixe " + "tipo=" + tipo + " "+ super.toString();
    }

}
