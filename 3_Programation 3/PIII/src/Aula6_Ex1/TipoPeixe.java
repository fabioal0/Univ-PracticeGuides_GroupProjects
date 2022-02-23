package Aula6_Ex1;

public enum TipoPeixe {

    congelado, fresco;

    public static TipoPeixe getTipo(int i) {

        switch (i) {

            default:

            case 1:
                return TipoPeixe.congelado;
            case 2:
                return TipoPeixe.fresco;
        }
    }
}
