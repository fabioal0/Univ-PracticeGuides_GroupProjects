package Aula8_Ex1;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.ImageIcon;
import javax.swing.JButton;

public class Button extends JButton implements ActionListener {

    private final ImageIcon p1, p2;
    private final int linha;
    private final int coluna;
    private boolean jogador;

    public Button(int linha, int coluna, String titulo) {
        super(titulo);
 
        this.p1 = null;
        this.p2 = null;
        this.linha = linha;
        this.coluna = coluna;
        addActionListener(this);

    }

    public Button(ImageIcon p1, ImageIcon p2, int linha, int coluna) {
        
        this.p1 = new ImageIcon(this.getClass().getResource("./Jogo do Galo/player1.svg"));
        this.p2 = new ImageIcon(this.getClass().getResource("./Jogo do Galo/player2.svg"));
        this.linha = linha;
        this.coluna = coluna;
        addActionListener(this);
    }

    @Override
    public void actionPerformed(ActionEvent e) {

        if (this.linha == 9) {

            if (this.coluna == 0) {
                G_Jogo.start();
            }
            if (this.coluna == 1) {
                G_Jogo.option();
            }

            if (this.coluna == 2) {
                System.exit(0);
            }

        } else {
            if (this.jogador == false) {
                setIcon(p1);
            } else {
                setIcon(p2);
            }

            this.jogador = !jogador;
        }
    }

}
