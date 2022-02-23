package Aula_4;

import Aula_3.A3_EX2_Class_Ponto;
import java.util.Objects;

public class A4_EX2_Class_Rectangulo extends A4_EX2_Class_Figura{
   
    private final double Largura;
    private final double Comprimento;

    
    public A4_EX2_Class_Rectangulo(double X, double Y, double Comprimento,double Largura){
    
        this.Largura=Largura;
        this.Comprimento=Comprimento;
        this.Centro_Canto=new A3_EX2_Class_Ponto(X,Y);
        
    }
    
    public A4_EX2_Class_Rectangulo(double Comprimento,double Largura){
    
        this.Largura=Largura;
        this.Comprimento=Comprimento;
        this.Centro_Canto=new A3_EX2_Class_Ponto(0,0);
    }
        
    public A4_EX2_Class_Rectangulo(A4_EX2_Class_Rectangulo Rectangulo){
    
        this.Largura=Rectangulo.Largura;
        this.Comprimento=Rectangulo.Comprimento;
        this.Centro_Canto=Rectangulo.Centro_Canto;
    }    
    
    public double Largura(){ return Largura; }
    
    public double Comprimento(){ return Comprimento; }
    
    @Override
    public double Perimetro(){ return 2*Comprimento+2*Largura; }
    
    @Override
    public double Area(){ return Comprimento*Largura; }
    
    @Override
    public String toString(){
    
    return "O rectangulo cuja origem e ("+this.Centro_Canto.x()+","+this.Centro_Canto.y()+") tem "+this.Largura+" unidades de largura, "+this.Comprimento+" unidades de comprimento "+this.Perimetro()+" unidades de perimetro e "+this.Area()+" unidades de area";
    
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 37 * hash + (int) (Double.doubleToLongBits(this.Largura) ^ (Double.doubleToLongBits(this.Largura) >>> 32));
        hash = 37 * hash + (int) (Double.doubleToLongBits(this.Comprimento) ^ (Double.doubleToLongBits(this.Comprimento) >>> 32));
        hash = 37 * hash + Objects.hashCode(this.Centro_Canto);
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
        final A4_EX2_Class_Rectangulo other = (A4_EX2_Class_Rectangulo) obj;
        if (Double.doubleToLongBits(this.Largura) != Double.doubleToLongBits(other.Largura)) {
            return false;
        }
        if (Double.doubleToLongBits(this.Comprimento) != Double.doubleToLongBits(other.Comprimento)) {
            return false;
        }
        if (!Objects.equals(this.Centro_Canto, other.Centro_Canto)) {
            return false;
        }
        return true;
    }
    
    
}
