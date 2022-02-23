package Aula5_Ex2;

import java.util.Objects;

public class Automovel extends Veiculo implements Motorizado {
    
    private final double consumo;
    private final int potencia;
    private final double combustivel;
    private final String matricula;
    private final int cilindrada;

    public Automovel( double consumo, int potencia, double combustivel, int ano, String matricula, int cilindrada, String cor, int rodas, Tipo tipo, String id) {
        super(cor, rodas, tipo, id,ano);
  
        this.consumo = consumo;
        this.potencia = potencia;
        this.combustivel = combustivel;
        this.matricula = matricula;
        this.cilindrada = cilindrada;
    }

    @Override
    public double getConsumo() {
        return this.consumo;
    }

    @Override
    public int getPotencia() {
        return this.potencia;
    }

    @Override
    public double getCombustivel() {
        return this.combustivel;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 59 * hash + (int) (Double.doubleToLongBits(this.consumo) ^ (Double.doubleToLongBits(this.consumo) >>> 32));
        hash = 59 * hash + this.potencia;
        hash = 59 * hash + (int) (Double.doubleToLongBits(this.combustivel) ^ (Double.doubleToLongBits(this.combustivel) >>> 32));
        hash = 59 * hash + Objects.hashCode(this.matricula);
        hash = 59 * hash + this.cilindrada;
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
        final Automovel other = (Automovel) obj;
        if (Double.doubleToLongBits(this.consumo) != Double.doubleToLongBits(other.consumo)) {
            return false;
        }
        if (this.potencia != other.potencia) {
            return false;
        }
        if (Double.doubleToLongBits(this.combustivel) != Double.doubleToLongBits(other.combustivel)) {
            return false;
        }
        if (this.cilindrada != other.cilindrada) {
            return false;
        }
        if (!Objects.equals(this.matricula, other.matricula)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Automovel com consumo=" + consumo + ", potencia=" + potencia + ", combustivel=" + combustivel + ", matricula=" + matricula + ", cilindrada=" + cilindrada + super.toString();
    }
    
}
