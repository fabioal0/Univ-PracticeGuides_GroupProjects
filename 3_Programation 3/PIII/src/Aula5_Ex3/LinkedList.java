
package Aula5_Ex3;  
    
public class LinkedList<E> {
  
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
    

    public E search(int key) {
        
        assert !isEmpty(): "empty!";
        
        return search(key,first);
   
    }
    
    private E search( int key ,KeyValueNode <E> node ) {
	
        if (node == null) { return null; }
        if(node.Key == key) { return node.Elem; }
        
        return search(key,node.next);
    
    }

    public E[] print( E []a) {
	 
        assert !isEmpty(): "empty!";
        
        return print(first,a,0);
        
    }

    private E[] print(KeyValueNode<E> n, E []a, int i){
  
        if(n!=null && i<size){
           
            a[i]=n.Elem;
            i++;
            print(n.next,a,i);
            
        }
      
        return a;
        
    }
    
    
}
