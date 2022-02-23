package Aula9_Ex1;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Path;
import java.util.Iterator;
import java.util.Scanner;

public class Comp_ScannerAbeirense implements Iterator<String>, Closeable {

    private final Scanner sc;

    public Comp_ScannerAbeirense(InputStream k) {
        this.sc = new Scanner(k);
    }

    public Comp_ScannerAbeirense(Path source) throws IOException {
        this.sc = new Scanner(source);
    }

    public String convert(String frase) {

        String aux = "";

        for (int i = 0; i < frase.length(); i++) {

            switch (frase.charAt(i)) {
                case 'v':
                    aux += 'V';
                    break;
                case 'b':
                    aux += 'B';
                    break;
                default:
                    aux += frase.charAt(i);
                    break;
            }
        }

        return aux;
    }

    @Override
    public boolean hasNext() {
        return sc.hasNext();
    }

    @Override
    public String next() {

        return convert(sc.next());
    }

    public String nextLine() {

        return convert(sc.nextLine());
    }

    @Override
    public void close() throws IOException {

        sc.close();
    }

}
