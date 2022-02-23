package Aula_2;

public class A2_EX1_Class_LinkedList<E> {
    
    private KeyValueNode<E> first = null;
    private int size = 0;
     
    private boolean isEmpty() { return size == 0; }
    
    public int size(){ return size; }
    
    public void addFirst(int key,E elem) {
        
        first = new KeyValueNode<>(key, elem, first);
   
        size++;

        assert !isEmpty(): "empty!";
        assert first().equals(elem) : "wrong element";
    
    }
  
    public E first() { 
	
        assert !isEmpty(): "empty!";

	return first.Elem;
    
    }
  
    public void remover(int key) {
        
        assert !isEmpty(): "empty!";
   
        remover(key,first);
   
    }
    
    private void remover(int key ,KeyValueNode <E> node ) {
	
        if (node != null && node.Key != key) {
	   
	    remover(key,node.next);
             
        }		
        
        else if(node.Key == key) {
            
            node = node.next;
            size--;
       
        }
            
        first=node; 
    }
    

    public  KeyValueNode<E> search(int key) {
        
        assert !isEmpty(): "empty!";
        
        return search(key,first);
   
    }
    
    private KeyValueNode<E> search( int key ,KeyValueNode <E> node ) {
	
        if (node == null) { return null; }
        if(node.Key == key) { return node; }
        
        return search(key,node.next);
    
    }

public KeyValueNode<E>[] print() {
	 
        assert !isEmpty(): "empty!";
        
        KeyValueNode<E>[]a=new KeyValueNode[size];
        
        return print(first,a,0);
        
    }

    private KeyValueNode<E>[] print(KeyValueNode<E> n,KeyValueNode<E>[]a,int i){
  
        if(n!=null && i<size){
           
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


