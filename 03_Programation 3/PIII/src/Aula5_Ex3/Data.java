package Aula5_Ex3;
import java.util.Arrays;
import java.util.GregorianCalendar;

public class Data {
    
    private final int Dia;
    private final int Mes; 
    private final int Ano;
    
    public Data (int Dia ,int Mes ,int Ano) {
		
	this.Dia=Dia;
	this.Mes=Mes;
	this.Ano=Ano;
	
    }
	
    public static boolean Mes_Valido (int Mes) {
	
	return Mes>0 && Mes<=12;
	
    }	
	
    public static boolean Dia_Valido (int Mes, int Dia,int Ano) {
		
	int DiasMes[]= {31,28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
		
        if(Mes==2 && Ano%400==0 || (Ano%4==0 && Ano%100!=0)) {
				
            DiasMes[1]=29; 
				
        }
			
        return Dia>0 && Dia<=DiasMes[Mes];
	
    }
    
    public static Data Today(){
        
        GregorianCalendar Calendar=new GregorianCalendar();   
        
        Data today = new Data(Calendar.get(GregorianCalendar.DAY_OF_MONTH),Calendar.get(GregorianCalendar.MONTH),Calendar.get(GregorianCalendar.YEAR));
        
        return today;
    
    }
	
    private String MesExtenso(){
	  
	return this.Mes_Ext[(this.Mes - 1)];
	
    }
	
    @Override
    public String toString(){						
	    
        return"" + this.Dia + " de " + MesExtenso() + " de " + this.Ano;
	 
    }
	  
    private final String[] Mes_Ext = { "Janeiro", "Fevereiro", "Marco", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro" };

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 97 * hash + this.Dia;
        hash = 97 * hash + this.Mes;
        hash = 97 * hash + this.Ano;
        hash = 97 * hash + Arrays.deepHashCode(this.Mes_Ext);
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
        final Data other = (Data) obj;
        if (this.Dia != other.Dia) {
            return false;
        }
        if (this.Mes != other.Mes) {
            return false;
        }
        if (this.Ano != other.Ano) {
            return false;
        }
        if (!Arrays.deepEquals(this.Mes_Ext, other.Mes_Ext)) {
            return false;
        }
        return true;
    }
    
}
