package Aula6_Ex1;

import java.io.Serializable;
import java.util.Objects;
import java.util.TreeMap;

public class Ementa implements Serializable {

    private final String nome;
    private final String local;
    private final TreeMap ementa = new TreeMap();
    private static int count=0;
    ;

    public Ementa(String nome, String local) {
        this.nome = nome;
        this.local = local;
    }

    public String getNome() {
        return nome;
    }

    public String getLocal() {
        return local;
    }

    public TreeMap getEmenta() {
        return ementa;
    }

    public void addPrato(Prato prato, DiaSemana dia) {

        ementa.put(""+dia.ordinal()+"_"+dia+"("+count+")", prato);
        count++;
    }
    
    public void removePrato(String key) {

        ementa.remove(key);
        
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 59 * hash + Objects.hashCode(this.nome);
        hash = 59 * hash + Objects.hashCode(this.local);
        hash = 59 * hash + Objects.hashCode(this.ementa);
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
        final Ementa other = (Ementa) obj;
        if (!Objects.equals(this.nome, other.nome)) {
            return false;
        }
        if (!Objects.equals(this.local, other.local)) {
            return false;
        }
        if (!Objects.equals(this.ementa, other.ementa)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Ementa " + "nome=" + nome + ", local=" + local + " ementa: " + "\n\n"+
                ementa.descendingMap().toString();
    }

}
