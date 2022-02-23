package Aula11_Ex1;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class e {

    public static void main(String[] args) throws IOException {

        b();
        c();       
        d();
    }

    public static void b() {

        List<String> linhas;
        Path diretorio;

        try {

            diretorio = Paths.get(".", "voos.txt");
            linhas = Files.readAllLines(diretorio);

            System.out.println("Número Total de Palavras: " + linhas.size());
            System.out.println("Número de Diferentes Palavras: "
                    + (int) linhas.stream().map((a) -> a.split("\t")[2]).distinct().count()
            );

        } catch (IOException y) {

            System.out.println(y.getMessage());

        }

    }

    public static void c() {
        Map<String, Integer> lista = new HashMap<>();
        List<String> linhas;
        Path diretorio;

        try {

            diretorio = Paths.get(".", "voos.txt");
            linhas = Files.readAllLines(diretorio);

            linhas.stream().map((n) -> n.split("\t")[2]).peek((u) -> {

                if (lista.containsKey(u)) {

                    lista.put(u, 1);

                } else {

                    int k;

                    k = lista.get(u);

                    lista.replace(u, k++);

                }
            });

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

    public static void d() {

        Map<String, Integer> lista = new TreeMap<>((a, b) -> a.compareTo(b));
        List<String> linhas;
        Path diretorio;

        try {

            diretorio = Paths.get(".", "voos.txt");
            linhas = Files.readAllLines(diretorio);

            linhas.stream().map((n) -> n.split("\t")[2]).peek((u) -> {

                if (lista.containsKey(u)) {

                    lista.put(u, 1);

                } else {

                    int k;

                    k = lista.get(u);

                    lista.replace(u, k++);

                }
            });

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
