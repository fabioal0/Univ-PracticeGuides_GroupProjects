package Aula_3;

public class A3_EX3_Class_Ligeiro extends A3_EX3_Class_Informacao_Veiculo {
    
    public A3_EX3_Class_Ligeiro() {
        super("B",99999, 15, 8, 3500);

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
