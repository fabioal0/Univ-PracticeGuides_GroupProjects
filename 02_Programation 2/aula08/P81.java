import static java.lang.System.*;

public class P81
{
  public static void main(String[] args)
  {
    double[] arr = new double[args.length];
    // Preencher arr com os valores obtidos dos argumentos.
    //...

    out.printf("sum of arguments = %f\n", sumRec(arr, 0, arr.length));
    // Verificação de correção:
    assert sumRec(arr, 0, arr.length) == sum(arr, 0, arr.length);
  }

  // sum of subarray [start,end[ of arr:
  public static double sum(double[] arr, int start, int end)
  {
    assert arr != null;
    assert start >= 0 && start <= end && end <= arr.length;

    double res = 0;
    for(int i = start; i < end; i++)
      res += arr[i];
    return res;
  }

  // same thing, recursive:
  public static double sumRec(double[] arr, int start, int end)
  {
    //...
  }

}

