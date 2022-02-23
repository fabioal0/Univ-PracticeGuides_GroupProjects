package Aula5_Ex2;

import java.util.Scanner;
import static Aula5_Ex1.UtilCompare.sortArray;
import static java.util.Arrays.copyOfRange;
public class Main {

    public static void main(String[] args) {
       
        Scanner Sc =new Scanner(System.in);
        
        Veiculo []lista=new Veiculo[0];
        int Switch=0, Switch1;
        int count=0;
        double consumo,combustivel;
        int potencia, ano, cilindrada, rodas;
        String matricula ,cor, id;  
        Tipo tipo=null;
        
        while (Switch!=5){
        System.out.println("1-moto");
        System.out.println("2-automovel");
        System.out.println("3-bicicleta");
        System.out.println("4-sort");
        System.out.println("Pretende criar um veiculo de que tipo");
            Switch=Sc.nextInt();
            
            if(Switch!=4){    
        System.out.println("O veiculo é do: INEM (1), Bombeiros(2), GNR(3), PSP(4), PJ(5)");    
            Switch1=Sc.nextInt();

        switch (Switch1)   {
            
            case 1: tipo=Tipo.INEM;      break; 
            case 2: tipo=Tipo.Bombeiros; break;  
            case 3: tipo=Tipo.GNR;       break; 
            case 4: tipo=Tipo.PSP;       break; 
            case 5: tipo=Tipo.PJ;        break; 
            
        }
        
            }
        switch(Switch){
            
   
            case 1:
                
                System.out.println("consumo:");
                    consumo=Sc.nextDouble();
                    
                System.out.println("potencia:");
                    potencia=Sc.nextInt();    
                    
                System.out.println("combustivel:");
                    combustivel=Sc.nextDouble(); 
                    
                System.out.println("ano:");
                    ano=Sc.nextInt();    
                    
                System.out.println("matricula:");
                    matricula=Sc.next();         
                    
                System.out.println("cilindrada:");
                    cilindrada=Sc.nextInt();         
                    
                System.out.println("cor:");
                    cor=Sc.next();       
                    
                System.out.println("numero de rodas:");
                    rodas=Sc.nextInt();    

                System.out.println("Identificador:");
                    id=Sc.nextLine();                                                      
                
                lista=copyOfRange(lista,0,lista.length+1);
                    
                Veiculo moto=new Moto(consumo, potencia, combustivel, ano, matricula, cilindrada, cor, rodas, tipo, id);
                lista[count]=moto;
                count++;
        
                break;
                
                case 2:
                
                System.out.println("consumo:");
                    consumo=Sc.nextDouble();
                    
                System.out.println("potencia:");
                    potencia=Sc.nextInt();    
                    
                System.out.println("combustivel:");
                    combustivel=Sc.nextDouble(); 
                    
                System.out.println("ano:");
                    ano=Sc.nextInt();    
                    
                System.out.println("matricula:");
                    matricula=Sc.next();         
                    
                System.out.println("cilindrada:");
                    cilindrada=Sc.nextInt();         
                    
                System.out.println("cor:");
                    cor=Sc.next();       
                    
                System.out.println("numero de rodas:");
                    rodas=Sc.nextInt();    

                System.out.println("Identificador:");
                    id=Sc.nextLine();                                                      
                
                lista=copyOfRange(lista,0,lista.length+1);    
                    
                Veiculo automovel=new Automovel(consumo, potencia, combustivel, ano, matricula, cilindrada, cor, rodas, tipo, id);
                lista[count]=automovel;
                count++;
                
                break;
                
                case 3:

                System.out.println("cor:");
                    cor=Sc.next();       
                    
                System.out.println("numero de rodas:");
                    rodas=Sc.nextInt();    

                System.out.println("Identificador:");
                    id=Sc.nextLine();                                                       
                    
                System.out.println("ano:");
                    ano=Sc.nextInt();       
                    
                lista=copyOfRange(lista,0,lista.length+1);    
                    
                Veiculo bicicleta=new Bicicleta ( tipo, id, cor, rodas,ano);
                lista[count]=bicicleta;
                count++;
                
                break;
                
                case 4:
                    
                    sortArray((Comparable<Veiculo>[]) lista);
                    
                    for (Veiculo lista1 : lista) {
                        
                        System.out.println(lista1);
                    }
                    
                break;        
                
             
            }
                
        }
        
    }
    
}
