package Aula12_Ex1;

import Aula5_Ex1.Quadrado;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) throws Exception {

        Scanner sc = new Scanner(System.in);

        Class<?> sj = Class.forName("Aula5_Ex1.Quadrado");

        int a, b, c, d, e, f;
        Constructor<?> cons;
        Object theObject = null;
        List<Quadrado> list = new ArrayList();

        System.out.println(sj.getPackage() + "\n");

        System.out.print("public class " + sj.getSimpleName());

        System.out.print(" extends " + sj.getSuperclass().toString().split("Aula5_Ex1.")[1]);

        for (Class<?> intf : sj.getInterfaces()) {

            System.out.print(" implements " + intf.toString().split("Aula5_Ex1.")[1]);
        }

        System.out.println("\n");

        for (Field field : sj.getDeclaredFields()) {
            System.out.println(field.toString().split("Aula5_Ex1.")[0] + field.toString().split("Aula5_Ex1.Quadrado.")[1]);
        }

        System.out.println();

        for (Constructor<?> constructor : sj.getConstructors()) {
            if (constructor.toString().split("Aula5_Ex1.").length < 3) {
                System.out.println(constructor.toString().split("Aula5_Ex1.")[0] + constructor.toString().split("Aula5_Ex1.")[1] + " {}");
            } else {
                System.out.println(constructor.toString().split("Aula5_Ex1.")[0] + constructor.toString().split("Aula5_Ex1.")[1] + constructor.toString().split("Aula5_Ex1.")[2] + " {}");

            }
        }

        System.out.println();
        for (Method method : sj.getMethods()) {
            if (method.toGenericString().split("Aula5_Ex1.").length > 1) {
                System.out.println(method.toString().split("Aula5_Ex1.")[0] + method.toString().split("Aula5_Ex1.Quadrado.|Aula5_Ex1.")[1] + "{}");
            }
        }

        Class<?>[] paramTypes1 = {Double.TYPE, Double.TYPE, Double.TYPE};
        Class<?>[] paramTypes2 = {Double.TYPE};

        do {

            System.out.println();

            System.out.println(" 1- quadrado");
            System.out.println(" 2- lado");
            System.out.println(" 3- x, y, lado");
            System.out.println(" 4- Exit Loop");

            System.out.println();

            System.out.print(" Opcao: ");

            d = sc.nextInt();

            switch (d) {

                case 1:

                    System.out.println();

                    System.out.println(" 1- lado");
                    System.out.println(" 2- x, y, lado");

                    System.out.println();

                    System.out.print(" Opcao: ");
                    d = sc.nextInt();

                    if (d == 1) {

                        cons = sj.getConstructor(paramTypes2);

                        System.out.println();

                        System.out.print(" lado: ");
                        a = sc.nextInt();

                        theObject = cons.newInstance(a);

                        System.out.println();

                        System.out.println(" New object: " + theObject);

                    } else {

                        cons = sj.getConstructor(paramTypes1);

                        System.out.println();

                        System.out.print(" x origem: ");
                        b = sc.nextInt();

                        System.out.print(" y origem: ");
                        c = sc.nextInt();

                        System.out.print(" lado: ");
                        a = sc.nextInt();

                        theObject = cons.newInstance(b, c, a);

                        System.out.println();

                        System.out.println(" New object: " + theObject);

                    }
                    break;
                case 2:

                    cons = sj.getConstructor(paramTypes2);

                    System.out.println();

                    System.out.print(" lado: ");
                    a = sc.nextInt();

                    theObject = cons.newInstance(a);

                    System.out.println();

                    System.out.println("New object: " + theObject);

                    break;

                case 3:

                    cons = sj.getConstructor(paramTypes1);

                    System.out.println();

                    System.out.print(" x origem: ");
                    b = sc.nextInt();

                    System.out.print(" y origem: ");
                    c = sc.nextInt();

                    System.out.print(" lado: ");
                    a = sc.nextInt();

                    theObject = cons.newInstance(b, c, a);

                    System.out.println();

                    System.out.println(" New object: " + theObject);

                    break;

            }

            list.add((Quadrado) theObject);

        } while (d != 4);

        System.out.println();
        System.out.println("Quadrado 1 : " + list.get(0).toString());
        System.out.println("Perimetro : " + list.get(0).Perimetro());
        System.out.println("Area : " + list.get(0).Area());

       while (d != 7){
            System.out.println("1- public boolean equals(Object)");
            System.out.println("2- public toString()");
            System.out.println("3- public int hashCode()");
            System.out.println("4- public double Perimetro()");
            System.out.println("5- public double Area()");
            System.out.println("6- public double Lado()");
            System.out.println("7- exit loop");

            System.out.println();

            System.out.print("Opcao: ");
            d = sc.nextInt();

            System.out.println();

            for (int i = 0; i < list.size(); i++) {

                System.out.println(i + " - " + list.get(i));

            }

            switch (d) {

                case 1:

                    System.out.print("Quadrado: ");
                    f = sc.nextInt();

                    System.out.print("Quadrado a comparar: ");
                    e = sc.nextInt();

                    System.out.println(list.get(f).equals(e));

                    break;
                case 2:

                    System.out.print("Quadrado: ");
                    f = sc.nextInt();

                    System.out.println(list.get(f).toString());

                    break;
                case 3:

                    System.out.print("Quadrado: ");
                    f = sc.nextInt();

                    System.out.println(list.get(f).hashCode());

                    break;
                case 4:

                    System.out.print("Quadrado: ");
                    f = sc.nextInt();

                    System.out.println(list.get(f).Perimetro());

                    break;
                case 5:

                    System.out.print("Quadrado: ");
                    f = sc.nextInt();

                    System.out.println(list.get(f).Area());

                    break;
                case 6:

                    System.out.print("Quadrado: ");
                    f = sc.nextInt();

                    System.out.println(list.get(f).Lado());

                    break;

            }

        } 

    }
}
