package p2utils;

/**
 * A basic singly LinkedList implementation.
 *
 * @author Luis Moura, using P2 class guides
 */

public class LinkedList<E> {

//---------------- NESTED NODE CLASS ---------------- 
/**
 * Is nested to avoid generics error on compile.
 * Node of a singly linked list, which stores a reference to its
 * element and to the subsequent node in the list (or null if this
 * is the last node).
 */
private static class Node<E> {

//--- Variables --------------------------------------------------------
/** The element stored at this node */
	final E elem;

/** A reference to the subsequent node in the list */
	Node<E> next;
    
//--- Constructors -----------------------------------------------------
/**
 * Creates a node with the given element and next node.
 *
 * @param e  the element to be stored
 * @param n  reference to a node that should follow the new node
 */
	Node(E e, Node<E> n) {
		elem = e;
		next = n;
	}
	
	
/**
 * Creates a node with the given element and null next node.
 * @param e  the element to be stored
 */
	Node(E e) {
		elem = e;
		next = null;
	}
	
}
//----------- end of nested Node class ---------------------------------


//--- IMPLEMENTATION OF LINKEDLIST CLASS--------------------------------
//--- Variables --------------------------------------------------------
/** The head node of the list */
	private Node<E> first = null;

/** The last node of the list */
	private Node<E> last = null;

/** Number of nodes in the list */
	private int size = 0;


//--- Constructors -----------------------------------------------------
/** Constructs an initially empty list. */
	public LinkedList() { }


//--- Access methods - Getters and Setters ---------------------------------------------------
/**
 * Returns the number of elements in the linked list.
 * @return number of elements in the linked list
 */
	public int size() {
		return size;
	}

/**
 * Tests whether the linked list is empty.
 * @return true if the linked list is empty, false otherwise
 */
	public boolean isEmpty() {
		return (size == 0);
	}

/**
 * Returns (but does not remove) the first element of the list
 * @return element at the front of the list (or null if empty)
 */
	public E first() {
	assert !isEmpty(): "Empty";
		return first.elem;
	}

/**
 * Returns (but does not remove) the last element of the list.
 * @return element at the end of the list (or null if empty)
 */
	public E last() {
	assert !isEmpty(): "Empty";
		return last.elem;
	}


//--- Class Methods ----------------------------------------------------
/**
 * Adds an element to the front of the list.
 * @param e  the new element to add
 */
	public void addFirst(E e) {
		first = new Node<E>(e, first);
		if (isEmpty()) {
			last = first;
		}
		size++;
	
	assert !isEmpty(): "ERROR: is empty after adding";
	assert first().equals(e): "Wrong element in first position after adding";
	}


/**
 * Adds an element to the end of the list.
 * @param e  the new element to add
 */
	public void addLast(E e) {
		Node<E> newest = new Node<E>(e);
		if (isEmpty()) {
			first = newest;
		} else {
			last.next = newest;
		}
		last = newest;
		size++;
	
	assert !isEmpty(): "ERROR: is empty after adding";
	assert last().equals(e): "Wrong element in first position after adding"; 
	}


/**
 * Removes the first Node of the list. Next Node becomes first.
 */
	public void removeFirst() {
	assert !isEmpty(): "Empty";
		first = first.next;
		size--;
		if (isEmpty()) {
			last = null;
		}
	}
	

/**
 * Clears the list.
 */
	public void clear() {
	assert !isEmpty(): "Empty";
		first = last = null;
		size = 0;
	assert isEmpty(): "List was not cleared";
	}


/**
 * Prints the list - One elemente per line
 */
	public void print() {
		print(first);
	}
	private void print(Node<E> n) {
		if (n != null) {
			System.out.println(n.elem);
			print(n.next);
		}
	}

	
/**
 * Clones given list into a new list
 */
	public LinkedList<E> clone() {
	assert (!isEmpty()): "Empty";
	
		LinkedList<E> cln = new LinkedList<E>();
		clone(first, cln);
		return cln;
	}
	private void clone(Node<E> n, LinkedList<E> cln) {
		if (n != null) {
			cln.addLast(n.elem);
			clone(n.next, cln);
		}
	}


/**
 * Reverses given list into a new list
 */
	public LinkedList<E> reverse() {
	assert (!isEmpty()): "Empty";
	
		LinkedList<E> rev = new LinkedList<E>();
		reverse(first, rev);
		return rev;
	}
	private void reverse(Node<E> n, LinkedList<E> rev) {
		if (n != null) {
			rev.addFirst(n.elem);
			reverse(n.next, rev);
		}
	}
	

/**
 * Returns element of given position
 * @param pos  integer that varies between 0 and size-1 
 */
	public E get(int pos) {
	assert (!isEmpty()): "Empty";
	assert ((pos >= 0) && (pos < size())): "Position out of bounds";
	
		return get(first, pos);
	}
	private E get(Node<E> n, int pos) {
		if (pos == 0) {
			return n.elem;
		} else {
			return get(n.next, pos-1);
		}
	}


/**
 * Concatenates two lists
 * @param lst is the list to be concatenated after this.list 
 */
	public LinkedList<E> concatenate(LinkedList<E> lst) { // concatenates to new list
	assert (!isEmpty()): "Empty";
	
		return concatenate(this.clone(), lst.first);
	}
	private LinkedList<E> concatenate(LinkedList<E> isThis, Node<E> l) {
		if (l == null) {
			return isThis;
		} else {
			isThis.addLast(l.elem);
			return concatenate(isThis, l.next);
		}
	}


/**
 * Returns true if the list contains given element
 * @param e is the element to be searched 
 */
	public boolean contains(E e) {
	assert (!isEmpty()): "Empty";
	assert e != null: "Element is null";
	
		return contains(first, e);
	}
	private boolean contains(Node<E> n, E e) {
		if (n == null || e == null) {
			return false;
		}
		
		if (n.elem.equals(e)) {
			return true;
		}
		else {
			return contains(n.next, e);
		}
	}


/**
 * Removes first ocorrence of given element
 * @param e is the element to be removed
 */
   
//--- My version, easier to understand in my opinion, equaly efficient -
//--- Uses a double linked Node ---
   
