import static java.lang.System.*;
import java.util.Arrays;    // to use Java's array operations

public class P93
{
  static public void main(String[] args)
  {
    if (args.length != 1)
    {
      err.println("Test sorting algorithms for a N number array.");
      err.println("Usage: java -ea P93 <N>");
      exit(1);
    }

    int n = Integer.valueOf(args[0]);
    // Create 3 arrays, each with n numbers, in 3 different orders:
    int[][] arrays = new int[3][];
    arrays[0] = randomArray(n, n/2);    // random numbers, random order
    arrays[1] = arrays[0].clone();
    Arrays.sort(arrays[1]);             // same numbers, in increasing order
    arrays[2] = reverseOf(arrays[1]);   // same numbers, in decreasing order
    
    // Labels for these arrays:
    String[] arrayType = {"random", "increasing", "decreasing"};

    // Labels for algorithms to test:
    String[] algorithm = {"Sequential", "Bubble", "Insertion", "Merge"};

    out.printf("%-10s | %-10s | %8s | %12s | %12s | %10s | %-4s\n",
    "Algorithm", "Array", "Size",
        "Assignments", "Comparisons", "Time (s)", "OK?");
    for(int i = 0; i < algorithm.length; i++) {
      out.printf("-----------|------------|----------|--------------|--------------|------------|------\n");
      for(int j = 0; j < 3; j++) {
        int[] aCopy = arrays[j].clone();  // new int[n]; arraycopy(arrays[j], 0, aCopy, 0, n);
        
        startMeasuring();

        if(i == 0)
          sequentialSort(aCopy, 0, aCopy.length);
        else if(i == 1)
          bubbleSort(aCopy, 0, aCopy.length);
        else if(i == 2)
          insertionSort(aCopy, 0, aCopy.length);
        else if(i == 3)
          mergeSort(aCopy, 0, aCopy.length);

        stopMeasuring();

        // Check if sorting worked (by comparing with Java's sort result):
        String worked = Arrays.equals(aCopy, arrays[1])? "OK" : "FAIL";

        out.printf("%-10s | %-10s | %8d | %12d | %12d | %10.6f | %-4s\n",
            algorithm[i], arrayType[j], n, assignCount, comparisonCount, elapsedTime, worked);
      }
    }
  }

  // Fields to measure times:
  static long startTime;  // start time of latest measurement (in nanoseconds)
  static double elapsedTime;  // seconds elapsed in latest measurement

  // Fields to count operations: 
  static long assignCount = 0L;
  static long comparisonCount = 0L;

  // Start a new measurement
  static void startMeasuring() {
    assignCount = 0L;
    comparisonCount = 0L;
    startTime = nanoTime();
  }

  // Stop a measurement (determine elapsedTime)
  static void stopMeasuring() {
    elapsedTime = (double)(nanoTime() - startTime) * 1e-9;
  }

  /**
   * Creates an array filled with random integers in the interval [0; max].
   * @param len length of the array.
   * @param max maximum random value.
   * @return the array
   */
  static int[] randomArray(int len, int max) {
    assert len >= 0;
    assert max >= 0;

    int[] result = new int[len];
    for (int i = 0; i < len; i++)
      result[i] = (int)(Math.random()*(max+1));
    return result;
  }

  /** Reverse copy of array.
   * @param a original array
   * @return an array with the elements of a, in reverse
   */
  static int[] reverseOf(int[] a) {
    int len = a.length;
    int[] result = new int[len];
    for (int i = 0; i < len; i++)
      result[i] = a[len-1-i];
      
    return result;
  }

  /**
   * Swaps two elements of an integer array.
   * @param a the array
   * @param i index of an element to swap
   * @param j index of the other element to swap
   * {@code i},{@code j} must be valid indexes within array {@code a}
   */
  static void swap(int[] a, int i, int j) {
    assert a!=null;
    assert 0<=i && i<a.length;
    assert 0<=j && j<a.length;

    int temp = a[i];
    a[i] = a[j];
    assignCount++;
    a[j] = temp;
    assignCount++;

  }

  /**
   * Sequential sort ("greedy" variation of selection sort).
   * Increasing sorting of integer subarray a[start..end[
   * @param a      the array to be (partially) sorted.
   * @param start  index of the first element to sort.
   * @param end    index of the first element not to be sorted (the last element to sort is {@code end-1}).
   * Requires:   a!=null and 0 <= start <= end <= a.length
   * Ensures:  The elements a[k] with start <= k < end are sorted.  the remaining elements are not changed.
   */
  static void sequentialSort(int[] a, int start, int end) {
    assert a!=null;
    assert 0<=start && start<=end && end<=a.length;
		comparisonCount=0;
	assignCount=0;
	
    for (int i=start; i<end-1; i++) { // For each element (except the last):
      for (int j=i+1; j<end; j++) {   // Scan every following element
        if (a[j] < a[i]) {            // compare them
          comparisonCount++;
          swap(a, i, j);              // if necessary, swap them

        }
      }
    }
  }

  /**
   * Bubble sort.
   */
  static void bubbleSort(int[] a, int start, int end) {
    assert a!=null;
    assert 0<=start && start<=end && end<=a.length;
	comparisonCount=0;
	assignCount=0;
    int f = end;
    boolean existsSwap;
    do {
      existsSwap = false;
      for(int i=start; i<f-1; i++) {
        if (a[i] > a[i+1]) {
          comparisonCount++;
          swap(a, i, i+1);
          existsSwap = true;
        }
      }
      f--;
    } while (f>start+1 && existsSwap);
  }

  /** Ordena????o por inser????o, (variante com inser????o sequencial). */
  static void insertionSort(int[] a, int start, int end) {
    {
	assert validSubarray(a, start, end);
		comparisonCount=0;
	assignCount=0;
		for(int i = start+1;i < end;i++){
		
			int j;
			int v = a[i];
			
			
		for(j = i-1;j >= start && a[j] > v;j--){
			 comparisonCount++;
			a[j+1] = a[j];
			assignCount++;
			}
			a[j+1] = v;
			assignCount++;
	}
	assert isSorted(a, start, end);
}

  }

  /** Merge sort */

static void mergeSort(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    assert (validSubarray(paramArrayOfInt, paramInt1, paramInt2));
    	comparisonCount=0;
	assignCount=0;
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
    
    comparisonCount=0;
	assignCount=0;
		int[] arrayOfInt = new int[paramInt3 - paramInt1];
    
		int i = paramInt1;
		int j = paramInt2;
		int k = 0;
    
    while ((i < paramInt2) && (j < paramInt3)) {
		
      
      if (paramArrayOfInt[i] < paramArrayOfInt[j]) {
		comparisonCount++;
		arrayOfInt[(k++)] = paramArrayOfInt[(i++)];
      assignCount++;
      } 
      else {
		comparisonCount++;
		arrayOfInt[(k++)] = paramArrayOfInt[(j++)];
		assignCount++;
      }
    }
    
    while (i < paramInt2) {
assignCount++;
		arrayOfInt[(k++)] = paramArrayOfInt[(i++)];
		
    
    }
    
    while (j < paramInt3) {
     assignCount++;
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

