package Aula_3;

public class A3_EX3_Class_Informacao_Veiculo {
    
    private final String Tipo_de_Carta;
    private final int Cilindrada;
    private final int Potencia;
    private final int Lotacao;
    private final int Peso_Bruto;

    public A3_EX3_Class_Informacao_Veiculo(String Tipo_de_Carta, int Cilindrada, int Potencia, int Lotacao, int Peso_Bruto) {
        
        this.Tipo_de_Carta=Tipo_de_Carta;
        this.Cilindrada = Cilindrada;
        this.Potencia = Potencia;
        this.Lotacao = Lotacao;
        this.Peso_Bruto = Peso_Bruto;
    
    }

    public String Tipo_de_Carta() {
        return Tipo_de_Carta;
    }
    
    public int Cilindrada() {
        return Cilindrada;
    }

    public int Potencia() {
        return Potencia;
    }

    public int Lotacao() {
        return Lotacao;
    }

    public int Peso_Bruto() {
        return Peso_Bruto;
    }
    
    @Override
    public int hashCode() {
        int hash = 7;
        hash = 71 * hash + this.Cilindrada;
        hash = 71 * hash + this.Potencia;
        hash = 71 * hash + this.Lotacao;
        hash = 71 * hash + this.Peso_Bruto;
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
        final A3_EX3_Class_Informacao_Veiculo other = (A3_EX3_Class_Informacao_Veiculo) obj;
        if (this.Cilindrada < other.Cilindrada) {
            return false;
        }
        if (this.Potencia < other.Potencia) {
            return false;
        }
        if (this.Lotacao < other.Lotacao) {
            return false;
        }
        if (this.Peso_Bruto < other.Peso_Bruto) {
            return false;
        }
        if (!this.Tipo_de_Carta.equals(other.Tipo_de_Carta)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Pode conduzir um veiculo com uma cilindrada inferior a: " + Cilindrada + 
               " cm3 , uma Potencia inferior a: " + Potencia + 
               " kw/Kg , uma Lotacao inferior a: " + Lotacao + 
               " Pessoas + condutor e um Peso Bruto inferior a: " + Peso_Bruto+ " Kg";
    }

}
