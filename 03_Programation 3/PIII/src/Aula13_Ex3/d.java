package Aula13_Ex3;

import static java.lang.System.out;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class d {

    public static void main(String[] args) {

        Scanner Sc = new Scanner(System.in);
        Map<String, Integer> j = new HashMap<>();
        int Switch, count;
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
                    if (!j.containsKey(name)) {
                        j.put(name, 1);
                    } else {
                        j.put(name, j.get(name) + 1);
                    }
                    break;

                case 2:
                    j.forEach((a, b) -> System.out.println(a + " - " + b));
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
