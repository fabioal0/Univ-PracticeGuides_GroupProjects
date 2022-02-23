package Aula13_Ex1;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class Pais {

    private final String nome;
    private PLocalidade capital;
    private final List<Regiao> regioes;

    public Pais(String nome, PLocalidade localidade) {

        assert nome != null : "nome nulo";
        assert localidade.getTipolocalidade().equals(TipoLocalidade.Cidade) : "capital invalida";

        this.nome = nome;
        this.capital = localidade;
        this.regioes = new ArrayList<>();

    }

    public Pais(String nome) {

        assert nome != null : "nome nulo";

        this.nome = nome;
        this.regioes = new ArrayList<>();
    }

    public String getNome() {
        return nome;
    }

    public PLocalidade getCapital() {
        return capital;
    }

    public List<Regiao> getRegioes() {
        return regioes;
    }

    public int getPopulacaoTotal() {
        int sum = 0;

        for (int a = 0; a < regioes.size(); a++) {

            sum += regioes.get(a).getPopulacao();

        }

        return sum;
    }

    public void setCapital(PLocalidade capital) {

        assert capital == null : "capital nula";
        assert capital.getTipolocalidade().equals(TipoLocalidade.Cidade) : "capital invalida";

        this.capital = capital;
    }

    public void addRegiao(Regiao regiao) {

        this.regioes.add(regiao);
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 31 * hash + Objects.hashCode(this.nome);
        hash = 31 * hash + Objects.hashCode(this.capital);
        hash = 31 * hash + Objects.hashCode(this.regioes);
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
        final Pais other = (Pais) obj;
        if (!Objects.equals(this.nome, other.nome)) {
            return false;
        }
        if (!Objects.equals(this.capital, other.capital)) {
            return false;
        }
        if (!Objects.equals(this.regioes, other.regioes)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {

        if (capital != null) {
            return " Pais: " + nome + "  " + getPopulacaoTotal() + " (capital: " + capital;
        } else {
            return " Pais: " + nome + "  " + getPopulacaoTotal() + " (capital: *Indefinida*)";

        }
    }

}
