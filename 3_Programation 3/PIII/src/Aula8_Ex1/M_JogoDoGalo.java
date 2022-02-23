package Aula8_Ex1;

import java.io.IOException;
import javax.swing.*;

public class M_JogoDoGalo {
    
    protected static JFrame frame;
    
    public  M_JogoDoGalo(JComponent content){
      
        //##################  Janela  ##########################################
        
        frame = new JFrame("Jogo do Galo");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(600, 600);
        frame.revalidate();
        frame.setContentPane(content);
        frame.setVisible(true);
           
       //####################################################################### 
       
    }
    
     public static void main(String[] args) throws IOException {
 
         G_Jogo.menu();
         
        new M_JogoDoGalo(G_Jogo.content);

    }
}
