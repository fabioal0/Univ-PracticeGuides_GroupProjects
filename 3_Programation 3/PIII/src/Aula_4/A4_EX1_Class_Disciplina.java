package Aula_4;

import Aula_3.A3_EX1_Class_Estudante;
import static java.util.Arrays.copyOfRange;

public class A4_EX1_Class_Disciplina {

    private final String Nome_Dis;
    private final String Area_Cient;
    private final int ECTS;
    private final A4_EX1_Class_Professor Responsavel;
    private A3_EX1_Class_Estudante[] Aluno=new A3_EX1_Class_Estudante[10];

    public A4_EX1_Class_Disciplina(String Nome_Dis, String Area_Cient, int ECTS, A4_EX1_Class_Professor Responsavel) {
        this.Nome_Dis = Nome_Dis;
        this.Area_Cient = Area_Cient;
        this.ECTS = ECTS;
        this.Responsavel = Responsavel;
    
    }

    public String Nome_Dis() {
        return Nome_Dis;
    }

    public String Area_Cient() {
        return Area_Cient;
    }

    public int ECTS() {
        return ECTS;
    }

    public A4_EX1_Class_Professor Responsavel() {
        return Responsavel;
    }

    public A3_EX1_Class_Estudante[] getAlun() {
        return Aluno;
    }

    public boolean addAluno(A3_EX1_Class_Estudante Aluno) {
       
        boolean exist=false;
        int i=-1;
        
        for(int k=0;k<this.Aluno.length;k++){
        
            if(Aluno==this.Aluno[k]){
                
                exist=true;
                
            }
            
            if(this.Aluno[k]==null && i==-1){
                
                i=k;
                
            }
            
        }
        
        if(i==this.Aluno.length-1){
        
            this.Aluno=copyOfRange(this.Aluno,0,this.Aluno.length+10);
        
        }
        
        if(exist==false){
        
            this.Aluno[i] = Aluno;
        
            return true;
            
        }
        
        return false;
        
    }
    
    public boolean delAluno (int Num_Mec){
    
        for(int k=0;k<this.Aluno.length;k++){

            if(this.Aluno[k]!=null){
            
                if(Num_Mec==this.Aluno[k].N_Mec() ){

                    this.Aluno[k]=null;

                    return true;

                }

            } 
                
        }
   
        return false;
   
    }
    
    public boolean Aluno_Inscrito(int Num_Mec){
    
        for (A3_EX1_Class_Estudante Aluno1 : this.Aluno) {
            if (Aluno1 != null) {
                if (Num_Mec == Aluno1.N_Mec()) {
                    return true;
                }
            }
        }
   
        return false;
    
    }
    
    public int numAlunos(){
        
        int count=0;
        
        for (A3_EX1_Class_Estudante Aluno1 : this.Aluno) {
            if (Aluno1 != null) {
            
                count++;
            }
        }
   
        return count;
    
    }
    
    public A3_EX1_Class_Estudante[] getAluno(String Tipo){
    
        A3_EX1_Class_Estudante[] aux=new A3_EX1_Class_Estudante[Aluno.length];
        int i=0;
        for (A3_EX1_Class_Estudante Aluno1 : this.Aluno) {
            if (Aluno1 != null) {
                if (Tipo.equals(Aluno1.Tipo())) {
                    aux[i] = Aluno1;
                    i++;
                }
            }
        }
        
        A3_EX1_Class_Estudante[] aux2=copyOfRange(aux,0,i);
   
        return aux2;
    
    }
    
    public A3_EX1_Class_Estudante[] getAlunos(){
   
        int i=0;
        A3_EX1_Class_Estudante[] aux=new A3_EX1_Class_Estudante[Aluno.length];
        
        for (A3_EX1_Class_Estudante Aluno1 : this.Aluno) {
            if (Aluno1 != null) {
                aux[i] = Aluno1;
                i++;
            }
        }
        
        A3_EX1_Class_Estudante[] aux2=copyOfRange(aux,0,i);
        
        return aux2;
    
    }

    @Override
    public String toString() {
        return "Disciplina: " + Nome_Dis + " ( "+ ECTS+" ECTS) da area de " + Area_Cient+" Responsavel: "+ this.Responsavel.toString() ;
    }
        
    

}
