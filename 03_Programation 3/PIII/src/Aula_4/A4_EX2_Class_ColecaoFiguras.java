package Aula_4;

import Aula_3.A3_EX2_Class_Ponto;
import java.util.Arrays;
import static java.util.Arrays.copyOfRange;


public class A4_EX2_Class_ColecaoFiguras {
    
    private final double ColecaoFiguras;
    private A4_EX2_Class_Figura[] Figura=new A4_EX2_Class_Figura[10];

    public A4_EX2_Class_ColecaoFiguras(double ColecaoFiguras) {
        
        this.ColecaoFiguras = ColecaoFiguras;
        
    }
    
    public boolean addFigura(A4_EX2_Class_Figura f){
    
         boolean exist=false;
        int i=-1;
        
        for(int k=0;k<this.Figura.length;k++){
        
            if(f.equals(this.Figura[k])){
                
                exist=true;
                
            }
            
            if(this.Figura[k]==null && i==-1){
                
                i=k;
                
            }
            
        }
        
        if(i==this.Figura.length-1){
        
            this.Figura=copyOfRange(this.Figura,0,this.Figura.length+10);
        
        }
        
        if(exist==false){
        
            this.Figura[i] = f;
        
            return true;
            
        }
        
        return false;
        
    }
    
    public boolean delFigura(A4_EX2_Class_Figura f){
   
         for(int k=0;k<this.Figura.length;k++){

            if(this.Figura[k]!=null){
            
                if(f==this.Figura[k]){

                    this.Figura[k]=null;

                    return true;

                }

            } 
                
        }

        return false;
    
    }
    
    public double areaTotal(){
        
        double area=0;
        
        for (A4_EX2_Class_Figura Figura1 : Figura) {
          
            if(Figura1!=null){
                
            area += Figura1.Area();
            
            }
        
        }
        
        return area;
    }
    
    public boolean exists(A4_EX2_Class_Figura f){
        
        for (A4_EX2_Class_Figura Figura1 : this.Figura) {
           
            if (f == Figura1) {
                
                return true;
                
            }
            
        }
        
        return false;
        
    }
    
    public A4_EX2_Class_Figura[] getFiguras(){
        
        int i=0;
        
        A4_EX2_Class_Figura[] aux=new A4_EX2_Class_Figura[Figura.length];
        
        for (A4_EX2_Class_Figura Aluno1 : this.Figura) {
            if (Aluno1 != null) {
                aux[i] = Aluno1;
                i++;
            }
        }
        
        A4_EX2_Class_Figura[] aux2=copyOfRange(aux,0,i);
        
        return aux2;
        
    }
    
    public A3_EX2_Class_Ponto[] getCentros(){
        
        A3_EX2_Class_Ponto[] aux=new A3_EX2_Class_Ponto[Figura.length];
        int i=0;
        int k=0;
        
        for (A4_EX2_Class_Figura Figura1 : this.Figura) {
            if (Figura1 != null) {
                aux[k] = Figura1.Centro_Canto;
                k++;
                i++;
            }
        }
        
        A3_EX2_Class_Ponto[] aux2=copyOfRange(aux,0,i);
   
        return aux2;
    
        
    }
    
    @Override
    public String toString(){
    
        return ""+this.ColecaoFiguras;
        
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 19 * hash + (int) (Double.doubleToLongBits(this.ColecaoFiguras) ^ (Double.doubleToLongBits(this.ColecaoFiguras) >>> 32));
        hash = 19 * hash + Arrays.deepHashCode(this.Figura);
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
        final A4_EX2_Class_ColecaoFiguras other = (A4_EX2_Class_ColecaoFiguras) obj;
        if (Double.doubleToLongBits(this.ColecaoFiguras) != Double.doubleToLongBits(other.ColecaoFiguras)) {
            return false;
        }
        if (!Arrays.deepEquals(this.Figura, other.Figura)) {
            return false;
        }
        return true;
    }
   
}
