package Aula6_Ex1;

import java.util.Objects;

public class Carne extends Alimento {

    private final VariedadeCarne variedade;

    public Carne(VariedadeCarne variedade, double proteina, double calorias, double peso) {
        super(proteina, calorias, peso);
        this.variedade = variedade;
    }

    public VariedadeCarne getVariedade() {
        return variedade;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 67 * hash + Objects.hashCode(this.variedade);
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
        final Carne other = (Carne) obj;
        if (this.variedade != other.variedade) {
            return false;
        }
        return super.equals(obj);
    }

    @Override
    public String toString() {
        return "Carne " + "variedade=" + variedade + " " + super.toString();
    }

}
