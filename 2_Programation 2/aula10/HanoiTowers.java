import java.util.Scanner;
import p2utils.Stack;

public class HanoiTowers
{
  public static final Scanner in = new Scanner(System.in);
  private Stack<Integer> TA;
  private Stack<Integer> TB;
  private Stack<Integer> TC;
  
  public HanoiTowers(int paramInt)
  {
    assert (paramInt > 0);
    
    this.TA = new Stack();
    this.TB = new Stack();
    this.TC = new Stack();
    for (int i = paramInt; i >= 1; i--) {
      putDisk(this.TA, i);
    }
  }
  
  public void solve()
  {
    this.numMoves = 0;
    System.out.println();
    println();
    System.out.println();
    
    solve(this.TA.size(), this.TA, this.TB, this.TC);
  }
  
  public boolean solved()
  {
    return this.numMoves > 0;
  }
  
  public int numberOfMoves()
  {
    assert (solved());
    
    return this.numMoves;
  }
  
  public void println()
  {
    System.out.printf("After %d moves:\n", new Object[] { Integer.valueOf(this.numMoves) });
    System.out.println("TA: " + this.TA.toStringReverse());
    System.out.println("TB: " + this.TB.toStringReverse());
    System.out.println("TC: " + this.TC.toStringReverse());
  }
  
  private void putDisk(Stack<Integer> paramStack, int paramInt)
  {
    assert ((paramStack.isEmpty()) || (((Integer)paramStack.top()).intValue() > paramInt));
    
    paramStack.push(Integer.valueOf(paramInt));
  }
  
  private int removeDisk(Stack<Integer> paramStack)
  {
    assert (!paramStack.isEmpty());
    
    int i = ((Integer)paramStack.top()).intValue();
    paramStack.pop();
    return i;
  }
  
  private void moveDisk(Stack<Integer> paramStack1, Stack<Integer> paramStack2)
  {
    assert (!paramStack1.isEmpty());
    assert ((paramStack2.isEmpty()) || (((Integer)paramStack2.top()).intValue() > ((Integer)paramStack1.top()).intValue()));
    
    putDisk(paramStack2, removeDisk(paramStack1));
    this.numMoves += 1;
    println();
    System.out.println();
  }
  
  private void solve(int paramInt, Stack<Integer> paramStack1, Stack<Integer> paramStack2, Stack<Integer> paramStack3)
  {
    assert (paramInt >= 0);
    if (paramInt >= 1)
    {
      solve(paramInt - 1, paramStack1, paramStack3, paramStack2);
      moveDisk(paramStack1, paramStack2);
      solve(paramInt - 1, paramStack3, paramStack2, paramStack1);
    }
  }
  
  private int numMoves = 0;
}
