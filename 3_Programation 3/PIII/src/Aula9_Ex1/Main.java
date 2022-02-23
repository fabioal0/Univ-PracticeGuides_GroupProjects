package Aula9_Ex1;

import java.io.IOException;
import java.nio.file.Paths;

public class Main {

    public static void main(String[] args) throws IOException {

        Comp_ScannerAbeirense sc = new Comp_ScannerAbeirense(System.in);
        Comp_ScannerAbeirense fich = new Comp_ScannerAbeirense(Paths.get(".", "voos.txt"));

        while (fich.hasNext()) {
            System.out.println(fich.next());
        }

        System.out.println(sc.nextLine());
    }

}
