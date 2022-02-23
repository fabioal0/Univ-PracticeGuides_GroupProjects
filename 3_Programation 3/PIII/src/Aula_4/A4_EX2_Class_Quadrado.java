package Aula_4;

import Aula_3.A3_EX2_Class_Ponto;
import java.util.Objects;

public class A4_EX2_Class_Quadrado extends A4_EX2_Class_Figura{

    private final double Lado;

    public A4_EX2_Class_Quadrado(double X,double Y,double Lado){
    
        this.Lado=Lado;
        this.Centro_Canto=new A3_EX2_Class_Ponto(X,Y);
        
    }
        
    public A4_EX2_Class_Quadrado(double Lado){
    
        this.Lado=Lado;
        this.Centro_Canto=new A3_EX2_Class_Ponto(0,0);
        
    }
    
    public A4_EX2_Class_Quadrado(A4_EX2_Class_Quadrado Quadrado){
    
        this.Lado=Quadrado.Lado;
        this.Centro_Canto=Quadrado.Centro_Canto;
        
    }
    
    public double Lado(){ return Lado; }
    
    @Override
    public double Perimetro(){ return 4*Lado; }
    
    @Override
    public double Area(){ return Lado*Lado; }
    
    @Override
    public String toString(){
    
    return "O quadrado cuja origem e ("+this.Centro_Canto.x()+","+this.Centro_Canto.y()+") tem "+this.Lado+" unidades de lado, "+this.Perimetro()+" unidades de perimetro e "+this.Area()+" unidades de area";
    
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 23 * hash + (int) (Double.doubleToLongBits(this.Lado) ^ (Double.doubleToLongBits(this.Lado) >>> 32));
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
        final A4_EX2_Class_Quadrado other = (A4_EX2_Class_Quadrado) obj;
        if (Double.doubleToLongBits(this.Lado) != Double.doubleToLongBits(other.Lado)) {
            return false;
        }
        if (!Objects.equals(this.Centro_Canto, other.Centro_Canto)) {
            return false;
        }
        return true;
    }

}
