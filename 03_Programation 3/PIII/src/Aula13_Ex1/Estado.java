package Aula13_Ex1;

import java.util.Objects;

public class Estado extends Regiao {

    private PLocalidade capital;

    public Estado( String nome, int populacao,PLocalidade capital) {
        super(nome, populacao);
        this.capital = capital;
    }

    public PLocalidade getCapital() {
        return capital;
    }

    public void setCapital(PLocalidade capital) {
        this.capital = capital;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 31 * hash + Objects.hashCode(this.capital);
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
        final Estado other = (Estado) obj;
        if (!Objects.equals(this.capital, other.capital)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Estado{" + "capital=" + capital + '}';
    }

}
