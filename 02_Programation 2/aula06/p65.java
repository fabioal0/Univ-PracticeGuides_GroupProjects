import java.util.*;
import java.io.*;
import static java.lang.System.*;

public class p65 {
	
	public static void main (String[] args) throws IOException{
	
	
	File um = new File(args[0]);
	File[] dois = um.listFiles();
	out.println(um.listFiles());
	//~ out.println(um.getPath());
	int n=1;
	while(n>dois.length){
	
	out.print(dois[n]);
	n++;
}
	
}
		
	}


