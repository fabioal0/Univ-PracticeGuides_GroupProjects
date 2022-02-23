package Aula_2;

// nao esta funcional

import java.util.Scanner;
import java.io.*;
import java.util.Arrays;

public class A2_EX2_Main {

    public static void main(String[] args) throws IOException{

        Scanner kb = new Scanner(System.in);

        System.out.print("Ficheiro de entrada: ");
        String nameIn = kb.nextLine();
        File fin = new File(nameIn);

        if (!fin.exists()) {
            System.out.println("ERRO: ficheiro " + nameIn + " não existe!");
            System.exit(2);
        }
        if (fin.isDirectory()) {
            System.out.println("ERRO: ficheiro " + nameIn + " is a directory!");
            System.exit(3);
        }
        if (!fin.canRead()) {
            System.out.println("ERRO: ficheiro " + nameIn+ "não pode ser lido!");
            System.exit(4);
        }
        
        Scanner scf = new Scanner(fin);

        int cont = scf.nextLine().length();
        
        assert cont<=80;
        
        int i=-1;
        String [] letras= new String[cont];
        String [] palavras;
        String auxi=" ";
        String comp="";
        
        while(i<cont-1) {
            
            i++;
            letras[i]=scf.nextLine();
            
            assert letras[i].length()>=2;
            
        }
        
        while(scf.hasNextLine()) {
            
            auxi+=scf.nextLine();
        
        }
      
        A2_EX2_Dados palavra=new A2_EX2_Dados(auxi);
        
        palavras=palavra.Print_Words();

        
        for(int m=0;m<=cont;m++){
        
            for(int k=0;k<cont;k++){
                
                for (int l=1;l<palavras.length;l++){
                     
                    if (letras[m].charAt(k)== palavras[l].charAt(0)){
                    
                        if(m+palavras[l].length()-1<=cont){

                            if(letras[m+palavras[l].charAt(palavras[l].length()-1)].charAt(k)==palavras[l].charAt(palavras[l].length()-1)){

                                for(int n=0;n<palavras[l].length()-1;n++){
                                
                                    comp+=letras[m+n].charAt(k);
                                    
                                    if(comp.equals(palavras[l])){
                                    
                                        palavras[l]=""+comp+"            "+m+","+(m+palavras[l].length())+"         Down";
                                    
                                    }
                               
                                }            
                                        
                            }
                            
                        }
                       
                        if(m-palavras[l].length()-1<=cont){
                        
                            if(letras[m-palavras[l].charAt(palavras[l].length()-1)].charAt(k)==palavras[l].charAt(palavras[l].length()-1)){

                                for(int n=0;n<palavras[l].length()-1;n++){
                                
                                    comp+=letras[m-n].charAt(k);
                                    
                                    if(comp.equals(palavras[l])){
                                    
                                        palavras[l]=""+comp+"            "+m+","+(m-palavras[l].length())+"         Up";
                                    
                                    }
                               
                                }  
                                
                            }
                        
                        }

                        if(k+palavras[l].length()-1<=cont){
                            
                            if(letras[m].charAt(k+palavras[l].charAt(palavras[l].length()-1))==palavras[l].charAt(palavras[l].length()-1)){

                                for(int n=0;n<palavras[l].length()-1;n++){
                                
                                    comp+=letras[m].charAt(k+n);
                                    
                                    if(comp.equals(palavras[l])){
                                    
                                        palavras[l]=""+comp+"            "+k+","+(k+palavras[l].length())+"         Right";
                                    
                                    }
                               
                                }  
                                
                            }
                            
                        }
                        
                        if(k-palavras[l].length()-1<=cont){
                        
                            if(letras[m].charAt(k-palavras[l].charAt(palavras[l].length()-1))==palavras[l].charAt(palavras[l].length()-1)){

                                for(int n=0;n<palavras[l].length()-1;n++){
                                
                                    comp+=letras[m].charAt(k-n-1);
                                    
                                    if(comp.equals(palavras[l])){
                                    
                                        palavras[l]=""+comp+"            "+k+","+(k-palavras[l].length())+"         Left";
                                    
                                    }
                               
                                }  
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
         
        }

        System.out.print(Arrays.toString(palavras));
        
    }
    
}

 
   