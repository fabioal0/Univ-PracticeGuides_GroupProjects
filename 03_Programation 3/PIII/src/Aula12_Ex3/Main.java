package Aula12_Ex3;

import static Aula_1.A1_EX2_Class_Data.Dia_Valido;
import static Aula_1.A1_EX2_Class_Data.Mes_Valido;
import static Aula_1.A1_EX2_Class_Pessoa.Nome_Valido;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {

        Scanner kb = new Scanner(System.in);

        File plugins = new File("./src/Aula12_Ex3/plugins");
        List<IPlugin> names = new ArrayList<>();
        List<Pessoa> Base_Dados = new ArrayList();
        Pessoa Dados;
        Data data;
        String Nome;
        int Dia, Mes, Ano, CC;
        int formato;
        int Escolha = 0;

        for (String list : plugins.list()) {
            try {
                names.add(PluginManager.load("Aula12_Ex3.plugins." + list.substring(0, list.lastIndexOf('.'))));
            } catch (Exception ex) {
                ex.getMessage();
            }
        }

        while (Escolha != 6) {

            System.out.println("(1)-Adicionar pessoa");
            System.out.println("(2)-Remover pessoa");
            System.out.println("(3)-Ver dados");
            System.out.println("(4)-Save");
            System.out.println("(5)-Load");
            System.out.println("(6)-Exit");
            System.out.println();
            System.out.print("Escolha: ");

            Escolha = kb.nextInt();

            assert Escolha > 0 && Escolha <= 6 : "Numero Invalido";

            System.out.println();

            switch (Escolha) {

                case 1:

                    System.out.print("Nome: ");
                    Nome = kb.next();

                    assert Nome_Valido(Nome) : "Nome Invalido";

                    System.out.print("Ano: ");
                    Ano = kb.nextInt();

                    System.out.print("Mes: ");
                    Mes = kb.nextInt();

                    assert Mes_Valido(Mes) : "Mes Invalido";

                    System.out.print("Dia: ");
                    Dia = kb.nextInt();

                    assert Dia_Valido(Mes, Dia, Ano) : "Dia Invaliido";

                    System.out.print("Cartao de Cidadao: ");
                    CC = kb.nextInt();

                    assert CC > 0 : "cc Invalido";

                    data = new Data(Dia, Mes, Ano);
                    Dados = new Pessoa(Nome, CC, data);
                    Base_Dados.add(Dados);

                    break;

                case 2:

                    System.out.print("Cartao de Cidadao: ");
                    CC = kb.nextInt();

                    assert CC > 0 : "cc Invalido";
                    for (int i = 0; i < Base_Dados.size(); i++) {

                        if (Base_Dados.get(i).CC() == CC) {
                            Base_Dados.remove(i);
                        }

                    }
                    break;

                case 3:

                    System.out.println("_____________________________________________________________________________");
                    System.out.println("|                   |                   |                                    |");
                    System.out.println("|       Nome        |         CC        |          Data de Nascimento        |");
                    System.out.println("|___________________|___________________|____________________________________|");

                    for (int i = 0; i < Base_Dados.size(); i++) {

                        Base_Dados.get(i).Print_Dados();

                    }

                    break;
                case 4:
                    System.out.println("Formato: 2-vCard 1-Nokia 0-CSV ");
                    formato = kb.nextInt();

                    System.out.print("Nome ficheiro: ");
                    Nome = kb.next();

                    switch (formato) {

                        case 0:
                            names.get(0).saveFile(Nome, Base_Dados);
                            break;
                        case 1:
                            names.get(1).saveFile(Nome, Base_Dados);
                            break;
                        case 2:
                            names.get(2).saveFile(Nome, Base_Dados);
                            break;
                    }
                    break;
                case 5:
                    
                    Iterator<IPlugin> it = names.iterator();
                    
                    System.out.print("Nome ficheiro: ");
                    Nome = kb.next();
       
                    while (it.hasNext()) {

            
                        Base_Dados.addAll(it.next().loadFile(Nome));
               
                    }
                    break;
            }

        }

    }

}
