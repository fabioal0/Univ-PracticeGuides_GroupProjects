import static java.lang.System.*;

public class p64{

  public static void main(String[] args) {
    printArray(args, args.length);
  }

  /** Imprime as N primeiras strings do array, uma por linha. */
  public static void printArray(String[] array, int N) {
		
  if (N>=0)printArray(array,N-1);
  
  if(N>=0 && N < array.length){
	
	invertString(array[N],array[N].length());
	
  
  out.println();
  }}
  
public static void invertString(String N,int l) {
	
	if(l>0){
	
	out.print(N.charAt(l-1));
	invertString(N,l-1);
 }
}



}
