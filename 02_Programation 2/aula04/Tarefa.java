import static java.lang.System.*;

public class  Tarefa {

	private Data inicio;
	private Data fim;
	private String texto;


	public Tarefa (Data inicio,Data fim,String texto){
	
		this.inicio=inicio;
		this.fim=fim;
		this.texto=texto;
	}


	public Data inicio(){return this.inicio;}

	public Data fim(){return this.fim;}

	public String texto(){return this.texto;}
		
	
	public void escreve(){
		
		inicio.escreve();
		out.print("<->");
		fim.escreve();
		out.print(" ");
		out.println(this.texto());
		
	}

}
