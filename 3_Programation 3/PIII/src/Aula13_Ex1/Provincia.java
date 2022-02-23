package Aula13_Ex1;

import java.util.Objects;

public class Provincia extends Regiao {

    private String governador;

    public Provincia(String nome, int populacao, String governador) {
        super(nome, populacao);
        this.governador = governador;
    }

    public String getGovernador() {
        return governador;
    }

    public void setGovernador(String governador) {
        this.governador = governador;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 97 * hash + Objects.hashCode(this.governador);
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
        final Provincia other = (Provincia) obj;
        if (!Objects.equals(this.governador, other.governador)) {
            return false;
        }
        return (true && super.equals(obj));

    }

    @Override
    public String toString() {
        return "Provincia{" + "governador=" + governador + '}';
    }

}
