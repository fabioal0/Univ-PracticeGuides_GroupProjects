package Aula13_Ex3;

import static java.lang.System.out;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.Scanner;

public class e {

    public static void main(String[] args) {

        Scanner Sc = new Scanner(System.in);
        List<String> j = new LinkedList<>();
        int Switch;
        String name;

        do {

            out.println("1-Add");
            out.println("2-List ");
            out.println("3-Remove ");
            out.println("4-Exit ");

            out.println("Escolha:");
            Switch = Sc.nextInt();

            switch (Switch) {

                case 1:
                    out.println("name:");
                    name = Sc.next();
                    j.add(name);
                    break;

                case 2:
                    System.out.println(Arrays.toString(j.toArray()));
                    break;

                case 3:
                    out.println("name:");
                    name = Sc.next();
                    j.remove(name);
                    break;
            }
        } while (Switch != 4);
    }

}
