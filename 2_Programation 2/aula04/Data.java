import static java.lang.System.*;

public class Data {

	private int dia;	
	private int mes;	
	private int ano;	


	public Data(int dia,int mes,int ano){	
	
		this.dia=dia;
		this.mes=mes;
		this.ano=ano;
	}	
	
	public int dia(){return dia;}
	
	public int mes(){return mes;}
	
	public int ano(){return ano;}


	public boolean maiorDoQue(Data data){
	
		if((ano==this.ano && mes==this.mes && dia>this.dia) || (ano==this.ano && mes>this.mes) || ano>this.ano)return true;
	
		else return false;
	}

	public boolean igualA(Data data){
		
		if(ano==this.ano && mes==this.mes && dia==this.dia) return true;
		
		else return false;
	}
	
	public boolean menorDoQue(Data data){
		
		if(!maiorDoQue(data) && !igualA(data)) return true;
		else return false;
	}	
		
	public void escreve(){

	 out.printf("%02d-%02d-%04d", this.dia(), this.mes(), this.ano());
	}

}
