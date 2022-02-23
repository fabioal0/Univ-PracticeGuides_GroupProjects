import static java.lang.System.*;
import java.util.Scanner;

public class P91 {

  public static void main(String[] args) {
    NumberArray na = new NumberArray();
    mergeSort(na.array(), 0, na.length());
    na.print();
  }

	static void mergeSort(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    assert (validSubarray(paramArrayOfInt, paramInt1, paramInt2));
    if (paramInt2 - paramInt1 > 1)
    {
      int i = (paramInt2 + paramInt1) / 2;
      mergeSort(paramArrayOfInt, paramInt1, i);
      mergeSort(paramArrayOfInt, i, paramInt2);
      mergeSubarrays(paramArrayOfInt, paramInt1, i, paramInt2);
    }
    assert (isSorted(paramArrayOfInt, paramInt1, paramInt2));
  }
  
  static void mergeSubarrays(int[] paramArrayOfInt, int paramInt1, int paramInt2, int paramInt3){
    
    assert (validSubarray(paramArrayOfInt, paramInt1, paramInt2));
    assert (validSubarray(paramArrayOfInt, paramInt2, paramInt3));
    
		int[] arrayOfInt = new int[paramInt3 - paramInt1];
    
		int i = paramInt1;
		int j = paramInt2;
		int k = 0;
    
    while ((i < paramInt2) && (j < paramInt3)) {
      
      if (paramArrayOfInt[i] < paramArrayOfInt[j]) {
		arrayOfInt[(k++)] = paramArrayOfInt[(i++)];
      } 
      else {
		arrayOfInt[(k++)] = paramArrayOfInt[(j++)];
      }
    }
    
    while (i < paramInt2) {
      
		arrayOfInt[(k++)] = paramArrayOfInt[(i++)];
    
    }
    
    while (j < paramInt3) {
    
		arrayOfInt[(k++)] = paramArrayOfInt[(j++)];
    
    }
    
    System.arraycopy(arrayOfInt, 0, paramArrayOfInt, paramInt1, paramInt3 - paramInt1);
    
    assert (isSorted(paramArrayOfInt, paramInt1, paramInt3));
 
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




