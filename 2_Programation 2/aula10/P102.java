
public class P102 {
	
	public static void main (String[] args) {

  
    if (args.length != 1)
    {
      System.out.println("Usage: java -ea P102 <n>");
      System.exit(1);
    }
    int i = Integer.valueOf(args[0]).intValue();
    if (i < 1)
    {
      System.out.println("ERROR: invalid number of disks!");
      System.exit(2);
    }
    HanoiTowers localHanoiTowers = new HanoiTowers(i);
    localHanoiTowers.solve();
    System.out.println("Number of moves: " + localHanoiTowers.numberOfMoves());
  }
}

