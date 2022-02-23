package Aula7_Ex1;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Main {

    public static void main(String[] args) {

        Map<String, Companhia> companhias = new HashMap<>();
        List<String> key = new ArrayList();
        List<String> print = new ArrayList();

        Funcao.lerCompanhias(companhias, key);
        Funcao.lerVoos(companhias);
        print = Funcao.listaDados(companhias, key);

        for (int k = 0; k < print.size(); k++) {
            System.out.print(print.get(k));
        }

        System.out.println("\n\n");

        Funcao.guardardados(print, "Infopublico", ".txt");
        Funcao.guardardados(print, "Infopublico", ".bin");
        print = Funcao.sortAtrasos(companhias, key);

        for (int k = 0; k < print.size(); k++) {
            System.out.print(print.get(k));
        }

        System.out.println("\n\n");

        print = Funcao.vooCidade(companhias, key);

        for (int k = 0; k < print.size(); k++) {
            System.out.print(print.get(k));
        }

        System.out.println("\n\n");

        print = Funcao.loadrandom();

        for (int k = 0; k < print.size(); k++) {
            System.out.print(print.get(k));
        }

        System.out.println("\n\n");

    }

}
