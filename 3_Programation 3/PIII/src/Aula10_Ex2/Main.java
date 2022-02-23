package Aula10_Ex2;

import java.util.Iterator;

public class Main {

    public static void main(String[] args) {

        BinarySearchTree<String> tree = new BinarySearchTree<>();

        tree.insert("qwertyuiop");
        tree.insert("asdfghjklç");
        tree.insert("zxcvbnm");
        tree.insert("qaz");
        tree.insert("wsx");
        tree.insert("edc");
        
        System.out.println(tree.Size()+"\n\n");
                
        Iterator<String> iitertree = tree.iterator();
        iitertree.forEachRemaining(System.out::println);
        
        System.out.print("\n\n");
        
        System.out.println(tree.contains("rzjyx"));
        System.out.println(tree.contains("qwertyuiop"));
        System.out.println(tree.contains("xgjyhgj"));

        tree.remove("qwertyuiop");

        System.out.println(tree.contains("edc"));
        
        System.out.print("\n\n");
        
        System.out.println(tree.Size()+"\n\n");
        
        iitertree = tree.iterator();
        iitertree.forEachRemaining(System.out::println);

    }

}
