package Aula5_Ex1;

import java.util.Objects;

public class Rectangulo extends Figura{
   
    private final double Largura;
    private final double Comprimento;

    
    public Rectangulo(double X, double Y, double Comprimento,double Largura){
    
        this.Largura=Largura;
        this.Comprimento=Comprimento;
        this.Centro_Canto=new Ponto(X,Y);
        
    }
    
    public Rectangulo(double Comprimento,double Largura){
    
        this.Largura=Largura;
        this.Comprimento=Comprimento;
        this.Centro_Canto=new Ponto(0,0);
    }
        
    public Rectangulo(Rectangulo Rectangulo){
    
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
    
    return "O rectangulo cuja origem e "+this.Centro_Canto.toString()+" tem "+this.Largura+" unidades de largura, "+this.Comprimento+" unidades de comprimento";
    
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
        final Rectangulo other = (Rectangulo) obj;
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
