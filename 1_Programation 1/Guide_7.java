import java.util.Scanner;

public class Guide_7 {
	
	static Scanner sc = new Scanner(System.in);	
	
	public static void main (String[] args) 
	{
		boolean finish = false;
		int select = 0;

		System.out.println("Chose a number (1-3) to select the exercise or chose any other number to finish the program execution:\n");

		System.out.println("1 - Enter the hours that an activity ended and print them.");
		System.out.println("2 - Calculate the sum of the distances from all points inserted to the origin and show the furthest point.\n");

		do
		{
			System.out.print("Exercise number: ");
			select = sc.nextInt();
			
			System.out.println();
			
			switch(select)
			{
				case 1: 
					exercise_1(); 
					break;
				case 2:
					exercise_2();
					break;
				default:
					finish = true;
			}
		}while(!finish);
	}

	// Enter the hours that an activity ended and print them.
	public static void exercise_1 ()
	{
		Hours start = new Hours(9, 23, 5);  
		Hours end;  
		
		System.out.println("When does it end?");
		end = readHours();

		System.out.printf("Start hours: %sEnd hours: %s\n", start.toString(), end.toString());
	}

	public static Hours readHours(){
		   
		int hours;
		int minutes;
		int seconds;

		System.out.println();

		do
		{
			System.out.print("Hours: ");	
			hours = sc.nextInt();
		}while(hours < 0 || hours > 23);
		
		do
		{
			System.out.print("Minutes: ");	
			minutes = sc.nextInt();
		}while(minutes < 0 || minutes > 59);

		do
		{
			System.out.print("Seconds: ");	
			seconds = sc.nextInt();
		}while(seconds < 0 || seconds > 59);

		System.out.println();

		return new Hours(hours, minutes, seconds);
	}
	   
	// Calculate the sum of the distances from all points inserted to the origin and show the furthest point.
	public static void exercise_2 ()
	{
		Point2D origin = new Point2D(0, 0);
		Point2D point, maximum, save;
		double sum = 0;
		int count = 0;

		save = origin;
		maximum = origin;

		do
		{
			point = readPoint();
		
			System.out.println();

			if(point.getX() != origin.getX() || point.getY() != origin.getY())
			{
				count++;

				sum += distance(origin, point);
		
				if(distance(origin, point ) > distance(origin, save))
				{
					maximum = point;
				}
				save = point;	
			}
		}
		while(point.getX() != origin.getX() || point.getY() != origin.getY());
	
		System.out.printf("The sum of the distances from the %d points to the origin is %2.1f\n", count, sum);
		System.out.printf("The furthest point is: %s\n\n", maximum.toString()); 
	}

	public static double distance(Point2D point1, Point2D point2)
	{
		return Math.sqrt(Math.pow(Math.abs(point2.getX() - point1.getX()), 2) + Math.pow(Math.abs(point2.getY() - point1.getY()), 2));
	}	

	public static Point2D readPoint()
	{
		double x,y;

		System.out.print("X: ");
		x = sc.nextDouble();
	
		System.out.print("Y: ");
		y = sc.nextDouble();
	
		return new Point2D(x, y);
	}	
}

class Hours
{   
	private int hours;
	private int minutes;
	private int seconds;

	public Hours(int hours, int minutes, int seconds)
	{
		this.hours = hours;
		this.minutes = minutes;
		this.seconds = seconds;
	}

	public void setHours(int hours)
	{
		this.hours = hours;
	}

	public void setMinutes(int minutes)
	{
		this.minutes = minutes;
	}

	public void setSeconds(int seconds)
	{
		this.seconds = seconds;
	}

	public int getHours()
	{
		return this.hours;
	}

	public int getMinutes()
	{
		return this.minutes;
	}

	public int getSeconds()
	{
		return this.seconds;
	}

	public String toString()
	{
		return String.format("%02d:%02d:%02d\n",this.hours, this.minutes, this.seconds);
	}
}   

class Point2D
{   
	private double x;
	private double y;

	public Point2D(double x, double y)
	{
		this.x = x;
		this.y = y;
	}

	public void setX(double x)
	{
		this.x = x;
	}

	public void setY(double y)
	{
		this.y = y;
	}

	public double getX()
	{
		return this.x;
	}

	public double getY()
	{
		return this.y;
	}

	public String toString()
	{
		return String.format("(%1.1f,%1.1f)", this.x, this.y);
	}
}   