	//~ public void remove(E e) {
	//~ assert contains(e);
	//~ assert isEmpty();
		
		//~ if (first.elem.equals(e)) {
			//~ first = first.next;
		//~ } else {
			//~ remove(first.next, first, e);
		//~ }
		//~ size--;
	//~ }
	//~ private void remove(Node<E> current, Node<E> previous, E e) {
		//~ if (current != null) {
			//~ if (current.elem.equals(e)) {
				//~ previous.next = current.next;
			//~ }
			//~ else {
				//~ remove(current.next, previous.next, e);
			//~ }
		//~ }
	//~ }

//--- Teacher version, simpler code, equaly efficient ------------------

	public void remove(E e) {
		assert contains(e): "List doen not contain element";
		assert isEmpty(): "List is empty";
		
		first = remove(first,e);
		size--;
	}
	private Node<E> remove(Node<E> n,E e){
		if (n.elem.equals(e)) {
			return n.next;
		} else {
			n.next = remove(n.next,e);
			if (n.next == null) { last = n; }
		}
		return n;
	}


/**
 * Converts list into string format: [first.elem,e2,..., last.elem]
 */
	public String toString() {
		if (size()==0) { 
			return "[ ]";
		}	
		String s = "[" + first.elem.toString();
		
		if (size()==1) { 
			return s + "]";
		}
		Node<E> n = first.next;
		while (n!=null) {
			System.out.println("------------" + s);
			s += ("," + n.elem.toString());
			n = n.next;
		}
		
		System.out.println(s+"]");
		return s + "]";
	}


/**
 * Returns number of ocorrences of given element
 * @param e is the element to be counted
 */
// --- ITERATIVE ---
	//~ public int count(E e) {
		//~ int count = 0;
		//~ Node<E> n = first;
		//~ for (int i = 0; i < size; i++) {
			//~ if (n.elem.equals(e)) {
				//~ count++;
			//~ }
			//~ n = n.next;
		//~ }
		//~ return count;
	//~ }
		
	
// --- RECURSIVE ---
	public int count(E e) {
		assert e != null : "Element is null";
		return count(e, first);
	}
	private int count(E e, Node<E> n) {
		
		if (n == null) {
			return 0;
		}
		if (n.elem.equals(e)) {
			return 1 + count(e, n.next);
		}
		return count(e, n.next);
	}
	

/**
 * Returns the position of the first ocurrence of given element
 * @param e is the element to be searched 
 */
 // --- ITERATIVE ---
	//~ public int indexOf(E e) {
		//~ int count = 0;
		//~ Node<E> n = first;
		//~ for (int i = 0; i < size; i++) {
			//~ if (n.elem.equals(e)) {
				//~ return count;
			//~ }
			//~ count++;
			//~ n = n.next;
		//~ }
		//~ return count;
	//~ }

