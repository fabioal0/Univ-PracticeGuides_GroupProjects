package Aula13_Ex2;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class Main {

    public static void main(String[] args) {

        Path l = Paths.get(".", "Policarpo.txt");
        String[] aux;
        String[] aux2;
        String k = "";
        int y = 0;
        List<String> j = new ArrayList<>();
        Map<String, String> fin = new TreeMap<>();
        try {
            j = Files.readAllLines(l);

            for (String j1 : j) {
                aux = j1.split("[\t||\n||.||,||:||'||,||;||?||!||-||*||{||}||=||+||&||/||(||)||[||]||\"||'||“||”||‘||’]");

                for (String aux1 : aux) {
                    aux2 = aux1.split(" ");

                    for (String aux3 : aux2) {

                        if (aux3.length() > 3) {

                            if (y == 0) {
                                k = aux3;
                                fin.put(k, "");

                            } else {
                                fin.replace(k, fin.get(k)  + aux3+ " , ");

                            }

                        }
                        y = 1;
                    }
                    y = 0;
                }
            }

            fin.forEach((e, m) -> System.out.println(e + "\t\t=\t" + m));

        } catch (IOException ex) {
            System.out.println(ex.getMessage());
        }

    }

}
