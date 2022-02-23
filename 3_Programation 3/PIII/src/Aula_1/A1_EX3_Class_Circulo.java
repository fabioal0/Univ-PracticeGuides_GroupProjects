package Aula_1;

import java.util.Objects;

public class A1_EX3_Class_Circulo {
   
    public static final double PI = Math.PI;
    private final A1_EX3_Class_Ponto Centro;
    private final double Raio;
    
    public A1_EX3_Class_Circulo(A1_EX3_Class_Ponto Centro,double Raio ){
    
        this.Centro=Centro;
        this.Raio=Raio;
    
    }
    
    public A1_EX3_Class_Circulo(double x, double y, double Raio ){
    
        this.Centro=new A1_EX3_Class_Ponto(x,y);
        this.Raio=Raio;
    
    }
    
    public double Raio(){ return Raio; }
    
    public A1_EX3_Class_Ponto Centro(){ return Centro; }
    
    public double Perimetro(){ return 2*PI*Raio; }
    
    public double Area(){ return PI*Raio*Raio; }
    
    public boolean Intreecao(A1_EX3_Class_Circulo Circulo){ 
        
        return this.Raio+Circulo.Raio()>=Math.sqrt(Math.abs(Math.pow(Circulo.Centro().x()-this.Centro().x(), 2)+Math.abs(Math.pow(Circulo.Centro().y()-this.Centro().y(), 2))));
        
    }
    
    @Override
    public String toString(){
    
    return "O circulo tem "+Raio()+" unidades de raio, "+Perimetro()+" unidades de perimetro e "+Area()+"unidades de area";
    
    }

    @Override
    public boolean equals(Object obj) {
        
        final A1_EX3_Class_Circulo other = (A1_EX3_Class_Circulo) obj;
        
        if (this.Raio != other.Raio) {
            return false;
        }
        if (this.Centro.x() != other.Centro.x() || this.Centro.y() != other.Centro.y()) {
            return false;
        }
        return true;
    }
    
}
