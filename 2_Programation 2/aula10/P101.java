import p2utils.*;
import java.util.Scanner;
import static java.lang.System.*; 
public class P101 {
	
	static Scanner sc =new Scanner(System.in); 
	
	public static void main (String[] args) {
	
  String nome;
  Stack <String> na = new Stack<String>();
  Queue <String> nb = new Queue<String>();
	nome=sc.nextLine();
	String a;

	for (int n=0 ;n<nome.length(); n++){
	a=Integer.toString(nome.charAt(n));

	na.push(a);
	nb.in(a);
}
	if (compare(na,nb)) {out.println("E um palındromos");}
	}	
	 
	
	
	public static boolean compare(Stack na, Queue nb){
	
	
	for (int n=0 ;n<na.size(); n++){
	if(nb.peek()!= na.top()){
	
	return false;
	}
	nb.out();
	na.pop();
}

    return true;
}    
   
}


