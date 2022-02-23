package Aula_1;

public class A1_EX3_Class_Ponto {
 
    private final double x;
    private final double y;
    
    public A1_EX3_Class_Ponto(double x, double y){
    
        this.x=x;
        this.y=y;
    
    }    
    
    public double x(){return this.x;}
    
    public double y(){return this.y;}


    @Override
    public String toString(){
    
    return "Coordenada x: "+x()+" Coordenada y: "+y();
    }
    
}
