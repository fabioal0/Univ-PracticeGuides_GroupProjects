package Aula10_Ex1;

import static java.util.Arrays.copyOfRange;
import java.util.Iterator;

public class VectorGeneric<T> {

    private Object[] vetor = new Object[0];

    public boolean addElem(T elem) {

        vetor = copyOfRange(vetor, 0, vetor.length + 1);

        vetor[vetor.length-1] = elem;

        return vetor[vetor.length-1] == elem;

    }

    public boolean removeElem(T elem) {
        boolean exists = false;

        for (int i = 0; i < vetor.length; i++) {
            if (vetor.equals(elem)) {
                exists = true;
            }
            if (exists = true && i - 1 < vetor.length) {
                vetor[i] = vetor[i + 1];
            }
        }

        if (exists) {
            vetor = copyOfRange(vetor, 0, vetor.length - 1);
            return true;
        }
        return false;

    }

    public int totalElem() {
        return vetor.length;
    }

    public Iterator<T> iterator() {
        return new VectorIterator();
    }

    private class VectorIterator implements Iterator<T> {

        private int i = 0;

        @Override
        public boolean hasNext() {
            return i < vetor.length;
        }

        @Override
        public T next() {
            i++;
            return (T) vetor[i-1];
        }

    }

}
