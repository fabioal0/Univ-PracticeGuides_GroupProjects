import java.sql.SQLFeatureNotSupportedException;
import java.util.Scanner;

public class Guide_4 {
	
	public static Scanner sc = new Scanner(System.in);

	public static void main (String[] args) 
	{
		boolean finish = false;
		int select = 0;

		System.out.println("Chose a number (1-6) to select the exercise or chose any other number to finish the program execution:\n");

		System.out.println("1 - Print message x times.");
		System.out.println("2 - Print the multiplication table of x.");
		System.out.println("3 - Return the factorial from the numbers between 1 and x.");
		System.out.println("4 - Test the Leibniz formula for π.");
		System.out.println("5 - Show the dimensions of the triangles where every side is an integer number.");
		System.out.println("6 - Print a rectangle.");
		System.out.println("7 - Print the rectangle outline.");
		System.out.println("8 - Print all the odd numbers inside the range.");
		System.out.println("9 - Print n consecutive even numbers and their sum.\n");

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
				case 8:
					exercise_8();
					break;
				case 9:
					exercise_9();
					break;
				default:
					finish = true;
			}
		}while(!finish);
	}

	// Print message x times.
	public static void exercise_1 ()
	{
		String message = "Message";
		int amount;
	
		do
		{
			System.out.print("Enter an integer number bigger than 0: ");
			amount = sc.nextInt();
		} while(amount <= 0);

		System.out.println();

		for(int i=0; i<amount; i++)
		{
			System.out.println(message);
		}
		System.out.println();
	}
	
	// Print the multiplication table of x.
	public static void exercise_2 ()
	{
		int number;
	
		do
		{
			System.out.print("Enter an integer number (1-99): ");
			number = sc.nextInt();
		} while(number < 1 || number > 99);

		System.out.printf("\n--------------------------------\n");
		System.out.printf("|  Multiplication table of %2d  |\n", number);
		System.out.printf("--------------------------------\n");

		for(int i=1; i <= 10; i++)
		{
			System.out.printf("|    %2d    x   %2d   =   %3d    |\n", number, i, number * i);
		}
		System.out.printf("--------------------------------\n\n");
	}

	// Return the factorial from the numbers between 1 and x.
	public static void exercise_3 ()
	{		
		int number;
		int result;

		do
		{
			System.out.print("Enter an integer number (1-10): ");
			number = sc.nextInt();
		} while(number < 1 || number > 10);

		System.out.printf("\n");

		for(int i=1; i<=number; i++)
		{
			result = 1;

			for(int k=2; k<=i; k++)
			{
				result *= k;
			}
			System.out.printf("%2d! = %d\n", i, result);
		}
		System.out.printf("\n");
	}

	// Test the Leibniz formula for π.
	public static void exercise_4 ()
	{
		int number;
		double result = 0;

		do
		{
			System.out.print("Enter a positive integer number: ");
			number = sc.nextInt();
		} while(number < 1 );

		System.out.printf("\n");

		for(int i=0; i < number; i++)
		{
			result += Math.pow(-1,i) / (double)((i+1) * 2 - 1);
		}

		System.out.printf("Result = %.15f\n", result);
		System.out.printf("Pi/4 = %.15f\n\n", Math.PI / 4);

	}

	// Show the dimensions of the triangles where every side is an integer number.
	public static void exercise_5 ()
	{
		double result;

		for(int i=1; i<100; i++)
		{
			for(int k=i; k<100;k++)
			{
				result = Math.sqrt(Math.pow(i, 2) + Math.pow(k, 2));

				if( result % 1 == 0)
				{
					System.out.printf("%3d %3d %3d\n", i, k, (int)result);
				}
			}
		}
		System.out.println();
	}

	// Print a rectangle.
	public static void exercise_6 ()
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
				System.out.print("*");
			}
			System.out.println();
		}
		System.out.println();
	}

	// Print the rectangle outline.
	public static void exercise_7 ()
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
	
	// Print all the odd numbers inside the range.
	public static void exercise_8 ()
	{
		int number1;
		int number2;

		System.out.println("Odd numbers between X an Y:");

		System.out.print("X: ");
		number1 = sc.nextInt();

		System.out.print("Y: ");
		number2 = sc.nextInt();

		if (number2 > number1 && number1 > 0)
		{
			System.out.printf("\nOdd numbers between %d and %d: ", number1, number2);

			if(number1 % 2 == 0)
			{
				number1++;
			}
			for (int k = number1 ; k <= number2; k+=2)
			{
				System.out.print(k + " ");	
			}
			System.out.println("\n");
		}
		else
		{
			System.out.println("\nInvalid range\n");
		}
	}
	
	// Print n consecutive even numbers and their sum.
	public static void exercise_9 ()
	{
		int number;
		int even;
		int sum = 0;

		do
		{
			System.out.print("Enter a number: ");
			number = sc.nextInt();
		}while(number < 0 || number > 1000);

		System.out.printf("\nThe first %d even numbers are: ", number);	

		for (int k=0 ; k<number; k++)
		{
			even = 2 * k;
			System.out.print(even + " ");
			sum += even;
		}

		System.out.println();
		System.out.printf("Sum: %d\n\n", sum);
	}
}

