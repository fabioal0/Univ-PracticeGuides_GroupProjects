package Aula_3;

import java.util.Objects;

public class A3_EX2_Class_Rectangulo extends A3_EX2_Class_Figura{
    
    private final double Largura;
    private final double Comprimento;
    private final A3_EX2_Class_Ponto Cant_Sup_Esq;
    
    public A3_EX2_Class_Rectangulo(double X, double Y, double Largura,double Comprimento){
    
        this.Largura=Largura;
        this.Comprimento=Comprimento;
        this.Cant_Sup_Esq=new A3_EX2_Class_Ponto(X,Y);
        
    }
    
    public A3_EX2_Class_Rectangulo(double Largura,double Comprimento){
    
        this.Largura=Largura;
        this.Comprimento=Comprimento;
        this.Cant_Sup_Esq=new A3_EX2_Class_Ponto(0,0);
    }
        
    public A3_EX2_Class_Rectangulo(A3_EX2_Class_Rectangulo Rectangulo){
    
        this.Largura=Rectangulo.Largura;
        this.Comprimento=Rectangulo.Comprimento;
        this.Cant_Sup_Esq=Rectangulo.Cant_Sup_Esq;
    }    
    
    public double Largura(){ return Largura; }
    
    public double Comprimento(){ return Comprimento; }
    
    public double Perimetro_rect(){ return Perimetro(Comprimento,Largura); }
    
    public double Area_rect(){ return Area(Comprimento,Largura); }
    
    
    
    @Override
    public String toString(){
    
    return "O rectangulo cuja origem e ("+Cant_Sup_Esq.x()+","+Cant_Sup_Esq.y()+") tem "+this.Largura+" unidades de largura, "+this.Comprimento+" unidades de comprimento "+Perimetro_rect()+" unidades de perimetro e "+Area_rect()+" unidades de area";
    
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 37 * hash + (int) (Double.doubleToLongBits(this.Largura) ^ (Double.doubleToLongBits(this.Largura) >>> 32));
        hash = 37 * hash + (int) (Double.doubleToLongBits(this.Comprimento) ^ (Double.doubleToLongBits(this.Comprimento) >>> 32));
        hash = 37 * hash + Objects.hashCode(this.Cant_Sup_Esq);
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
        final A3_EX2_Class_Rectangulo other = (A3_EX2_Class_Rectangulo) obj;
        if (Double.doubleToLongBits(this.Largura) != Double.doubleToLongBits(other.Largura)) {
            return false;
        }
        if (Double.doubleToLongBits(this.Comprimento) != Double.doubleToLongBits(other.Comprimento)) {
            return false;
        }
        if (!Objects.equals(this.Cant_Sup_Esq, other.Cant_Sup_Esq)) {
            return false;
        }
        return true;
    }

}
