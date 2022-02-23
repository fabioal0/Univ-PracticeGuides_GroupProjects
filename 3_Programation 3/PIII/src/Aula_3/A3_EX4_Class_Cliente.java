package Aula_3;

import java.util.Objects;

public class A3_EX4_Class_Cliente {
    
    private final A3_EX4_Class_Data Data_Nascimento;
    private final      String       Nome_Usuario;
    private final       int         Cartao_Cidadao; 
    private final       int         Numero_Socio;
    public static       int         Count_Socio=0;

    public A3_EX4_Class_Cliente( String Nome_Usuario, int Cartao_Cidadao, A3_EX4_Class_Data Data_Nascimento) {
       
        this.Data_Nascimento  =  Data_Nascimento;
        this.Nome_Usuario     =  Nome_Usuario;
        this.Cartao_Cidadao   =  Cartao_Cidadao;
        
        Count_Socio++;
        
        this.Numero_Socio     =  Count_Socio;
    
    }

    public String Nome_Usuario() {
        return Nome_Usuario;
    }

    public int Cartao_Cidadao() {
        return Cartao_Cidadao;
    }
    
    public A3_EX4_Class_Data Data_Nascimento() {
        
        return Data_Nascimento;
        
    }
    
    public int Numero_Socio(){
    
        return this.Numero_Socio;
        
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 23 * hash + Objects.hashCode(this.Data_Nascimento);
        hash = 23 * hash + Objects.hashCode(this.Nome_Usuario);
        hash = 23 * hash + this.Cartao_Cidadao;
        hash = 23 * hash + this.Numero_Socio;
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
        
        final A3_EX4_Class_Cliente other = (A3_EX4_Class_Cliente) obj;
        
        if (this.Cartao_Cidadao != other.Cartao_Cidadao) {  
            return false;
        }
        
        if (this.Numero_Socio != other.Numero_Socio) {
            return false;
        }
        
        if (!Objects.equals(this.Nome_Usuario, other.Nome_Usuario)) {
            return false;
        }
        
        if (!Objects.equals(this.Data_Nascimento, other.Data_Nascimento)) {
            return false;
        }
        
        return true;
        
    }

    @Override
    public String toString() {
        
        return "O socio "+ this.Nome_Usuario+" , cujo cartao de cidadao e "+this.Cartao_Cidadao+" , nasceu no dia " + this.Data_Nascimento.toString()+" e tem o numero de socio "+ this.Numero_Socio;
    
    }
   
}
