package Aula6_Ex1;

public class PratoDieta extends Prato {

    private final double max_calorias;

    public PratoDieta(String nome, double max_calorias) {
        super(nome);

        this.max_calorias = max_calorias;

    }

    public double getMax_calorias() {
        return max_calorias;
    }

    @Override
    public boolean addIngrediente(Alimento alimento) {
        if (super.CaloriasTotal()+alimento.getCalorias() <= max_calorias) {
            
            return super.addIngrediente(alimento);
        } else {
            return false;
        }
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 41 * hash + (int) (Double.doubleToLongBits(this.max_calorias) ^ (Double.doubleToLongBits(this.max_calorias) >>> 32));
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
        final PratoDieta other = (PratoDieta) obj;
        if (Double.doubleToLongBits(this.max_calorias) != Double.doubleToLongBits(other.max_calorias)) {
            return false;
        }
        return super.equals(obj);
    }

    @Override
    public String toString() {
        return "\n (Dieta)"+ "\n maximo calorias= " + this.max_calorias + super.toString() ;
    }

}
