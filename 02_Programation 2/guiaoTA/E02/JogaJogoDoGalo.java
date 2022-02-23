import static java.lang.System.*;
import java.util.Scanner;
import jogos.*;
    
public class JogaJogoDoGalo {
  public static void main(String[] args) {
    Scanner sin = new Scanner(in);
    char jogador1 = 'X';
    char jogador2 = 'O';
    
    int lin, col,a=0,b=0,c=0,d=0;
     do{ 
	JogoDoGalo jogo = new JogoDoGalo(jogador1, jogador2);
    jogo.mostraTabuleiro();
    while (!jogo.terminado()) {
      out.print("(lin col): ");
     
      do{
      lin = sin.nextInt();
      col = sin.nextInt();
	}while (lin<1|| lin>3 ||col<1 ||col>3);
      
      jogo.jogada(lin, col);
      jogo.mostraTabuleiro();
    }
    out.println();
    if (jogo.ultimoJogadorGanhou()){
		a++;
		b++;
      out.println("Jogador "+jogo.ultimoJogador()+" ganhou!");
	if(jogador1==jogo.ultimoJogador()){
		c++;
		out.println("X:"+c+"  O:"+d);
	}
	else{
		d++;
		out.println("X:"+c+"  O:"+d);
	}
	}	
    else{
		b++;
      out.println("Jogo empatado!");
      out.println("X:"+c+"  O:"+d);
     }}while(a!=3 && b!=10); 
  }
}
