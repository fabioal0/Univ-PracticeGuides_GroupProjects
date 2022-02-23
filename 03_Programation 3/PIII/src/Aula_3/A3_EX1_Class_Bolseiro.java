
package Aula_3;
import Aula_1.A1_EX2_Class_Data;

public class A3_EX1_Class_Bolseiro extends A3_EX1_Class_Estudante {
    
    private int montante;
    
    
    public A3_EX1_Class_Bolseiro(String Nome, int CC, A1_EX2_Class_Data Data){
    super( Nome,  CC, Data);
    
    Tipo="Bolseiro";
   
    }
    
    public void set(int montante){
    
        this.montante=montante;
        
    }
  
    public int bolsa(){ return this.montante; }
    
    @Override
    public String toString(){

        return super.toString()+", Bolsa: "+bolsa();
    
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 73 * hash + this.montante;
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
        final A3_EX1_Class_Bolseiro other = (A3_EX1_Class_Bolseiro) obj;
        if (this.montante != other.montante) {
            return false;
        }
        return true;
    }
    
}
    