 // --- RECURSIVE ---
	public int indexOf(E e) {
	assert (!isEmpty()): "Empty";
	assert e != null: "Element is null";
	
		return indexOf(first, e);
	}
	private int indexOf(Node<E> n, E e) {
		if (n == null) {
			return -1;
		}
		if (n.elem != null && n.elem.equals(e)) {
			return 0;
		}
		int count = indexOf(n.next, e);
		if (count == -1)
			return -1;
		return count + 1;
	}


/**
 * Clones the list and replaces every ocurrence of given element
 * @param x is the element to be replaced
 * @param y is the element to replace x in cloned list
 */
 // --- ITERATIVE ---
 
 // --- RECURSIVE ---
	public LinkedList<E> cloneReplace(E x, E y) {
		assert !isEmpty() : "Empty";
		assert x != null : "Element to be replaced is null";
		assert y != null : "Element to place in cloned list is null";
		
		LinkedList<E> cln = new LinkedList<E>();
		return cloneReplace(x, y, first, cln);
	}
	private LinkedList<E> cloneReplace(E x, E y, Node<E> n, LinkedList<E> cln) {
		if (n == null) {
			return cln;
		}
		else if (n.elem.equals(x)) {
			cln.addLast(y);
		}
		else {
			cln.addLast(n.elem);
		}
		return cloneReplace(x, y, n.next, cln);
	}
	
	
/**
 * Clones sublist of this list from start to end-1
 * @param start is the first element of the sublist
 * @param end is the element after the last element of the sublist
 * @return returns sublist
 */
// --- ITERATIVE ---

// -- RECURSIVE ---
	public LinkedList<E> cloneSublist(int start, int end) {
		assert (end >= start) : "End cannot be bigger than start";
		assert (end - start) > 0 : "Sublist is a single Node";
		
		int count = 0;
		Node<E> n = this.first;
		for (int i = 0; i < start; i++) {
			n = n.next;
		}
		LinkedList<E> cln = new LinkedList<E>();
		
		return cloneSublist(n, count, end, cln);
		
	}	
	private LinkedList<E> cloneSublist(Node<E> n, int count, int end, LinkedList<E> cln) {
		if (count == end) {
			return cln;
		}
		else {
			cln.addLast(n.elem);
			return cloneSublist(n.next,count+1,end,cln);
		}
	}
	
	
/**
 * Clones list except elements of sublist from start to end-1
 * @param start is the first element of the sublist
 * @param end is the element after the last element of the sublist
 * @return returns clone of list except given sublist
 */
// --- ITERATIVE ---

// -- RECURSIVE ---
	public LinkedList<E> cloneExceptSublist(int start, int end) {
		assert (end >= start) : "End cannot be bigger than start";
		assert (end - start) > 0 : "Sublist is a single Node";
		
		LinkedList<E> cln = new LinkedList<E>();
		return cloneExceptSublist(first, 0, start, end, cln);
	}
	private LinkedList<E> cloneExceptSublist(Node<E> n, int count, int start, int end, LinkedList<E> cln) {
		if (count == size) {
			return cln;
		}
		if (count < start || count >= end) {
			cln.addLast(n.elem);
		}
		return cloneExceptSublist(n.next, count+1, start, end, cln);
	}
	
	
/**
 * Removes Sublist from list from start to end-1
 * @param start is the first element of the sublist
 * @param end is the element after the last element of the sublist
 * @return returns clone of list except given sublist
 */
// --- ITERATIVE ---

// -- RECURSIVE ---	
	public void removeSublist(int start, int end) {
		assert (end >= start) : "End cannot be bigger than start";
		assert (end - start) > 0 : "Sublist is a single Node";
		
		int count = 0;
		first = removeSublist(first, count, start, end);
		size -= (end - start);
	}
	public Node<E> removeSublist(Node<E> n, int count, int start, int end) {
		if (count < start) {  // want to keep n - before interval, do nothing evaluate next
			n.next = removeSublist(n.next, count+1, start, end);
		}
		if (count >= start && count < end) { // want to discard n, inside interval,
			return removeSublist(n.next, count+1, start, end);
		}
		if (n.next == null) { last = n; } 
		return n;
	}
	
}
