package Aula_4;

public class KeyValueNode <E>{
    
  final int Key;
  final E Elem;
  KeyValueNode<E> next;

  KeyValueNode(int Key, E Elem, KeyValueNode<E> next) {
    
    this.Key  = Key;
    this.Elem = Elem;
    this.next = next;
  }

  KeyValueNode(int Key, E Elem) {
      
    this.Key  = Key;
    this.Elem = Elem;
    this.next = null;
    
  }
}

