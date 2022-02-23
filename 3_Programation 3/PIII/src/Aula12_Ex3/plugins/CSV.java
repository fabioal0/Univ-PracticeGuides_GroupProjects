package Aula12_Ex3.plugins;

import Aula12_Ex3.Data;
import Aula12_Ex3.IPlugin;
import Aula12_Ex3.Pessoa;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

public class CSV implements IPlugin {

    @Override
    public List<Pessoa> loadFile(String fileName) {

        Path diretorio;
        List<String> linhas;
        List<Pessoa> pessoas = new ArrayList<>();
        Data data;
        Pessoa pessoa;
        int[] k = new int[3];

        diretorio = Paths.get(".", "\\src\\Aula12_Ex3\\files\\" + fileName + ".txt");

        try {
            linhas = Files.readAllLines(diretorio);

            if (linhas.get(0).equals("CSV")) {

                for (int i = 2; i < linhas.size(); i++) {

                    k[0] = Integer.parseInt(linhas.get(i).split("\t")[2].split("de")[0].trim());
                    k[1] = Data.MesExtenso(linhas.get(i).split("\t")[2].split("de")[1].trim());
                    k[2] = Integer.parseInt(linhas.get(i).split("\t")[2].split("de")[2].trim());

                    data = new Data(k[0], k[1], k[2]);
                    pessoa = new Pessoa(linhas.get(i).split("\t")[0], Integer.parseInt(linhas.get(i).split("\t")[1]), data);
                    pessoas.add(pessoa);

                }
            }

        } catch (IOException ex) {
            System.out.println("nao csv");
        }
        return pessoas;
    }

    @Override
    public void saveFile(String name, List<Pessoa> data) {

        int k = 0;
        
        try (Scanner f = new Scanner(Paths.get(".", "\\src\\Aula12_Ex3\\files\\" + name + ".txt"))) {
       
            if (!f.next().equals("CSV")) {
                k = 1;
                
            }
        } catch (IOException ex) {
             System.out.println(ex.getMessage());
        }
        try {

            PrintWriter pw = new PrintWriter(new FileWriter("./src/Aula12_Ex3/files/" + name + ".txt", true));

            if (k == 1) {
                pw.println("CSV");
            }

            for (int i = 0; i < data.size(); i++) {

                pw.print(data.get(i).Nome());
                pw.print("\t" + data.get(i).CC());
                pw.print("\t" + data.get(i).Data_Nasc());
                pw.println();

            }

            pw.close();

        } catch (IOException ex) {
            System.out.println(ex.getMessage());
        }

    }

}
