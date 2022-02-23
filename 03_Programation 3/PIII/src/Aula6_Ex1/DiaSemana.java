package Aula6_Ex1;

public enum DiaSemana {

    Segunda, Terça, Quarta, Quinta, Sexta, Sabado, Domingo;

    public static DiaSemana rand() {

        int i = 0;

        i = (int) (Math.random() * 6) + 1;

        switch (i) {
            default:
            case 1:
                return DiaSemana.Segunda;
            case 2:
                return DiaSemana.Terça;
            case 3:
                return DiaSemana.Quarta;
            case 4:
                return DiaSemana.Quinta;
            case 5:
                return DiaSemana.Sexta;
            case 6:
                return DiaSemana.Sabado;
            case 7:
                return DiaSemana.Domingo;

        }

    }

    public static DiaSemana SelecaoDia(int i) {

        switch (i) {
            default:
            case 1:
                return DiaSemana.Segunda;
            case 2:
                return DiaSemana.Terça;
            case 3:
                return DiaSemana.Quarta;
            case 4:
                return DiaSemana.Quinta;
            case 5:
                return DiaSemana.Sexta;
            case 6:
                return DiaSemana.Sabado;
            case 7:
                return DiaSemana.Domingo;
        }
    }
}
