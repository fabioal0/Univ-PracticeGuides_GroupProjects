
package Aula_3;

public abstract class A3_EX4_Class_Order {
    
    public static void Print_requesitos_E(KeyValueNode[] usuario){
         
        System.out.printf("Estudantes: %n"); 
        
        for (KeyValueNode usuario1 : usuario) {
            System.out.printf("%s %n", usuario1.Elem.toString());
        }
     
    }
    
    public static void Print_requesitos_F(KeyValueNode[] usuario){
         
        System.out.printf("Funcionarios: %n"); 
        
        for (KeyValueNode usuario1 : usuario) {
            System.out.printf("%s %n", usuario1.Elem.toString());
        }
     
    }
    
    public static void Print_user_requesitos(int socio,KeyValueNode<A3_EX4_Class_Requesito>[] video){
        
        int a=0; 
        System.out.printf("Videos requesitados: %n"); 
        
        for (KeyValueNode<A3_EX4_Class_Requesito> video1 : video) {
            
            KeyValueNode<A3_EX4_Class_Requesito>[] user = video1.Elem.Usuario().print();
            a=0;
            for (KeyValueNode<A3_EX4_Class_Requesito> user1 : user) {
                
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
     
    public static void Sort(KeyValueNode<A3_EX4_Class_Requesito>[] a){
        
        KeyValueNode <A3_EX4_Class_Requesito> b;
                
        for(int i=0;i<a.length;i++){

            for(int k=i;k<a.length;k++){

                b=a[i];

                if (a[k].Elem.Raiting()>a[i].Elem.Raiting()){
                a[i]=a[k];
                a[k]=b;

                }
            }
        System.out.println(a[i].Elem.toString());    
        }
        
    }
    
}
