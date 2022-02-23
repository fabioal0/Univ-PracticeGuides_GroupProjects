import p2utils.*;

class SupermarketOrdering {
	
	HashTable<Order> ordem = new HashTable<>(20);
	private int n=0;
	private int c=0;
	private Order l;
	
	public void enterOrder(Order p){	
	ordem.set(""+(n+1),p);	
	n++;
	c++;
	}
	
	public Order serveOrder(){
	Order k= ordem.get(n+1-c);
	ordem.remove(n+1-c);
	c-1;
	return k;
	}
	
	public int query (String produto){
	
	int o=0;
	
	for(int x=0;	x<=n;	x++){
	
	l= ordem.get(""+x);
	
	if(l.prodName.equals(produto)){
	o=o+l.quantity;	
	}}	
	return o;
	}
	
	public int displayOrderedProducts (){
	
	for(int k=n+1-c;	k<=n+1;	k++){
	
	l= ordem.get(""+k);
		
	return
	}
	
}	
