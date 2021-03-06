import static java.lang.System.*;
import java.io.*;
import java.util.Scanner;
// import java.util.*;   // => "error: reference to LinkedList is ambiguous"
// java.util.LinkedList colide com p2utils.LinkedList!
import p2utils.*;

public class P71
{
  public static void main(String[] args) throws IOException
  {
    if (args.length != 1) {
      err.printf("Usage: java -ea P71 text-file\n");
      exit(1);
    }
    File fil = new File(args[0]);

    // Criar listas para as linhas curtas, médias e longas.
   LinkedList curta = new LinkedList<String>();
   LinkedList media = new LinkedList<String>();
   LinkedList longa = new LinkedList<String>();

    Scanner sf = new Scanner(fil);
    // exceções poderiam ser intercetadas e mostrar mensagem de erro.
    while (sf.hasNextLine()) {
      String line = sf.nextLine();
      // Guardar linha na lista apropriada.
      if (line.length()<20){
		curta.addLast(line);
	}
	 else if (line.length()>40){
		longa.addLast(line);
	}
	 
	  else{
		media.addLast(line);
	}
	  

	
    }   
    sf.close();

    // Escrever conteúdo das listas...
    out.println("Curtas---|---------|---------|---------|---------");
    curta.print();

    out.println("Médias---|---------|---------|---------|---------");
    media.print();

    out.println("Longas---|---------|---------|---------|---------");
    longa.print();
  }

}
