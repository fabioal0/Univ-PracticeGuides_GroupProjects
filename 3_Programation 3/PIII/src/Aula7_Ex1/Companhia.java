package Aula7_Ex1;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class Companhia extends Atraso {

    private final String nome;
    private final List<Voo> voos;

    public Companhia(String nome) {
        this.voos = new ArrayList();
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public List<Voo> getVoos() {
        return voos;
    }

    public void addVoo(Voo voo) {
        voos.add(voo);
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 23 * hash + Objects.hashCode(this.nome);
        hash = 23 * hash + Objects.hashCode(this.voos);
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
        final Companhia other = (Companhia) obj;
        if (!Objects.equals(this.nome, other.nome)) {
            return false;
        }
        if (!Objects.equals(this.voos, other.voos)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Companhia " + nome + "\nvoos:\n " + voos + "\n\n";
    }

    @Override
    public double media() {

        int soma = 0;
        double media=0;

        for (int i = 0; i < voos.size(); i++) {

            soma += voos.get(i).getAtraso().getHora() * 60 + voos.get(i).getAtraso().getMinuto();
            media = soma / voos.size();
        }
        return media;
    }

}
