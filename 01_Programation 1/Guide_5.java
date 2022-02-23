import java.util.Scanner;

public class Guide_5 {
	
	public static Scanner sc = new Scanner(System.in);

	public static void main (String[] args) 
	{
		boolean finish = false;
		int select = 0;

		System.out.println("Chose a number (1-7) to select the exercise or chose any other number to finish the program execution:\n");

		System.out.println("1 - Inform the number of days from the month inserted.");
		System.out.println("2 - Calculate the factorial.");
		System.out.println("3 - Print the rectangle outline.");
		System.out.println("4 - Print the multiplication table of x.");
		System.out.println("5 - Calculate the greatest common divisor.");
		System.out.println("6 - Calculate the polinomial values of two expressions between two values.");
		System.out.println("7 - Check if a number is a prime number.\n");

		do
		{
			System.out.print("Exercise number: ");
			select = sc.nextInt();
			
			if(sc.hasNextLine()) sc.nextLine();

			System.out.println();

			switch(select)
			{
				case 1: 
					exercise_1(); 
					break;
				case 2:
					exercise_2();
					break;
				case 3:
					exercise_3();
					break;
				case 4:
					exercise_4();
					break;
				case 5:
					exercise_5();
					break;
				case 6:
					exercise_6();
					break;
				case 7:
					exercise_7();
					break;
				default:
					finish = true;
			}
		}while(!finish);
	}

	// Inform the number of days from the month inserted.
	public static void exercise_1 ()
	{
		int month,year;
	
		System.out.print("Month (1-12): ");
		month = getIntRange(1, 12);

		System.out.print("Year: ");
		year = getIntPos();

		switch(month)
		{
			case 1:
			case 3:
			case 5:
			case 7:
			case 8:
			case 10:
			case 12:
				System.out.printf("\nThe month %d from the year %d have 31 days.\n\n", month, year);
				break;
			case 2:
				if(isLeapYear(year))
				{
					System.out.printf("\nThe month %d from the year %d have 29 days.\n\n",month,year);
				}
				else
				{
					System.out.printf("\nThe month %d from the year %d have 28 days.\n\n",month,year);
				}	
				break;
			case 4:case 6:case 9:case 11: 
				System.out.printf("\nThe month %d from the year %d have 30 days.\n\n",month,year);
				break;
		}
	}
	
	public static int getIntPos ()
	{
		int number;

		do
		{
			number = sc.nextInt();
		}while(number < 0);

		return number;
	}

	public static int getIntRange (int minimum, int maximum)
	{
		int number;

		do
		{
			number = sc.nextInt();
		}while(number < minimum || number > maximum);
		
		return number;	
	}

	public static boolean isLeapYear (int year)
	{
		return year % 4 == 0 && (year % 100 != 0 || year % 400 == 0);
	}

	// Calculate the factorial.
	public static void exercise_2 ()
	{
		int number;

		System.out.print("Enter a number between 1 and 10: ");
		number = getIntRange(1, 10);

		System.out.printf("\nThe factorial of %d is %d\n\n", number, factorial (number));
	}

	public static int factorial (int number)
	{
		int result = 1;

		for(int i=2; i<=number; i++)
		{
			result *= i;
		}

		return result;
	}

	// Print the rectangle outline.
	public static void exercise_3 ()
	{		
		int lenght, width;

		System.out.println("Enter the rectangle dimensions:");

		do
		{
			System.out.print("Lenght: ");
			lenght = sc.nextInt();
		} while(lenght <= 0 );
		
		do
		{
			System.out.print("Width: ");
			width = sc.nextInt();	
		} while(width <= 0 );

		System.out.println();

		for(int i=0; i<width; i++)
		{
			for(int k=0; k<lenght; k++)
			{
				if(k == 0 || k == (lenght - 1) || i == 0 || i == (width - 1))
				{
					System.out.print("*");
				}
				else
				{
					System.out.print(" ");
				}
			}
			System.out.println();
		}
		System.out.println();
	}

	// Print the multiplication table of x.
	public static void exercise_4 ()
	{
		int number;
	
		System.out.print("Enter an integer number (1-99): ");
		number = getIntRange(1, 99);

		printMultTable(number);
	}
	
	public static void printMultTable(int number)
	{
		System.out.printf("\n--------------------------------\n");
		System.out.printf("|  Multiplication table of %2d  |\n", number);
		System.out.printf("--------------------------------\n");

		for(int i=1; i <= 10; i++)
		{
			System.out.printf("|    %2d    x   %2d   =   %3d    |\n", number, i, number * i);
		}
		System.out.printf("--------------------------------\n\n");
	}

	// Calculate the greatest common divisor.
	public static void exercise_5 ()
	{
		int number1;
		int number2;
      
		System.out.println("Enter two numbers: ");

		System.out.print("Number 1: ");
    	number1 = sc.nextInt();

		System.out.print("Number 2: ");
    	number2 = sc.nextInt();
              
		System.out.printf("\nGreatest common divisor = %d\n\n", GDC(number1, number2));
	}

	public static int GDC(int number1, int number2)
	{
		int remainder;

    	remainder = number1 % number2;
    
    	while(remainder != 0)
		{
    	number1 = number2;
    	number2 = remainder;
    	remainder = number1 % number2;         	
		}
		return number2;
	}

	// Calculate the polinomial values of two expressions between two values.
	public static void exercise_6 ()
	{
		int minimum;
		int maximum;	
		double result1;
		double result2;

		System.out.print("minimum: ");
		minimum = sc.nextInt();	
		  
		System.out.print("maximum: ");
		maximum = sc.nextInt();	
		  			  
		System.out.println();	

		printNtimes(81, "-");
	
		System.out.printf("\n|       x       |     5x^2 + 10x + 3    |          7x^3 + 3x^2 + 5x + 2         |\n");	
		
		printNtimes(81, "-") ;
		
		System.out.println();	
	
		for (int i=minimum; i<=maximum; i++) {

			result1 = poly3 (i, 0, 5, 10, 3);	
			result2 = poly3 (i, 7, 3, 5, 2);	

			System.out.printf("|    %3d\t|         %6.2f     \t|              %8.3f           \t|\n", i, result1, result2);				
		
			printNtimes(81, "-") ;

			System.out.println();				
		}	
		System.out.println();				
	}

	public static void printNtimes (int amount, String expression ){

		for (int i=0; i<amount; i++) 
		{
			System.out.printf("%s", expression);
		}
	}

	public static double poly3 (double x, double a, double b, double c, double d)
	{
		return a * Math.pow(x, 3) + b * Math.pow(x, 2) + c * x + d;
	}

	// Check if a number is a prime number.
	public static void exercise_7 ()
	{
		int number;

		System.out.print("Enter a positive integer number: ");
		number = getIntPos();

		System.out.printf("\nIt's a prime number: %s\n\n", isprime(number));
	}

	public static boolean isprime (int number)
	{
		int count = 2;

		while(count < number)
		{
			if(number % count == 0)
			{
				return false;
			}
			count++;
		}
		return true;
	}
}

