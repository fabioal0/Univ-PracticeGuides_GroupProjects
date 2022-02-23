
package Aula_1;

public class A1_EX2_Class_LinkedList<E> {
 
    private KeyValueNode<E> First = null;
    private int Size = 0;
    
    private boolean isEmpty() { return Size == 0; }
    
    public int size(){return Size;} 

    public void addFirst(int Key, E Elem) {
        
        First = new KeyValueNode<>(Key, Elem, First);
   
        Size++;

        assert !isEmpty(): "empty!";
        assert first().equals(Elem) : "wrong element";
    
    }
  
    private E first() {
	
        assert !isEmpty(): "empty!";

	return First.Elem;
    
    }
  
    public void remover(int CC) {
        
        assert !isEmpty(): "empty!";
   
        remover(CC, First);
   
    }
    
    private void remover(int CC ,KeyValueNode <E> n ) {
	
        if (n != null && n.Key != CC) {
	   
	    remover(CC,n.next);
            First=n; 
        }		
        
        else if(n.Key == CC) {
            
            n = n.next;
            Size--;
       
        }
            
    }

    public KeyValueNode<E>[] print() {
	 
        assert !isEmpty(): "empty!";
        
        KeyValueNode<E>[]a=new KeyValueNode[Size];
        
        return print(First,a,0);
        
    }

    private KeyValueNode<E>[] print(KeyValueNode<E> n,KeyValueNode<E>[]a,int i){
  
        if(n!=null && i<Size){
           
            a[i]=n;
            i++;
            print(n.next,a,i);
            
        }
      
        return a;
        
    }
    
}  


class KeyValueNode<E> {

  final int Key;
  final E Elem;
  KeyValueNode<E> next;

  KeyValueNode(int k, E e, KeyValueNode<E> n) {
    Key  = k;
    Elem = e;
    next = n;
  }

  KeyValueNode(int k, E e) {
    Key  = k;
    Elem = e;
    next = null;
  }

}

