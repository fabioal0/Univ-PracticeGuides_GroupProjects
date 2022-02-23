package Aula_3;

import java.util.Objects;

public class A3_EX4_Class_Requesito extends A3_EX4_Class_Video{
  
    private A3_EX4_Class_LinkedList usuario = new A3_EX4_Class_LinkedList();
    private         String          Disponibilidade="Disponivel";
    private         double          raiting_m;
    private         double          raiting=0;

    public A3_EX4_Class_Requesito( String Titulo, int Categoria, int Idade) {
        super(Titulo, Categoria, Idade);
    
    }

    public void Requesito(int usuario) {
        
        this.Disponibilidade="Indisponivel";
        this.usuario.addFirst(usuario, Identificador());
        
    }

    public void Devolucao(double raiting) {
        
        this.raiting += raiting;
        this.raiting_m=this.raiting/usuario.size();
        this.Disponibilidade="Disponivel";
        
    }

    public A3_EX4_Class_LinkedList Usuario() {
        
        return usuario;
        
    }

    public String Disponibilidade() {

        return Disponibilidade;
        
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
        
        KeyValueNode[] user=usuario.print();
         
        System.out.printf("Usuarios: %n"); 
        
        for(int i=0;i<usuario.size();i++){
        
            System.out.printf("%s %n",user[i].Key); 
        
        }
     
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 37 * hash + Objects.hashCode(this.usuario);
        hash = 37 * hash + Objects.hashCode(this.Disponibilidade);
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
        final A3_EX4_Class_Requesito other = (A3_EX4_Class_Requesito) obj;
        if (Double.doubleToLongBits(this.raiting_m) != Double.doubleToLongBits(other.raiting_m)) {
            return false;
        }
        if (Double.doubleToLongBits(this.raiting) != Double.doubleToLongBits(other.raiting)) {
            return false;
        }
        if (!Objects.equals(this.Disponibilidade, other.Disponibilidade)) {
            return false;
        }
        if (!Objects.equals(this.usuario, other.usuario)) {
            return false;
        }
        return (true && super.equals(obj));
    }
    
}
