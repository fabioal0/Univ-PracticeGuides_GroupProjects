package Aula_3;

import java.util.Objects;

public class A3_EX3_Class_Condutor {
   
    private final A3_EX3_Class_Informacao_Veiculo Veiculo;
    
    public A3_EX3_Class_Condutor(String Tipo_de_Carta, int Cilindrada, int Potencia, int Lotacao, int Peso_Bruto) {

        this.Veiculo= new A3_EX3_Class_Informacao_Veiculo(Tipo_de_Carta,Cilindrada, Potencia, Lotacao, Peso_Bruto);
   
    }

    public A3_EX3_Class_Informacao_Veiculo Veiculo() {
        return Veiculo;
    }
    
    @Override
    public String toString() {
        return " Carta Categoria : " + Veiculo.Tipo_de_Carta() +
               ", um veiculo com a cilindrada : " + Veiculo.Cilindrada() + 
               " cm3 , a Potencia : " + Veiculo.Potencia() + 
               " kw/Kg , a Lotacao : " + Veiculo.Lotacao() + 
               " Pessoas + condutor e o Peso Bruto : " + Veiculo.Peso_Bruto()+ " Kg";
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 67 * hash + Objects.hashCode(this.Veiculo);
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
        final A3_EX3_Class_Condutor other = (A3_EX3_Class_Condutor) obj;
        if (!Objects.equals(this.Veiculo, other.Veiculo)) {
            return false;
        }
        return true;
    }
    
}
