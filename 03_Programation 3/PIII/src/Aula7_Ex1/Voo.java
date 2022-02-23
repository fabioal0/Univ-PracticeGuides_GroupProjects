package Aula7_Ex1;

import java.util.Objects;

public class Voo {

    private final String nome;
    private final String Origem;
    private final Hora hora;
    private final Hora atraso;
    private final Hora obs;

    public Voo(String nome, String Origem, int hora_H, int hora_M, int atraso_H, int atraso_M, int obs_H, int obs_M) {
        this.nome = nome;
        this.Origem = Origem;
        this.hora = new Hora(hora_H, hora_M);
        this.atraso = new Hora(atraso_H, atraso_M);
        this.obs = new Hora(obs_H, obs_M);
    }

    public String getNome() {
        return nome;
    }

    public String getOrigem() {
        return Origem;
    }

    public Hora getHora() {
        return hora;
    }

    public Hora getAtraso() {
        return atraso;
    }

    public Hora getObs() {
        return obs;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 53 * hash + Objects.hashCode(this.nome);
        hash = 53 * hash + Objects.hashCode(this.Origem);
        hash = 53 * hash + Objects.hashCode(this.hora);
        hash = 53 * hash + Objects.hashCode(this.atraso);
        hash = 53 * hash + Objects.hashCode(this.obs);
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
        final Voo other = (Voo) obj;
        if (!Objects.equals(this.nome, other.nome)) {
            return false;
        }
        if (!Objects.equals(this.Origem, other.Origem)) {
            return false;
        }
        if (!Objects.equals(this.hora, other.hora)) {
            return false;
        }
        if (!Objects.equals(this.atraso, other.atraso)) {
            return false;
        }
        if (!Objects.equals(this.obs, other.obs)) {
            return false;
        }
        return true;
    }

    public String aux1toString() {
        return this.hora + "\t\t" + this.nome + "\t\t";
    }

    public String aux2toString() {

        if (this.atraso.getHora() == 0 && this.atraso.getMinuto() == 0) {
            return "\t" + this.Origem;
        } else {
            if (this.Origem.length() < 8) {
                return "\t" + this.Origem + "\t\t\t\t" + this.atraso + "\t\t" + this.obs;
            } else if (this.Origem.length() < 16) {
                return "\t" + this.Origem + "\t\t\t" + this.atraso + "\t\t" + this.obs;
            } else {
                return "\t" + this.Origem + "\t\t" + this.atraso + "\t\t" + this.obs;
            }
        }

    }

    @Override
    public String toString() {
        if (this.Origem.length() < 8) {
            return this.hora + "\t\t" + this.nome + "\t\t\t" + this.Origem + "\t\t\t\t" + this.atraso + "\t\t" + this.obs + "\n";
        } else if (this.Origem.length() < 16) {
            return this.hora + "\t\t" + this.nome + "\t\t\t" + this.Origem + "\t\t\t" + this.atraso + "\t\t" + this.obs + "\n";
        } else {
            return this.hora + "\t\t" + this.nome + "\t\t\t" + this.Origem + "\t\t" + this.atraso + "\t\t" + this.obs + "\n";
        }

    }



}
