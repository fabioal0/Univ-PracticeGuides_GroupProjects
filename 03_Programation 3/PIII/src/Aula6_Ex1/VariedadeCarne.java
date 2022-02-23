package Aula6_Ex1;

public enum VariedadeCarne {

    vaca, porco, peru, frango, outra;

    public static VariedadeCarne getVar(int i) {
        switch (i) {
            default:
            case 1:
                return VariedadeCarne.vaca;
            case 2:
                return VariedadeCarne.porco;
            case 3:
                return VariedadeCarne.peru;
            case 4:
                return VariedadeCarne.frango;
            case 5:
                return VariedadeCarne.outra;
        }
    }
}