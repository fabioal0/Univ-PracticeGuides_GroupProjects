package Aula5_Ex1;

    import java.util.Objects;

public class Quadrado extends Figura{
    
    private final double Lado;

    public Quadrado(double X,double Y,double Lado){
    
        this.Lado=Lado;
        this.Centro_Canto=new Ponto(X,Y);
        
    }
        
    public Quadrado(double Lado){
    
        this.Lado=Lado;
        this.Centro_Canto=new Ponto(0,0);
        
    }
    
    public Quadrado(Quadrado Quadrado){
    
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
    
    return "O quadrado cuja origem e "+this.Centro_Canto.toString()+" tem "+this.Lado+" unidades de lado";
    
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
        final Quadrado other = (Quadrado) obj;
        if (Double.doubleToLongBits(this.Lado) != Double.doubleToLongBits(other.Lado)) {
            return false;
        }
        if (!Objects.equals(this.Centro_Canto, other.Centro_Canto)) {
            return false;
        }
        return true;
    }

    
}
