package p2utils;

public class LinkedList<E>
{
  public int size()
  {
    return this.size;
  }
  
  public boolean isEmpty()
  {
    return this.size == 0;
  }
  
  public E first()
  {
    assert (!isEmpty()) : "empty!";
    
    return (E)this.first.elem;
  }
  
  public E last()
  {
    assert (!isEmpty()) : "empty!";
    
    return (E)this.last.elem;
  }
  
  public void addFirst(E paramE)
  {
    this.first = new Node(paramE, this.first);
    if (isEmpty()) {
      this.last = this.first;
    }
    this.size += 1;
    
    assert (!isEmpty()) : "empty!";
    assert (first().equals(paramE)) : "wrong element";
  }
  
  public void addLast(E paramE)
  {
    Node localNode = new Node(paramE);
    if (isEmpty()) {
      this.first = localNode;
    } else {
      this.last.next = localNode;
    }
    this.last = localNode;
    this.size += 1;
    
    assert (!isEmpty()) : "empty!";
    assert (last().equals(paramE)) : "wrong element";
  }
  
  public void removeFirst()
  {
    assert (!isEmpty()) : "empty!";
    this.first = this.first.next;
    this.size -= 1;
    if (isEmpty()) {
      this.last = null;
    }
  }
  
  public void clear()
  {
    this.first = (this.last = null);
    this.size = 0;
  }
  
  private Node<E> first = null;
  private Node<E> last = null;
  private int size = 0;
  
  public String toString()
  {
    String str1 = "";
    String str2 = "";
    for (Node localNode = this.first; localNode != null; localNode = localNode.next)
    {
      str2 = str2 + str1 + localNode.elem;
      str1 = ", ";
    }
    return "[" + str2 + "]";
  }
  
  public LinkedList<E> clone()
  {
    return clone(this.first);
  }
  
  private LinkedList<E> clone(Node<E> paramNode)
  {
    if (paramNode == null) {
      return new LinkedList();
    }
    LinkedList localLinkedList = clone(paramNode.next);
    localLinkedList.addFirst(paramNode.elem);
    return localLinkedList;
  }
  
  public LinkedList<E> reverse()
  {
    return reverse(this.first);
  }
  
  private LinkedList<E> reverse(Node<E> paramNode)
  {
    if (paramNode == null) {
      return new LinkedList();
    }
    LinkedList localLinkedList = reverse(paramNode.next);
    localLinkedList.addLast(paramNode.elem);
    return localLinkedList;
  }
  
  public E get(int paramInt)
  {
    assert (paramInt < this.size);
    return (E)get(this.first, paramInt);
  }
  
  private E get(Node<E> paramNode, int paramInt)
  {
    if (paramInt == 0) {
      return (E)paramNode.elem;
    }
    return (E)get(paramNode.next, paramInt - 1);
  }
  
  public LinkedList<E> concatenate(LinkedList<E> paramLinkedList)
  {
    return concatenate(this.first, paramLinkedList);
  }
  
  private LinkedList<E> concatenate(Node<E> paramNode, LinkedList<E> paramLinkedList)
  {
    if (paramNode == null) {
      return paramLinkedList.clone();
    }
    LinkedList localLinkedList = concatenate(paramNode.next, paramLinkedList);
    localLinkedList.addFirst(paramNode.elem);
    return localLinkedList;
  }
  
  public boolean contains(E paramE)
  {
    return contains(this.first, paramE);
  }
  
  private boolean contains(Node<E> paramNode, E paramE)
  {
    if (paramNode == null) {
      return false;
    }
    if (paramNode.elem == null) {
      return paramE == null;
    }
    if (paramNode.elem.equals(paramE)) {
      return true;
    }
    return contains(paramNode.next, paramE);
  }
  
  public void remove(E paramE)
  {
    assert (contains(paramE)) : "Element does not exist";
    this.first = remove(this.first, paramE);
    this.size -= 1;
    if (isEmpty()) {
      this.last = null;
    }
  }
  
  private Node<E> remove(Node<E> paramNode, E paramE)
  {
    if (paramNode.elem.equals(paramE)) {
      return paramNode.next;
    }
    paramNode.next = remove(paramNode.next, paramE);
    if (paramNode.next == null) {
      this.last = paramNode;
    }
    return paramNode;
  }
}
