package Aula_4;
    
public abstract class Order {
    
    public static void Print_requesitos(Cliente[] usuario){
         
        System.out.printf("Funcionarios: %n"); 
        
        for (Cliente usuario1 : usuario) {
            System.out.printf("%s %n", usuario1.Numero_Socio());
        }
     
    }
    
    public static void Print_user_requesitos(int socio,Requesito[] video){
        
        System.out.printf("Videos requesitados: %n"); 

        for (Requesito video1 : video) {

            if (video1.Usuario().search(socio) != null ) {


                System.out.printf("%s %n", video1.Identificador());

            }

        }
        
    }
    
    public static void Print(Video[] user){
        
        for (Video user1 : user) {
            if (user1 != null) {
                System.out.println(user1.toString());
            }
        }
                        
    }                    
     
    public static void Sort(Requesito[] a){
        
        Requesito b;
                
        for(int i=0;i<a.length;i++){

            for(int k=i;k<a.length;k++){

                b=a[i];

                if (a[k].Raiting()>a[i].Raiting()){
                a[i]=a[k];
                a[k]=b;

                }
            }
        System.out.println(a[i].toString());    
        }
        
    }
    
    
}
