package Aula_1;


public class A1_EX1_Class_Dados {
    
    private final String frase;

    A1_EX1_Class_Dados(String frase) {
    
        this.frase=frase;
    
    }
    
    public void Numeros_Total (){
    
        int count=0;
        
        for(int i=0;i<frase.length();i++){
            
            if(frase.charAt(i)>='0' && frase.charAt(i)<='9'){
               
                count++;
            
            }
            
        }
        
        System.out.printf("A frase tem %d Numeros %n%n",count);
        
    }
    
    public void So_Minusculas(){
            
        if(frase.equals(frase.toLowerCase())){
                  
            System.out.printf("A frase so tem minusculas %n%n");
        
        }
        
        else{
    
            System.out.printf("A frase nao tem so minusculas %n%n");    
            
        }    
    }    
    
    public void So_Maiusculas(){
            
        if(frase.equals(frase.toUpperCase())){
                  
            System.out.printf("A frase so tem maiusculas %n%n");
        
        }
        
        else{
    
            System.out.printf("A frase nao tem so maiusculas %n%n");    
            
        }    
    }    
    
    public void Print_Words(){
        
        String []palavras=frase.split(" ");
        String aux="";
        
        for(int i=0;i<palavras.length;i++){
                aux="";
            for(int k=0;k<palavras[i].length();k++){
                
                if((palavras[i].charAt(k)>='A' && palavras[i].charAt(k)<='Z') || (palavras[i].charAt(k)>='a' && palavras[i].charAt(k)<='z') ){
                
                aux+=""+palavras[i].charAt(k);
                    
                } 
        
            }
            
            palavras[i]=aux;
            
        }    
        
        for (String palavra : palavras) {
            
            if(palavras!=null){
            
                System.out.println(palavra);
            
            }
            
        }
    
    } 
    
    public void Troca_Letras(){
    
        String aux="";
        
        for(int i=0;i<frase.length()-1;i++){

            aux+=""+frase.charAt(i+1)+frase.charAt(i);
            i++;
                    
        }
        
        System.out.println(aux);
        
    }
        
}
