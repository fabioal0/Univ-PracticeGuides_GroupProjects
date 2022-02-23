
package Aula_1;

public class A1_EX3_Class_Rectangulo {
    
    private final double Largura;
    private final double Comprimento;

    
    public A1_EX3_Class_Rectangulo(double Largura,double Comprimento){
    
        this.Largura=Largura;
        this.Comprimento=Comprimento;
    }
    
    public double Largura(){ return Largura; }
    
    public double Comprimento(){ return Comprimento; }
    
    public double Perimetro(){ return 2*Largura+2*Comprimento; }
    
    public double Area(){ return Largura*Comprimento; }
    
    @Override
    public String toString(){
    
    return "O rectangulo tem "+Largura()+" unidades de largura, "+Comprimento()+" unidades de comprimento "+Perimetro()+" unidades de perimetro e "+Area()+" unidades de area";
    
    }
    
}
