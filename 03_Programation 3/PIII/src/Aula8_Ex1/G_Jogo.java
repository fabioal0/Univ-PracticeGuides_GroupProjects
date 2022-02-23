package Aula8_Ex1;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.DisplayMode;
import java.awt.Font;
import java.awt.GraphicsEnvironment;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Window;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import javax.imageio.ImageIO;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JComponent;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.SwingConstants;

public class G_Jogo {
    
    protected static JComponent content;
    private static JComponent subcontent;
    private static GridBagLayout order;
    private static JLabel title;
    
    public G_Jogo() {

    }
    
    public static void menu() throws IOException{

    //####################  Variaveis nao partilhadas  #########################    
        
        JButton Button;
            
    //########################  Base pag inicial  ##############################

    content = new JPanel();
    content.setBackground(Color.BLACK);
    BufferedImage menu=ImageIO.read(new File("./src/Aula8_Ex1/Jogo do Galo/menu.jpg"));
    content.setLayout(new BorderLayout());
    content.paint(menu.getGraphics());
   
    //######################  Titulo pag inicial  ##############################

    title=new JLabel("Jogo do Galo");
    title.setFont(new Font("title",Font.CENTER_BASELINE,78));
    title.setHorizontalAlignment(SwingConstants.CENTER);
    title.setForeground(Color.RED);
    content.add(title,BorderLayout.NORTH);

    //####################  Conteudo pag inicial  ##############################

    //Container

    subcontent = new JPanel();
    subcontent.setBackground(Color.BLACK);
    order=new GridBagLayout();
    subcontent.setLayout(order);

        //alinhar botoes

        GridBagConstraints c = new GridBagConstraints();
        c.fill = GridBagConstraints.HORIZONTAL;
        c.gridx = 0;
        c.ipady=80;
        c.ipadx=200;

        // Botao 1

        Button=new Button(9,0,"Start");
        Button.setFont(new Font("button1",Font.CENTER_BASELINE,22));
        c.gridy = 0;

        subcontent.add(Button,c);

        //Botao 2

        Button=new Button(9,1,"Option");
        Button.setFont(new Font("button1",Font.CENTER_BASELINE,22));
        c.gridy = 1;
        subcontent.add(Button,c);

        //Botao 3

        Button=new Button(9,2,"Exit");
        Button.setFont(new Font("button1",Font.CENTER_BASELINE,22));
        c.gridy = 2;
        subcontent.add(Button,c); 

    content.add(subcontent);

    }
            
    public static void option(){
        
    //####################  Variaveis nao partilhadas  #########################            
        
        JComboBox box ; 
        
    //##################  Renicia o container principal  #######################

        content.removeAll();
        content.repaint();
     
    //########################  Base pag inicial  ##############################   
    
    content.setBackground(Color.BLACK);
    content.setLayout(new BorderLayout());

    //######################  Titulo pag inicial  ##############################

    title=new JLabel("Opcoes");
    title.setFont(new Font("title",Font.CENTER_BASELINE,78));
    title.setHorizontalAlignment(SwingConstants.CENTER);
    title.setForeground(Color.BLUE);
    content.add(title,BorderLayout.NORTH);

    //####################  Conteudo pag inicial  ##############################

        //Container

        subcontent = new JPanel();
        subcontent.setBackground(Color.BLACK);
        order=new GridBagLayout();
        subcontent.setLayout(order);

        //alinhar lista

        GridBagConstraints c = new GridBagConstraints();
        c.fill = GridBagConstraints.HORIZONTAL;
        c.gridx = 0;
        c.ipady=60;
        c.ipadx=150;

        // Botao 1

        box=new JComboBox();

        box.addItem("Default");
        box.addItem("Full Screen");
        box.addItem("Display");
        
        box.addActionListener(new ActionListener() {
           
            @Override
            public void actionPerformed(ActionEvent e) {
        
            String k=  e.paramString();
            System.out.println(k);
                switch(k){

                    case "Default":  
                             M_JogoDoGalo.frame.setSize(600,600);
                         break;
                    case "Display" :
                        Window[] w = Window.getOwnerlessWindows();
                        GraphicsEnvironment.getLocalGraphicsEnvironment().getDefaultScreenDevice().setFullScreenWindow(w[0]);  
                 
                        break;

                       
                   default :
DisplayMode[] dm=GraphicsEnvironment.getLocalGraphicsEnvironment().getDefaultScreenDevice().getDisplayModes();
                        GraphicsEnvironment.getLocalGraphicsEnvironment().getDefaultScreenDevice().setDisplayMode(dm[0]);  
                              break;

                }
        
            }
        });
        
        c.gridx = 0;

        subcontent.add(box,c);

        //Botao 2

         box=new JComboBox();

        c.gridx = 1;
        subcontent.add(box,c);

        content.add(subcontent);
        
        content.revalidate();

    }
    
        public static void start(){
        
            
            
        }
}