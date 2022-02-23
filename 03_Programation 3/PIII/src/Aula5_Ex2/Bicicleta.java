package Aula5_Ex2;

public class Bicicleta extends Veiculo {

    public Bicicleta(Tipo tipo, String id, String cor, int rodas,int ano) {
        super(cor, rodas, tipo, id, ano);
        
    }

    @Override
    public String toString() {
        return "Bicicleta "+super.toString();
    }
   
}
