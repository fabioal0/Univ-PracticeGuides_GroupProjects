import static java.lang.System.*;
import java.util.Scanner;

public class P92 {

  public static void main(String[] args) {
    NumberArray na = new NumberArray();
    insertionSort(na.array(), 0, na.length());
    na.print();
  }

  static void insertionSort(int[] a, int start, int end) {
    {
	assert validSubarray(a, start, end);
	
		for(int i = start+1;i < end;i++){

			int j;
			int v = a[i];

		for(j = i-1;j >= start && a[j] > v;j--)
	
			a[j+1] = a[j];
			a[j+1] = v;
	}
	assert isSorted(a, start, end);
}

  }
	static boolean validSubarray(int[] paramArrayOfInt, int paramInt1, int paramInt2)
	  {
		return (paramArrayOfInt != null) && (paramInt1 >= 0) && (paramInt1 <= paramInt2) && (paramInt2 <= paramArrayOfInt.length);
	  }
	static boolean isSorted(int[] paramArrayOfInt, int paramInt1, int paramInt2)
	  {
	   
	   assert (validSubarray(paramArrayOfInt, paramInt1, paramInt2));
		
		boolean bool = true;
	   
		for (int i = paramInt1 + 1; (bool) && (i < paramInt2); i++) {
	   
		  bool = paramArrayOfInt[i] >= paramArrayOfInt[(i - 1)];
	   
		}
	   
		return bool;
	  }
}

