package Aula_4;

import Aula_1.A1_EX2_Class_Data;
import Aula_3.A3_EX1_Class_Bolseiro;
import Aula_3.A3_EX1_Class_Estudante;

public class A4_EX1_Main {

    public static void main(String[] args) {
        
        A3_EX1_Class_Estudante est1 = new A3_EX1_Class_Estudante("Andreia", 9855678, new A1_EX2_Class_Data(18, 7, 1974));
        A3_EX1_Class_Estudante est2 = new A3_EX1_Class_Estudante("Monica", 75266454, new A1_EX2_Class_Data(11, 8, 1978));
        A3_EX1_Class_Estudante est3 = new A3_EX1_Class_Estudante("Jose", 85265426, new A1_EX2_Class_Data(15, 2, 1976));
        A3_EX1_Class_Estudante est4 = new A3_EX1_Class_Estudante("Manuel", 85153442, new A1_EX2_Class_Data(1, 3, 1973));

        A3_EX1_Class_Bolseiro bls1 = new A3_EX1_Class_Bolseiro("Maria", 8976543, new A1_EX2_Class_Data(12, 5, 1976));
        A3_EX1_Class_Bolseiro bls2 = new A3_EX1_Class_Bolseiro("Xico", 872356522, new A1_EX2_Class_Data(21, 4, 1975));
        A3_EX1_Class_Bolseiro bls3 = new A3_EX1_Class_Bolseiro("Duarte", 32423512, new A1_EX2_Class_Data(6, 1, 1976));
        
        bls1.set(745);
        bls2.set(845);
        bls3.set(745);
        
        A4_EX1_Class_Professor pf1 = new A4_EX1_Class_Professor(new A1_EX2_Class_Data(25, 07, 2010), "Jose Manuel", 11223344, new A1_EX2_Class_Data(11, 9, 1969));
        
        //data de nasc do professor aparece no resultado esperado mas nao no codigo de teste 
        
        A4_EX1_Class_Disciplina dis = new A4_EX1_Class_Disciplina("P5", "Informatica", 6, pf1);
        
        dis.addAluno(est1);
        dis.addAluno(est2);
        dis.addAluno(bls1);
        
        if (dis.Aluno_Inscrito(est3.N_Mec())){
            
            System.out.println("\n" + est3
            + " \n\t-> ESTÁ inscrito na Disciplina");
            
        }    
        else{
            
            System.out.println("\n" + est3
            + " \n\t-> NÃO ESTÁ inscrito na Disciplina");

        }    
            
        System.out.println("\nNº de Alunos Inscritos: " + dis.numAlunos());

        dis.addAluno(est3);
        dis.addAluno(bls2);
        dis.addAluno(est4);
        dis.addAluno(bls3);
        
        if (!dis.addAluno(bls3)){
            
            System.out.println(bls3.N_Mec()+ ", " + bls3.Nome()
            + " já está inscrito nesta disciplina!");
        
        }
        if (dis.delAluno(bls2.N_Mec())){
            
            System.out.println(bls2.Nome() + " Removido!");
        
        }
        
        System.out.println("\nNº de Alunos Inscritos: " + dis.numAlunos());
        System.out.println(dis + "\n");
        System.out.println("\n Listagem de Estudantes:");
        
        for (A3_EX1_Class_Estudante e : dis.getAlunos()){
        
            System.out.println(e);
        }
        
        System.out.println("\n Listagem de Bolseiros:");
        
        for (A3_EX1_Class_Estudante aluno : dis.getAluno("Bolseiro")) {
            
            System.out.println(aluno);
            
        }        
    }
    
}
