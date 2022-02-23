package Aula_3;

public class A3_EX3_Class_Pesado_Passageiros extends A3_EX3_Class_Informacao_Veiculo{
    
    public A3_EX3_Class_Pesado_Passageiros() {
        super("D",99999, 99999, 99999, 99999);
       
    }
    
    @Override
    public String toString() {
        return "Categoria : "+Tipo_de_Carta()+" "+super.toString(); 
    }

    @Override
    public boolean equals(Object obj) {
        return super.equals(obj); 
    }

    @Override
    public int hashCode() {
        return super.hashCode(); 
    }
    
    
    
}
