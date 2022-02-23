package Aula5_Ex2;

import java.util.Objects;

public class Veiculo implements Policia,Comparable<Veiculo> {
    
    private final String cor;
    private final int rodas;
    private final Tipo tipo;
    private final String  id;
    private final int ano;

    public Veiculo(String cor, int rodas, Tipo tipo, String id,int ano) {
        this.cor = cor;
        this.rodas = rodas;
        this.tipo = tipo;
        this.id = id;
        this.ano=ano;
    }
    
    public String getCor() {
        return cor;
    }

    public int getRodas() {
        return rodas;
    }

        @Override
    public Tipo getTipo() {
        return tipo;
    }

    @Override
    public String getID() {
        return id;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 43 * hash + Objects.hashCode(this.id);
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
        final Veiculo other = (Veiculo) obj;
        if (!Objects.equals(this.id, other.id)) {
            return false;
        }
        return true;
        
    }

    @Override
    public int compareTo(Veiculo f) {
        
        int i = 0;
	
        if(this.ano>f.ano) i=1;
		
        if(this.ano==f.ano) i=0;
		
        if(this.ano<f.ano) i=-1;
		
        return i;
                
    }

    @Override
    public String toString() {
        return " cor=" + cor + ", rodas=" + rodas + ", tipo=" + tipo + ", id=" + id + ", ano=" + ano ;
    }
    
    
    
}
     
