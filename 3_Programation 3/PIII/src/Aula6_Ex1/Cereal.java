package Aula6_Ex1;

import java.util.Objects;

public class Cereal extends Alimento implements Vegetariano {

    private final String nome;

    public Cereal(String nome, double proteina, double calorias, double peso) {
        super(proteina, calorias, peso);
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 37 * hash + Objects.hashCode(this.nome);
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
        final Cereal other = (Cereal) obj;
        if (!Objects.equals(this.nome, other.nome)) {
            return false;
        }
        return super.equals(obj);
    }

    @Override
    public String toString() {
        return "Cereal " + "nome=" + nome + " "+ super.toString();
    }

}
