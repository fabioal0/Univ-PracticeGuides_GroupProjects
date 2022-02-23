package Aula_3;

import java.util.Objects;

public class A3_EX4_Class_Video {
    
    private final   String[] Categoria_Filme = { "Acao", "Camedia", "Infantil", "Drama", "Ficcao Cientifica", "Terror", "Suspanse", "Guerra", "Documentario", "Aventura", "Musical"};
    private final   String[] Idade_Minima = { "(ALL Ages)", "(M6)", "(M12)", "(M16)", "(M18)"};
    private final   String   Titulo;
    private final   String   Categoria;
    private final   String   Idade;
    private final   int      Identificador;  
    public static   int      count=0;        

    
    public A3_EX4_Class_Video(String Titulo, int Categoria, int Idade){
    
        this.Titulo=Titulo;
        this.Idade=Idade_Minima[Idade];
        this.Categoria=Categoria_Filme[Categoria];
        count++;
        this.Identificador=this.count;

    }

    public String Titulo() {
        
        return Titulo;
        
    }

    public String Categoria() {
        
        return Categoria;
        
    }

    public String Idade() {
        
        return Idade;
        
    }

    public int Identificador() {
        
        return Identificador;
        
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 83 * hash + Objects.hashCode(this.Titulo);
        hash = 83 * hash + Objects.hashCode(this.Categoria);
        hash = 83 * hash + Objects.hashCode(this.Idade);
        hash = 83 * hash + this.Identificador;
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
        final A3_EX4_Class_Video other = (A3_EX4_Class_Video) obj;
        if (this.Identificador != other.Identificador) {
            return false;
        }
        if (!Objects.equals(this.Titulo, other.Titulo)) {
            return false;
        }
        if (!Objects.equals(this.Categoria, other.Categoria)) {
            return false;
        }
        if (!Objects.equals(this.Idade, other.Idade)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        
        return " Identificador= " + this.Identificador + ", Titulo= " + this.Titulo + ", Categoria=" + this.Categoria + ", Idade= " + this.Idade ;
   
    }
    
}
