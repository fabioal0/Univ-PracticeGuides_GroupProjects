package Aula11_Ex1;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class c {

    public static void main(String[] args) {

        Map<String, Integer> lista = new HashMap<>();
        List<String> linhas;
        Path diretorio;
        String[] aux;
        int k;

        try {

            diretorio = Paths.get(".", "voos.txt");
            linhas = Files.readAllLines(diretorio);

            for (int i = 0; i < linhas.size(); i++) {

                aux = linhas.get(i).split("\t");

                if (lista.containsKey(aux[2])) {

                    k = lista.get(aux[2]) + 1;
                    lista.replace(aux[2], k);

                } else {
                    lista.put(aux[2], 1);
                }

            }
            lista.forEach((m, v) -> {
                if (m.length() < 8) {
                    System.out.println("" + m + "\t\t\t" + v);
                } else if (m.length() < 16) {
                    System.out.println("" + m + "\t\t" + v);
                } else {
                    System.out.println("" + m + "\t" + v);
                }

            });

        } catch (IOException e) {

            System.out.println(e.getMessage());

        }
    }

}
