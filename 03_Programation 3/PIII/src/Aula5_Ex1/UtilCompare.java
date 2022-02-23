package Aula5_Ex1;

import java.util.Arrays;

public class UtilCompare {

    public static <T> Comparable<T> findMax(Comparable<T>[] a) {
        
        int max = 0;
    
        for ( int i = 1; i < a.length; i++ )

            if (a[i] != null && a[i].compareTo((T) a[max]) > 0)

                max = i;
    
        return a[max];

    }
           
    public static  <T> Comparable<T> []sortArray(Comparable<T>[] a){
    
        Arrays.sort(a);
       
        return a;
        
    }

}
