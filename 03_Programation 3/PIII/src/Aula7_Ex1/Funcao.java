package Aula7_Ex1;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.RandomAccessFile;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class Funcao {

    public static void lerCompanhias(Map companhias, List key) {

        Path diretorio;
        List<String> linhas;
        String[] aux;

        try {
            diretorio = Paths.get(".", "companhias.txt");
            linhas = Files.readAllLines(diretorio);

            for (int i = 1; i < linhas.size(); i++) {

                aux = linhas.get(i).split("\t");
                key.add(aux[0]);
                companhias.put(aux[0], new Companhia(aux[1]));
            }

        } catch (IOException e) {
            System.out.println(e.getMessage());
        }

        companhias.put("GO", new Companhia("gost company"));
        key.add("GO");
    }

    public static void lerVoos(Map companhias) {

        Path diretorio;
        List<String> linhas;
        Companhia companhia;
        Voo voo;
        String[] aux, horas;
        String nome, origem;
        int hora_H, hora_M, atraso_H, atraso_M, obs_H, obs_M;

        try {
            diretorio = Paths.get(".", "voos.txt");
            linhas = Files.readAllLines(diretorio);

            for (int i = 1; i < linhas.size(); i++) {

                aux = linhas.get(i).split("\t");

                horas = aux[0].split(":");

                hora_H = Integer.parseInt(horas[0]);
                hora_M = Integer.parseInt(horas[1]);

                nome = aux[1];
                origem = aux[2];

                if (aux.length == 4) {

                    horas = aux[3].split(":");

                    atraso_H = Integer.parseInt(horas[0]);
                    atraso_M = Integer.parseInt(horas[1]);

                    obs_H = hora_H + atraso_H;
                    obs_M = hora_M + atraso_M;

                    if (obs_M >= 60) {

                        obs_H += ((int) obs_M / 60);
                        obs_M -= ((int) obs_M / 60) * 60;

                    }

                } else {
                    atraso_H = 0;
                    atraso_M = 0;
                    obs_H = 0;
                    obs_M = 0;
                }

                companhia = (Companhia) companhias.get("" + nome.charAt(0) + nome.charAt(1));

                if (companhia == null) {
                    companhia = (Companhia) companhias.get("GO");
                }

                voo = new Voo(nome, origem, hora_H, hora_M, atraso_H, atraso_M, obs_H, obs_M);
                companhia.addVoo(voo);

            }

        } catch (IOException e) {
            System.err.println(e.getMessage());
        }
    }

    public static List listaDados(Map companhias, List key) {

        List<String> lista = new ArrayList<>();
        List<String> auxiliar = new ArrayList<>();

        Companhia aux;

        for (int i = 0; i < companhias.size(); i++) {

            aux = (Companhia) companhias.get(key.get(i));

            for (int k = 0; k < aux.getVoos().size(); k++) {

                if (aux.getNome().length() < 8) {
                    lista.add(aux.getVoos().get(k).aux1toString() + aux.getNome() + "\t\t" + aux.getVoos().get(k).aux2toString() + "\n");
                } else if (aux.getNome().length() < 16) {
                    lista.add(aux.getVoos().get(k).aux1toString() + aux.getNome() + "\t" + aux.getVoos().get(k).aux2toString() + "\n");
                } else {
                    lista.add(aux.getVoos().get(k).aux1toString() + aux.getNome() + aux.getVoos().get(k).aux2toString() + "\n");
                }
            }
        }

        lista.sort((a1, a2) -> a1.compareTo(a2));

        auxiliar.add("Hora\t\tVoo\t\tCompanhia\t\tOrigem\t\t\t\tAtraso\t\tObs\n");
        auxiliar.addAll(lista);

        return auxiliar;
    }

    public static void guardardados(List dados, String nameOut, String extencao) {

        try (
                PrintWriter pw = new PrintWriter(new FileWriter(nameOut + extencao))) {
            for (int p = 0; p < dados.size(); p++) {

                pw.print(dados.get(p));

            }

        } catch (IOException e) {
            System.out.println(e.getMessage());
        }

    }

    public static List sortAtrasos(Map companhias, List key) {

        List<String> lista = new ArrayList<>();
        List<String> auxiliar = new ArrayList<>();
        Companhia aux;

        for (int i = 0; i < companhias.size(); i++) {

            aux = (Companhia) companhias.get(key.get(i));

            if (aux.getNome().length() < 8) {
                auxiliar.add("" + aux.getNome() + "\t\t\t" + aux.media() + "\n");

            } else if (aux.getNome().length() < 16) {
                auxiliar.add("" + aux.getNome() + "\t\t" + aux.media() + "\n");

            } else {
                auxiliar.add("" + aux.getNome() + "\t" + aux.media() + "\n");
            }

            auxiliar.sort((a1, a2) -> Double.compare(Double.parseDouble(a1.split("\t")[a1.split("\t").length - 1]), Double.parseDouble(a2.split("\t")[a2.split("\t").length - 1])));
        }
        lista.add("Companhia\t\tAtraso medio(min)\n");
        lista.addAll(auxiliar);

        return lista;
    }

    public static List vooCidade(Map companhias, List key) {

        Companhia aux;
        Map<String, Integer> origem = new TreeMap<>();
        int count;
        String orig;
        List<String> lista = new ArrayList<>();
        List<String> listafinal = new ArrayList<>();

        for (int i = 0; i < key.size(); i++) {

            aux = (Companhia) companhias.get(key.get(i));

            for (int k = 0; k < aux.getVoos().size(); k++) {

                orig = aux.getVoos().get(k).getOrigem();

                if (!origem.containsKey(orig)) {
                    origem.put(orig, 1);
                    lista.add(orig);
                } else {
                    count = origem.get(orig);
                    count++;
                    origem.replace(orig, count);
                }
            }

        }

        for (int l = 0; l < lista.size(); l++) {

            if (lista.get(l).length() < 8) {
                lista.set(l, "" + lista.get(l) + "\t\t\t" + origem.get(lista.get(l)) + "\n");
            } else if (lista.get(l).length() < 16) {
                lista.set(l, "" + lista.get(l) + "\t\t" + origem.get(lista.get(l)) + "\n");
            } else {
                lista.set(l, "" + lista.get(l) + "\t" + origem.get(lista.get(l)) + "\n");
            }
        }

        lista.sort((a1, a2) -> Double.compare(Double.parseDouble(a1.split("\t")[a1.split("\t").length - 1]), Double.parseDouble(a2.split("\t")[a2.split("\t").length - 1])));
        listafinal.add("Cidade Origem\t\tNumero de voos\n");
        listafinal.addAll(lista);
        return listafinal;

    }

    public static List loadrandom() {
        List<String> lista = new ArrayList<>();
        String aux = "";

        try (RandomAccessFile file = new RandomAccessFile("Infopublico.bin", "rw")) {
            
            aux = file.readLine();
            
            while (aux != null) {

                lista.add(aux + "\n");
                aux = file.readLine();
            }

        } catch (IOException e) {
            System.out.println(e.getMessage());
        }

        return lista;
    }

}
