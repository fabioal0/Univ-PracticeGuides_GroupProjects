package Aula_2;

import java.util.Objects;

public class A2_EX1_Class_Requesito extends A2_EX1_Class_Video{
    
    private A2_EX1_Class_LinkedList usuario = new A2_EX1_Class_LinkedList();
    private         String          Disponibilidade="Disponivel";
    private         double          raiting_m;
    private         double          raiting=0;

    public A2_EX1_Class_Requesito( String Titulo, int Categoria, int Idade) {
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

    public A2_EX1_Class_LinkedList Usuario() {
        
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
    
    public static void Print_user_requesitos(int socio,KeyValueNode<A2_EX1_Class_Requesito>[] video){
        
        int a=0; 
        System.out.printf("Videos requesitados: %n"); 
        
        for (KeyValueNode<A2_EX1_Class_Requesito> video1 : video) {
            
            KeyValueNode<A2_EX1_Class_Requesito>[] user = video1.Elem.usuario.print();
            a=0;
            for (KeyValueNode<A2_EX1_Class_Requesito> user1 : user) {
                
                if (user1.Key == socio && a!=1) {
                    
                    a=1;
                    System.out.printf("%s %n", user1.Elem);
                    
                }
                
            }
            
        }    
        
    }
    
    public static void Print(KeyValueNode[] user){
        
        for (KeyValueNode user1 : user) {
            if (user1 != null) {
                System.out.println(user1.Elem.toString());
            }
        }
                        
    }                    
     
    public static void Sort(KeyValueNode<A2_EX1_Class_Requesito>[] a){
        
        KeyValueNode <A2_EX1_Class_Requesito> b;
                
        for(int i=0;i<a.length;i++){

            for(int k=i;k<a.length;k++){

                b=a[i];

                if (a[k].Elem.raiting>a[i].Elem.raiting){
                a[i]=a[k];
                a[k]=b;

                }
            }
        System.out.println(a[i].Elem.toString());    
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
        final A2_EX1_Class_Requesito other = (A2_EX1_Class_Requesito) obj;
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
