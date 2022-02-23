import p2utils.KeyValueList;
import static java.lang.System.*;
import java.io.*;
import java.util.*;

public class P111 {
	
	static Scanner sc	= new Scanner(System.in);
	
	public static void main (String[] args) throws IOException{
		
		KeyValueList<String> lista = new KeyValueList<String>();	
		String nome,senha,aut;
		
		File fin=new File(args[0]);
		
		Scanner ler=new Scanner(fin);
		
		while(ler.hasNext()){
		
		nome=ler.nextLine();
		senha=ler.nextLine();
		
		lista.set(nome,senha );
	}
		ler.close();
		boolean n =false;
	do{	
	
	try{	
		out.printf("\nLogin : ");
		String Login=sc.nextLine();
		out.printf("Password : ");
		String Pass=sc.nextLine();
		if(lista.contains(Login) && lista.get(Login).equals(Pass)) aut = "sucessfull";
		else aut = "failed";
		out.printf("autentication %s \n \n", aut);
	}
	catch(NoSuchElementException e){
		n=true;}}
	while(!n);
		
	}
}

