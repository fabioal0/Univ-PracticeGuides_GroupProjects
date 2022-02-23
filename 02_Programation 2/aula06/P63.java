import static java.lang.System.*;

public class P63{

  public static void main(String[] args) {
    printArray(args, args.length);
  }

  /** Imprime as N primeiras strings do array, uma por linha. */
  public static void printArray(String[] array, int N) {
		
  if(N>0 ){
  out.println(array[N]);
  printArray(array,N-1);
  }}

}




