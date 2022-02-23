package Aula_3;
import Aula_1.A1_EX2_Class_Data;
import static Aula_1.A1_EX2_Class_Data.Today;
import Aula_1.A1_EX2_Class_Pessoa;
import java.util.Objects;

public class A3_EX1_Class_Estudante extends A1_EX2_Class_Pessoa {
    
    protected String Tipo = "Estudante";   // poderia usar this.getClass().getName();  porem o nome da class e maior que o tipo
    private static int N_Mec_Inc=99;
    private final int N_Mec;
    private final A1_EX2_Class_Data Data_Atual;

    public A3_EX1_Class_Estudante(String Nome, int CC, A1_EX2_Class_Data DataNasc) {
        super(Nome, CC, DataNasc);
        
        this.N_Mec_Inc++;
        this.N_Mec=N_Mec_Inc;
        this.Data_Atual=Today();
        
    }
    
    public int N_Mec(){
    
        return this.N_Mec;
        
    }
    
    public A1_EX2_Class_Data Data_Atual(){
    
        return this.Data_Atual;
        
    }

    public String Tipo() {
        return Tipo;
    }

    @Override
    public String toString(){
        
      
        return super.toString()+", NMec: "+this.N_Mec+", Inscrito em: "+this.Data_Atual.DataExtenso();

    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 83 * hash + Objects.hashCode(this.Tipo);
        hash = 83 * hash + this.N_Mec;
        hash = 83 * hash + Objects.hashCode(this.Data_Atual);
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
        final A3_EX1_Class_Estudante other = (A3_EX1_Class_Estudante) obj;
        if (this.N_Mec != other.N_Mec) {
            return false;
        }
        if (!Objects.equals(this.Tipo, other.Tipo)) {
            return false;
        }
        if (!Objects.equals(this.Data_Atual, other.Data_Atual)) {
            return false;
        }
        return true;
    }

}