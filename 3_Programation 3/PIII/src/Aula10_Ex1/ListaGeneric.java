package Aula10_Ex1;

import java.util.Iterator;

public class ListaGeneric<E> {

    private Node<E> first = null;
    private int size = 0;

    private boolean isEmpty() {
        return size == 0;
    }

    public int size() {
        return size;
    }

    public void addElem( E elem) {

        first = new Node<>(elem, first);

        size++;

        assert !isEmpty() : "empty!";
        assert first().equals(elem) : "wrong element";

    }

    public E first() {

        assert !isEmpty() : "empty!";

        return first.Elem;

    }

    public void remover(E key) {

        assert !isEmpty() : "empty!";

        remover(key, first);

    }

    private void remover(E key, Node<E> node) {

        if (node != null && node.Elem != key) {

            remover(key, node.next);

        } else if (node.Elem == key) {

            node = node.next;
            size--;

        }

        first = node;
    }

    public E search(E key) {

        assert !isEmpty() : "empty!";

        return search(key, first);

    }

    private E search(E key, Node<E> node) {

        if (node == null) {
            return null;
        }
        if (node.Elem == key) {
            return node.Elem;
        }

        return search(key, node.next);

    }

    public Iterator<E> iterator() {
        return new Iterato();
    }

    private class Iterato implements Iterator<E> {

        public Node<E> node = first;

        @Override
        public boolean hasNext() {
            return node.next != null;
        }

        @Override
        public E next() {
            E elem = node.Elem;
            node = node.next;
            return elem;
        }
    }

    public class Node<E> {

        final E Elem;
        Node<E> next;

        Node(E Elem, Node<E> next) {

            this.Elem = Elem;
            this.next = next;
        }

        Node(E Elem) {

            this.Elem = Elem;
            this.next = null;

        }
    }
}
