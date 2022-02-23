package Aula6_Ex1;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Objects;

public class Prato implements Pratos, Comparable<Pratos>, Serializable {

    private final String nome;
    private final Alimento[] composicao = new Alimento[2];

    public Prato(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public Alimento[] getCompoicao() {
        return composicao;
    }

    public boolean addIngrediente(Alimento alimento) {

        if (composicao[0] == null) {

            composicao[0] = alimento;
            return true;

        } else if (composicao[1] == null) {
            composicao[1] = alimento;

            return true;

        }
        return false;

    }
    
        public boolean removeIngrediente( int num) {

        if (composicao[num] != null) {

            composicao[num] = null;
            return true;
        }
        
        return false;

    }

    @Override
    public String toString() {
        return "\n Prato " + "nome=" + nome + ", compoicao=" + composicao[0] + " , " + composicao[1]+"\n \n";
    }

    @Override
    public double PesoTotal() {

        if (composicao[0] != null && composicao[1] != null) {
            return composicao[0].getPeso() + composicao[1].getPeso();
        } else if (composicao[0] != null) {
            return composicao[0].getPeso();
        } else if (composicao[1] != null) {
            return composicao[1].getPeso();
        } else {
            return 0;
        }
    }

    @Override
    public double CaloriasTotal() {
        if (composicao[0] != null && composicao[1] != null) {
            return composicao[0].getCalorias() + composicao[1].getCalorias();
        } else if (composicao[0] != null) {
            return composicao[0].getCalorias();
        } else if (composicao[1] != null) {
            return composicao[1].getCalorias();
        } else {
            return 0;
        }

    }

    @Override
    public double ProteinasTotal() {
        if (composicao[0] != null && composicao[1] != null) {
            return composicao[0].getProteina() + composicao[1].getProteina();
        } else if (composicao[0] != null) {
            return composicao[0].getProteina();
        } else if (composicao[1] != null) {
            return composicao[1].getProteina();
        } else {
            return 0;
        }
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 23 * hash + Objects.hashCode(this.nome);
        hash = 23 * hash + Arrays.deepHashCode(this.composicao);
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
        final Prato other = (Prato) obj;
        if (!Objects.equals(this.nome, other.nome)) {
            return false;
        }
        if (!Arrays.deepEquals(this.composicao, other.composicao)) {
            return false;
        }
        return true;
    }

    @Override
    public int compareTo(Pratos o) {

        int i = 0;

        if (this.CaloriasTotal() > o.CaloriasTotal()) {
            i = 1;
        } else if (this.CaloriasTotal() > o.CaloriasTotal()) {
            i = -1;
        }

        return i;
    }

}
