package Aula_3;

import java.util.Objects;

public class A3_EX2_Class_Quadrado extends A3_EX2_Class_Figura {
    
    private final double Lado;
    private final A3_EX2_Class_Ponto Cant_Sup_Esq;
         
    public A3_EX2_Class_Quadrado(double X,double Y,double Lado){
    
        this.Lado=Lado;
        this.Cant_Sup_Esq=new A3_EX2_Class_Ponto(X,Y);
        
    }
        
    public A3_EX2_Class_Quadrado(double Lado){
    
        this.Lado=Lado;
        this.Cant_Sup_Esq=new A3_EX2_Class_Ponto(0,0);
        
    }
    
    public A3_EX2_Class_Quadrado(A3_EX2_Class_Quadrado Quadrado){
    
        this.Lado=Quadrado.Lado;
        this.Cant_Sup_Esq=Quadrado.Cant_Sup_Esq;
        
    }
    
    public double Lado(){ return Lado; }
    
    public double Perimetro_Quad(){ return Perimetro(Lado,Lado); }
    
    public double Area_Quad(){ return Area(Lado,Lado); }
    
    
    
    @Override
    public String toString(){
    
    return "O quadrado cuja origem e ("+Cant_Sup_Esq.x()+","+Cant_Sup_Esq.y()+") tem "+this.Lado+" unidades de lado, "+Perimetro_Quad()+" unidades de perimetro e "+Area_Quad()+" unidades de area";
    
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 97 * hash + (int) (Double.doubleToLongBits(this.Lado) ^ (Double.doubleToLongBits(this.Lado) >>> 32));
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
        final A3_EX2_Class_Quadrado other = (A3_EX2_Class_Quadrado) obj;
        if (Double.doubleToLongBits(this.Lado) != Double.doubleToLongBits(other.Lado)) {
            return false;
        }
        return true;
    }

    

}
