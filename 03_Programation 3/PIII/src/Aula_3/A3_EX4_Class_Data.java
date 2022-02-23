package Aula_3;

public class A3_EX4_Class_Data {
    
    private final int dia;
    private final int mes; 
    private final int ano;
    
    public A3_EX4_Class_Data (int dia ,int mes ,int ano) {
		
	this.dia=dia;
	this.mes=mes;
	this.ano=ano;
	
    }
	
    public static boolean Mes_Valido (int mes) {
	
	return mes>0 && mes<=12;
	
    }	
	
    public static boolean Dia_Valido (int mes, int dia,int ano) {
		
	int DiasMes[]= {31,28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
		
        if(mes==2 && ano%400==0 || (ano%4==0 && ano%100!=0)) {
				
            DiasMes[1]=29; 
				
        }
			
        return dia>0 && dia<=DiasMes[mes];
	
    }
	
    private String MesExtenso(){
	  
	return this.Mes[(this.mes - 1)];
	
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 29 * hash + this.dia;
        hash = 29 * hash + this.mes;
        hash = 29 * hash + this.ano;
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
        final A3_EX4_Class_Data other = (A3_EX4_Class_Data) obj;
        if (this.dia != other.dia) {
            return false;
        }
        if (this.mes != other.mes) {
            return false;
        }
        if (this.ano != other.ano) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        
        return "" + this.dia + " de " + MesExtenso() + " de " + this.ano;
        
    }
	  
    private final String[] Mes = { "Janeiro", "Fevereiro", "Marco", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro" };

}
