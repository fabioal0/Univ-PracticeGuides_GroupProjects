package Aula13_Ex1;

import java.util.Objects;

public class Localidade extends Regiao {

    private final TipoLocalidade tipolocalidade;

    public Localidade(String name, int população, TipoLocalidade tipolocalidade) {
        super(name, população);
        this.tipolocalidade = tipolocalidade;
    }

    public TipoLocalidade getTipolocalidade() {
        return tipolocalidade;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 67 * hash + Objects.hashCode(this.tipolocalidade);
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
        final Localidade other = (Localidade) obj;
        if (this.tipolocalidade != other.tipolocalidade) {
            return false;
        }
        return (true && super.equals(obj));
    }

    @Override
    public String toString() {
        return tipolocalidade +" "+this.getNome()+ ", populacao: "+super.getPopulacao()+")";
    }

}
