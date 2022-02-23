package Aula_3;

import java.util.Objects;

public class A3_EX2_Class_Circulo extends A3_EX2_Class_Figura{
    
    public static final double PI = Math.PI;
    private final A3_EX2_Class_Ponto Centro;
    private final double Raio;
    
    public A3_EX2_Class_Circulo(double x, double y, double Raio ){
    
        this.Centro=new A3_EX2_Class_Ponto(x,y);
        this.Raio=Raio;
    
    }
       
    public A3_EX2_Class_Circulo(double Raio ){
    
        this.Centro=new A3_EX2_Class_Ponto(0,0);
        this.Raio=Raio;

    }
    
    public A3_EX2_Class_Circulo(A3_EX2_Class_Circulo Circulo ){
    
        this.Centro=Circulo.Centro;
        this.Raio=Circulo.Raio;

    }
    
    public double Raio(){ return Raio; }
    
    public A3_EX2_Class_Ponto Centro(){ return Centro; }
    
    public double Perimetro_Circ(){ return Perimetro((PI*Raio)/2,(PI*Raio)/2); }
    
    public double Area_Circ(){ return Area(PI*Raio,Raio); }                                     //diferente para nao usar sqt de PI;
    
    
    
    
    public boolean Intreecao(A3_EX2_Class_Circulo Circulo){ 
        
        return this.Raio+Circulo.Raio()>=Math.sqrt(Math.abs(Math.pow(Circulo.Centro().x()-this.Centro().x(), 2)+Math.abs(Math.pow(Circulo.Centro().y()-this.Centro().y(), 2))));
        
    }
    
    
    @Override
    public String toString(){
    
    return "O circulo cuja origem e ("+Centro.x()+","+Centro.y()+") tem "+this.Raio+" unidades de raio, "+Perimetro_Circ()+" unidades de perimetro e "+Area_Circ()+" unidades de area";
    
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 29 * hash + Objects.hashCode(this.Centro);
        hash = 29 * hash + (int) (Double.doubleToLongBits(this.Raio) ^ (Double.doubleToLongBits(this.Raio) >>> 32));
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
        final A3_EX2_Class_Circulo other = (A3_EX2_Class_Circulo) obj;
        if (Double.doubleToLongBits(this.Raio) != Double.doubleToLongBits(other.Raio)) {
            return false;
        }
        if (!Objects.equals(this.Centro, other.Centro)) {
            return false;
        }
        return true;
    }

}
