package Aula_1;

import java.util.Objects;

public class A1_EX2_Class_Pessoa {
    
    private final String Nome;
    private final int CC; 
    private final A1_EX2_Class_Data DataNasc;
	
    public A1_EX2_Class_Pessoa (String Nome ,int CC ,A1_EX2_Class_Data DataNasc) {
																	
	this.Nome=Nome;
	this.CC=CC;													
	this.DataNasc=DataNasc;
	
    }
    
    public static boolean Nome_Valido (String Nome) {

        return Nome!=null;

    } 
    
    public int CC(){
    
        return this.CC;
        
    }
    
    public String Nome(){
    
        return this.Nome;
        
    }
    
    public A1_EX2_Class_Data Data_Nasc(){
    
        return this.DataNasc;
        
    }
     
    
    public void Print_Dados (){
    
        System.out.println("|                   |                   |                                    |");
	System.out.printf ("|      %-10s   |     %09d     |        %-22s      |%n",this.Nome,this.CC,this.DataNasc.DataExtenso());
	System.out.println("|___________________|___________________|____________________________________|");
    
    }
    
    public void Sort_CC(KeyValueNode<A1_EX2_Class_Pessoa>[] Dados){
    
        KeyValueNode<A1_EX2_Class_Pessoa> b;    

        for(int i=0;i<Dados.length;i++){

            for(int m=i;m<Dados.length;m++){
                
                b=Dados[i];
                
                if (Dados[m].Key>Dados[i].Key){

                    Dados[i]=Dados[m];
                    Dados[m]=b;

                }
                
            }

            Dados[i].Elem.Print_Dados();    

        }

    }
    
     public void Sort_Nome(KeyValueNode<A1_EX2_Class_Pessoa>[] Dados){
    
        KeyValueNode<A1_EX2_Class_Pessoa> b;    

        for(int i=0;i<Dados.length;i++){

            for(int m=i;m<Dados.length;m++){

                b=Dados[i];

                if (Dados[m].Elem.Nome.compareTo(Dados[i].Elem.Nome)>0){
                    
                    Dados[i]=Dados[m];
                    Dados[m]=b;

                }
                
            }

            Dados[i].Elem.Print_Dados();    

        }

    }
    @Override
    public String toString(){
   
        return ""+this.Nome+", Cartao de cidadao: "+this.CC+", Data Nascimento :"+this.DataNasc.DataExtenso();
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 29 * hash + Objects.hashCode(this.Nome);
        hash = 29 * hash + this.CC;
        hash = 29 * hash + Objects.hashCode(this.DataNasc);
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
        final A1_EX2_Class_Pessoa other = (A1_EX2_Class_Pessoa) obj;
        if (!Objects.equals(this.Nome, other.Nome)) {
            return false;
        }
        if (!Objects.equals(this.DataNasc, other.DataNasc)) {
            return false;
        }
        return true;
    }
    
}
