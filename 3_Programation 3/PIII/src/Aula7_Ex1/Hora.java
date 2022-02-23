package Aula7_Ex1;

public class Hora {

    private final int hora;
    private final int minuto;

    public Hora(int hora, int minuto) {
        this.hora = hora;
        this.minuto = minuto;
    }

    public int getHora() {
        return hora;
    }

    public int getMinuto() {
        return minuto;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 97 * hash + this.hora;
        hash = 97 * hash + this.minuto;
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
        final Hora other = (Hora) obj;
        if (this.hora != other.hora) {
            return false;
        }
        if (this.minuto != other.minuto) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        if (hora >= 10) {
            if (minuto >= 10) {
                return hora + ":" + minuto;
            } else {
                return hora + ":" + "0" + minuto;
            }

        } else {
            if (minuto >= 10) {
                return "0" + hora + ":" + minuto;
            } else {
                return "0" + hora + ":" + "0" + minuto;
            }
        }
    }



}
