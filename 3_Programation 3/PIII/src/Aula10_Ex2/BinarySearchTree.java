package Aula10_Ex2;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class BinarySearchTree<T extends Comparable<? super T>>
        implements Iterable<T> {

    private BSTNode<T> insert(T value, BSTNode<T> root) {

        if (root == null) {

            root = new BSTNode<>(value);

            return root;

        } else if (root.element.compareTo(value) == 1) {

            if (root.left == null) {

                root.left = new BSTNode<>(value);

            } else {

                insert(value, root.left);

            }

        } else {

            if (root.right == null) {

                root.right = new BSTNode<>(value);

            } else {

                insert(value, root.right);

            }
        }
        return root;

    }

    private BSTNode<T> remove(T value, BSTNode<T> root) {

        switch (root.element.compareTo(value)) {
            case 1:

                root.left = remove(value, root.left);

                return root;
            case -1:

                root.right = remove(value, root.right);

                return root;

            default:

                if (root.left == null) {

                    root = root.right;

                } else if (root.right == null) {

                    root = root.left;

                } else {

                    root = insert(root.left.element, root.right);
                }
                return root;
        }
    }

    private BSTNode<T> valueOf(BSTNode<T> root) {
        return root;
    }

    private BSTNode<T> find(T value, BSTNode<T> root) {

        if (root == null) {
            return null;

        } else {
            if ((root.element).compareTo(value) > 0) {

                return find(value, root.left);

            } else if ((root.element).compareTo(value) < 0) {

                return find(value, root.right);

            } else {

                return root;
            }
        }
    }

    class BSTNode<T> {

        T element;
        BSTNode<T> left;
        BSTNode<T> right;

        BSTNode(T theElement) {
            element = theElement;
            left = right = null;
        }

    }

    private BSTNode<T> root;
    private int numNodes;

    public BinarySearchTree() {
        root = null;
        numNodes = 0;
    }

    public void insert(T value) {
        root = insert(value, root);
        numNodes++;
    }

    public void remove(T value) {
        root = remove(value, root);
        numNodes--;
    }

    public boolean contains(T value) {
        return valueOf(find(value, root)) != null;
    }

    public int Size() {
        return numNodes;
    }

    @Override
    public Iterator<T> iterator() {

        return new treeiterator();
    }

    public class treeiterator implements Iterator {

        private final List<BSTNode<T>> lista = new LinkedList<>();
        private BSTNode<T> n = root;

        public treeiterator() {
            BSTNode<T> n2;
            while (n != null) {
                lista.add(n);
                n2 = n.right;
                while (n2 != null) {
                    lista.add(n2);
                    n2 = n2.right;
                }
                n = n.left;
            }

        }

        @Override
        public T next() {
            n = lista.get(0);
            lista.remove(0);

            return n.element;
        }

        @Override
        public boolean hasNext() {
            return (!lista.isEmpty());
        }
    }

}
