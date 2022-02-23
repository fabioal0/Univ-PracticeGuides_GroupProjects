package Aula6_Ex1;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Scanner;
import static java.lang.System.*;
import java.util.ArrayList;
import java.util.List;

public class Main {

    public static void main(String[] args) {               

        Scanner Sc = new Scanner(System.in);

        List<Alimento> alimentos = new ArrayList<>();
        List<Prato> pratos = new ArrayList<>();
        Ementa ementa = new Ementa("P3", "UNIV");        //Ementa ja é declarada e inicializada
        int Switch, indexAl, indexPr;                   //Al-alimento  Pr-prato  
        double proteinas, calorias, peso;
        String nome;
        Prato auxiliar;

        do {

            out.println("1-Adicionar Ingrediente");
            out.println("2-Criar Prato");
            out.println("3-Remover Prato");
            out.println("4-Adicionar Ingrediente a um prato");
            out.println("5-Remover Ingrediente de um prato");
            out.println("6-Adicionar prato a ementa");
            out.println("7-Remover prato da ementa");
            out.println("8-print ementa");
            out.println("9-guardar ementa");
            out.println("10-carregar ementa");
            out.println("11-exit");

            out.println("Escolha:");
            Switch = Sc.nextInt();

            assert Switch > 0 && Switch < 12 : "Opcao inexistente";

            switch (Switch) {

                case 1:

                    out.println("1-Adicionar Carne");
                    out.println("2-Adicionar Peixe");
                    out.println("3-Adicionar Cereal");
                    out.println("4-Adicionar Legume");

                    out.println("Escolha:");
                    Switch = Sc.nextInt();

                    assert Switch > 0 && Switch < 5 : "Opcao inexistente";

                    out.println("Proteinas");
                    proteinas = Sc.nextDouble();

                    assert proteinas >= 0 : "Nao existem proteinas negativas";

                    out.println("Calorias");
                    calorias = Sc.nextDouble();

                    assert proteinas >= 0 : "Nao existem calorias negativas";

                    out.println("Peso");
                    peso = Sc.nextDouble();

                    assert proteinas >= 0 : "Nao existem peso negativas";

                    switch (Switch) {

                        case 1:

                            VariedadeCarne variedade;

                            out.println("Tipos de carnes:");
                            out.println("1-vaca");
                            out.println("2-porco");
                            out.println("3-peru");
                            out.println("4-frango");
                            out.println("5-outra");

                            out.println("Escolha:");
                            Switch = Sc.nextInt();

                            assert Switch > 0 && Switch < 6 : "Opcao inexistente";

                            switch (Switch) {
                                default:
                                case 1:
                                    variedade = VariedadeCarne.vaca;
                                case 2:
                                    variedade = VariedadeCarne.porco;
                                case 3:
                                    variedade = VariedadeCarne.peru;
                                case 4:
                                    variedade = VariedadeCarne.frango;
                                case 5:
                                    variedade = VariedadeCarne.outra;
                            }

                            alimentos.add(new Carne(variedade, proteinas, calorias, peso));

                            break;

                        case 2:

                            TipoPeixe tipo;

                            out.println("Tipos de peixe:");
                            out.println("1-fresco");
                            out.println("2-congelado");

                            out.println("Escolha:");
                            Switch = Sc.nextInt();

                            assert Switch > 0 && Switch < 3 : "Opcao inexistente";

                            switch (Switch) {
                                default:
                                case 1:
                                    tipo = TipoPeixe.fresco;
                                case 2:
                                    tipo = TipoPeixe.congelado;
                            }

                            alimentos.add(new Peixe(tipo, proteinas, calorias, peso));
                            break;

                        case 3:

                            out.println("Nome:");
                            nome = Sc.next();

                            assert nome != null : "Nome invalido";

                            alimentos.add(new Cereal(nome, proteinas, calorias, peso));

                            break;

                        case 4:

                            out.println("Nome:");
                            nome = Sc.next();

                            assert nome != null : "Nome invalido";

                            alimentos.add(new Legume(nome, proteinas, calorias, peso));

                            break;

                    }
                    break;
                case 2:

                    out.println("Nome do prato:");
                    nome = Sc.next();

                    assert nome != null : "Nome invalido";

                    pratos.add(new Prato(nome));

                    break;

                case 3:

                    for (int i = 0; i < pratos.size(); i++) {

                        out.println("(" + i + ")-" + pratos.get(i));

                    }
                    out.println(" Nº da posicao do prato a remover: ");
                    indexAl = Sc.nextInt();

                    assert indexAl >= 0 && indexAl < pratos.size() : "Prato invalido";

                    pratos.remove(indexAl);
                    break;

                case 4:

                    for (int i = 0; i < pratos.size(); i++) {

                        out.println("(" + i + ")-" + pratos.get(i));

                    }
                    out.println("Posicao do prato a adicionar ingrediente: ");
                    indexPr = Sc.nextInt();

                    assert indexPr >= 0 && indexPr < pratos.size() : "Prato invalido";

                    for (int i = 0; i < alimentos.size(); i++) {

                        out.println("(" + i + ")-" + alimentos.get(i));

                    }
                    out.println("Posicao do alimento a adicionar: ");
                    indexAl = Sc.nextInt();

                    assert indexAl >= 0 && indexAl < alimentos.size() : "Alimento invalido";

                    auxiliar = pratos.get(indexPr);

                    if (auxiliar.addIngrediente(alimentos.get(indexAl))) {

                        pratos.set(indexPr, auxiliar);
                    } else {
                        out.println("Ja contem 2 ingredientes nao e possivel adicionar mais");
                    }

                    break;

                case 5:

                    for (int i = 0; i < pratos.size(); i++) {

                        out.println("(" + i + ")-" + pratos.get(i));

                    }
                    out.println("Posicao do prato a remover ingrediente: ");
                    indexPr = Sc.nextInt();

                    assert indexPr >= 0 && indexPr < pratos.size() : "Prato invalido";

                    auxiliar = pratos.get(indexPr);

                    out.println("0-" + auxiliar.getCompoicao()[0]);
                    out.println("1-" + auxiliar.getCompoicao()[1]);

                     {
                        int auxRemove;

                        out.print("Numero do alimento a remover:");
                        auxRemove = Sc.nextInt();

                        assert auxRemove >= 0 && auxRemove <= 1;

                        if (auxiliar.removeIngrediente(auxRemove)) {

                            out.println("Alimento removido");

                        }

                    }

                    break;

                case 6:

                    for (int i = 0; i < pratos.size(); i++) {

                        out.println("(" + i + ")-" + pratos.get(i));

                    }
                    out.println("Posicao do prato a adicionar a ementa: ");
                    indexPr = Sc.nextInt();

                    assert indexPr >= 0 && indexPr < pratos.size() : "Alimento invalido";

                    ementa.addPrato(pratos.get(indexPr), DiaSemana.rand());

                    break;

                case 7:

                    out.println(ementa);

                    out.println("Key do prato a remover (exemplo:  1_Terça(4)  )");
                    nome = Sc.next();

                    assert nome != null : "Nome invalido";

                    ementa.removePrato(nome);

                    break;

                case 8:

                    out.println(ementa);

                    break;

                case 9:

                    System.out.print("Ficheiro de saida: ");
                    String nameOut = Sc.next();

                    try (ObjectOutputStream objetoOut
                            = new ObjectOutputStream(new FileOutputStream(nameOut + ".dat"))) {

                        objetoOut.writeObject(ementa);
                    } catch (IOException e) {
                        out.println(e.getMessage());
                    }

                    break;

                case 10:

                    System.out.print("Ficheiro de entrada: ");
                    String nameIn = Sc.next();

                    try (ObjectInputStream ficheiroIn
                            = new ObjectInputStream(new FileInputStream(nameIn + ".dat"))) {
                        ementa = (Ementa) ficheiroIn.readObject();
                    } catch (IOException | ClassNotFoundException e) {
                        out.println(e.getMessage());
                    }
            }

        } while (Switch != 11);

    }
}
