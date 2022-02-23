package Aula_2;


public class A2_EX2_Dados {
    
    private final String frase;

    A2_EX2_Dados(String frase) {
    
        this.frase=frase;
    
    }   
    
    public String[] Print_Words(){
        
        String []palavras=frase.split(" ");
        String aux="";
        
        for(int i=0;i<palavras.length;i++){
                aux="";
            for(int k=0;k<palavras[i].length();k++){
                
                if((palavras[i].charAt(k)>='A' && palavras[i].charAt(k)<='Z') || (palavras[i].charAt(k)>='a' && palavras[i].charAt(k)<='z') ){
                
                aux+=""+palavras[i].charAt(k);
                    
                } 
        
            }
            
            palavras[i]=aux.toUpperCase();
            
        }    
        
        return palavras;
        
    } 
      
}
