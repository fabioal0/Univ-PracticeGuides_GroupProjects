package Aula_4;
    
import java.util.Objects;

public class Requesito extends Video{
  
    private LinkedList usuario = new LinkedList();
    private         double          raiting_m;
    private         double          raiting=0;

    public Requesito( String Titulo, int Categoria, int Idade) {
        super(Titulo, Categoria, Idade);
    
    }

    public void Requesito(int usuario) {
        
        this.setDisponibilidade("Indisponivel");
        this.usuario.addFirst(usuario ,Identificador());
        
    }

    public void Devolucao(double raiting) {
        
        this.raiting += raiting;
        this.raiting_m=this.raiting/usuario.size();
        this.setDisponibilidade("Disponivel");
        
    }

    public LinkedList Usuario() {
        
        return usuario;
        
    }

    public double Raiting_medio() {
        
        return raiting_m;
        
    }

    public double Raiting() {
        
        return raiting;
        
    }
    
    @Override
    public String toString() {
        
        return super.toString()+" raiting_m= " + raiting_m + ", raiting= " + raiting ;
    
    } 
    
    public void Print_requesitos(){
        
        Object[] user=usuario.print(new Object[usuario.size()]);
         
        System.out.printf("Usuarios: %n"); 
        
        for(int i=0;i<usuario.size();i++){
        
            System.out.printf("%s %n",user[i]); 
        
        }
     
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 37 * hash + Objects.hashCode(this.usuario);
        hash = 37 * hash + (int) (Double.doubleToLongBits(this.raiting_m) ^ (Double.doubleToLongBits(this.raiting_m) >>> 32));
        hash = 37 * hash + (int) (Double.doubleToLongBits(this.raiting) ^ (Double.doubleToLongBits(this.raiting) >>> 32));
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
        final Requesito other = (Requesito) obj;
        if (Double.doubleToLongBits(this.raiting_m) != Double.doubleToLongBits(other.raiting_m)) {
            return false;
        }
        if (Double.doubleToLongBits(this.raiting) != Double.doubleToLongBits(other.raiting)) {
            return false;
        }
        if (!Objects.equals(this.usuario, other.usuario)) {
            return false;
        }
        return (true && super.equals(obj));
    }
    
}
