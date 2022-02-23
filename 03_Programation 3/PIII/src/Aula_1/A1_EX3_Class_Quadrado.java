package Aula_1;


public class A1_EX3_Class_Quadrado {
    
    private final double Lado;
    
    public A1_EX3_Class_Quadrado(double Lado){
    
        this.Lado=Lado;
    
    }
    
    public double Lado(){ return Lado; }
    
    public double Perimetro(){ return 4*Lado; }
    
    public double Area(){ return Lado*Lado; }
    
    @Override
    public String toString(){
    
    return "O quadrado tem "+Lado()+" unidades de lado, "+Perimetro()+" unidades de perimetro e "+Area()+"unidades de area";
    
    }
    
}
