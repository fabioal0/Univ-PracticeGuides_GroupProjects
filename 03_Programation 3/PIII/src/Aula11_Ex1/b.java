package Aula11_Ex1;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class b {

    public static void main(String[] args) {

        Set<String> lista = new HashSet<>();        
        List<String> linhas;
        Path diretorio;
        String[] aux;

        try {
            
            diretorio = Paths.get(".", "voos.txt");
            linhas = Files.readAllLines(diretorio);
            System.out.println("Número Total de Palavras: "+linhas.size());
            
            for (int i = 0; i < linhas.size(); i++) {
                
                aux = linhas.get(i).split("\t");

                lista.add(aux[2]);

            }

        } catch (IOException e) {
            
            System.out.println(e.getMessage());
            
        }

        System.out.println("Número de Diferentes Palavras: "+lista.size());
        
    }

}
