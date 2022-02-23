package Aula_4;

import java.util.Objects;

public class Funcionario extends Cliente{
    
    private final           String              Tipo  = this.getClass().getName();;  
    private final            int                Numero_Funcionario;
    private final            int                Numero_Fiscal;


    public Funcionario(int Numero_Funcionario, int Numero_Fiscal, String Nome_Usuario, int Cartao_Cidadao, Data Data_Nascimento) {
        super(Nome_Usuario, Cartao_Cidadao, Data_Nascimento);
        
        this.Numero_Funcionario = Numero_Funcionario;
        this.Numero_Fiscal = Numero_Fiscal;
    
    }

    public String Tipo() {
        
        return Tipo;
    
    }

    public int Numero_Funcionario() {
        
        return Numero_Funcionario;
    
    }

    public int Numero_Fiscal() {
        
        return Numero_Fiscal;
    
    }
    
    @Override
    public int hashCode() {
        int hash = 3;
        hash = 23 * hash + Objects.hashCode(this.Tipo);
        hash = 23 * hash + this.Numero_Funcionario;
        hash = 23 * hash + this.Numero_Fiscal;
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
        final Funcionario other = (Funcionario) obj;
        if (this.Numero_Funcionario != other.Numero_Funcionario) {
            return false;
        }
        if (this.Numero_Fiscal != other.Numero_Fiscal) {
            return false;
        }
        if (!Objects.equals(this.Tipo, other.Tipo)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        
        return super.toString()+" O seu numero de funcionario e " + Numero_Funcionario + " e o seu numero fiscal e " + Numero_Fiscal;
    
    }
    
}
