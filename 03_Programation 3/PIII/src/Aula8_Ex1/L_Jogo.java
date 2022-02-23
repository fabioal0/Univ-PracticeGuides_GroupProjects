package Aula8_Ex1;

public class L_Jogo {
    
    private final int[][] jogo = new int[4][4];

    public boolean jogada(int whidth, int height, int jogador) {
        
        assert !fimJogo():"jogo ja terminado";
        if (jogador == 1 && jogo[whidth][height] == 0) {
            jogo[whidth][height] = 1;
            jogo[4][height] += 1;
            jogo[whidth][4] += 1;
            return true;

        } else if (jogador == 2 && jogo[whidth][height] == 0) {
            jogo[whidth][height] = 4;
            jogo[4][height] += 4;
            jogo[whidth][4] += 4;
            return true;
        }

        return false;
    }

    public boolean fimJogo() {

        for (int i = 0; i < 4; i++) {

            if (jogo[i][4] == 12 || jogo[4][i] == 12) {

                System.out.println("Jogador 2 ganhou");
                return true;

            } else if (jogo[i][4] == 3 || jogo[4][i] == 3) {

                System.out.println("Jogador 1 ganhou");
                return true;
            } else if (jogo[i][1] != 0 && jogo[i][2] != 0 && jogo[i][3] != 0) {

                System.out.println("Empate");
                return true;
            }
        }
        return false;
    }
            
    public boolean jogador(){
    
    
    return false;
    }
}
