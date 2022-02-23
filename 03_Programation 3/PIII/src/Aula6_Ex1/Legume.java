package Aula6_Ex1;

import java.util.Objects;

public class Legume extends Alimento implements Vegetariano {
    
    private final String nome;

    public Legume(String nome, double proteina, double calorias, double peso) {
        super(proteina, calorias, peso);
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 83 * hash + Objects.hashCode(this.nome);
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
        final Legume other = (Legume) obj;
        if (!Objects.equals(this.nome, other.nome)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Legume " + "nome=" + nome + " "+ super.toString();
    }

}