package Aula6_Ex1;

public class PratoVegetariano extends Prato {

    public PratoVegetariano(String nome) {
        super(nome);
    }

    @Override
    public boolean addIngrediente(Alimento alimento) {
        
        if(alimento instanceof Vegetariano){
            
            return super.addIngrediente(alimento); 
        
        }
        
        else{
        
            return false;
        
        }
        
    }

    @Override
    public String toString() {
        return "\n (Vegetariano)"+super.toString(); 
    }

}
