import java.util.Scanner;

public class Guide_3 {
	
	public static Scanner sc = new Scanner(System.in);

	public static void main (String[] args) 
	{
		boolean finish = false;
		int select = 0;

		System.out.println("Chose a number (1-13) to select the exercise or chose any other number to finish the program execution:\n");

		System.out.println("1 - Count the amount of numbers inserted.");
		System.out.println("2 - Calculate the product of all the numbers inserted.");
		System.out.println("3 - Calculate the maximum, the minimum and the average values.");
		System.out.println("4 - Game guess the number.");
		System.out.println("5 - Check if a number is a prime number.");
		System.out.println("6 - Calculate the greatest common divisor.");
		System.out.println("7 - Multiply two numbers using russian multiplication.");
		System.out.println("8 - Calculate the grades sum and average value.");
		System.out.println("9 - Count the number of positive, negative and inside two ranges numbers that end in 0.");
		System.out.println("10 - Show the maximum, the minimum and the stop value.");
		System.out.println("11 - Verify if all the numbers inserted are odd.");
		System.out.println("12 - Game guess the number multiple times.");
		System.out.println("13 - Calculate the inverse of a number.\n");

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
				case 10:
					exercise_10();
					break;
				case 11:
					exercise_11();
					break;
				case 12:
					exercise_12();
					break;
				case 13:
					exercise_13();
					break;
				default:
					finish = true;
			}
		}while(!finish);
	}

	// Count the amount of numbers inserted.
	public static void exercise_1 ()
	{
		int number = 0;
		int count = 0;
	
		while(number >= 0)
		{		
			System.out.print("Enter an integer number: ");
			number = sc.nextInt();
		
			count++;
		}
		System.out.printf("\nThe amount of numbers inserted was: %d\n\n", count);
	}
	
	// Calculate the product of all the numbers inserted.
	public static void exercise_2 ()
	{
		double number = 1;
		double result = 1;
	
		while(number != 0)
		{
			result *= number;

			System.out.print("Enter a number: ");
			number = sc.nextDouble();
		}
		System.out.printf("\nThe product is: %f \n\n", result);
	}

	// Calculate the maximum, the minimum and the average values.
	public static void exercise_3 ()
	{
		double finish, number, max, min, sum=0, count=0;
	
		System.out.print("Enter the number to finish the loop: ");
		finish = sc.nextDouble();
		
		System.out.println();

		max = finish;
		min = finish;
	
		do
		{
			System.out.printf("Enter a number: ");
			number = sc.nextDouble();

			sum += number;
			
			count++;
		
			if(number > max)
			{
				max = number;
			}
		
			if(number < min)
			{
				min = number;
			}
		} while(finish != number);

		System.out.printf("\nThe average is: %f \nThe maximum is: %f \nThe minimum is: %f\n\n", sum/count, max, min);
	}

	// Game guess the number.
	public static void exercise_4 ()
	{
		int number = 0;
		int count = 0; 
		int secret = (int)(100 * Math.random());
	
		while(secret != number)
		{
			System.out.print("Enter a integer number: ");
			number = sc.nextInt();
		
			count++;
		
			if(number > secret)
			{
				System.out.println("The number is smaller");
			}
		
			else if(number < secret)
			{
				System.out.println("The number is bigger");
			}
			else
			{
				System.out.printf("\nYou guessed after %d attempts\n\n", count);
			}
		}
	}

	// Check if a number is a prime number.
	public static void exercise_5 ()
	{
		int number = -1;
		int count = 2;
		boolean isprime = true;
	
		while(number <= 0)
		{
			System.out.print("Enter a positive integer number: ");
			number = sc.nextInt();
		}

		while(count < number)
		{
			if(number % count == 0)
			{
				isprime = false;
			}
			count++;
		}
		System.out.printf("\nIt's a prime number: %s\n", isprime);
	}

	// Calculate the greatest common divisor.
	public static void exercise_6 ()
	{
		int number1;
		int number2;
		int remainder;
      
		System.out.println("Enter two numbers: ");

		System.out.print("Number 1: ");
    	number1 = sc.nextInt();

		System.out.print("Number 2: ");
    	number2 = sc.nextInt();
              
    	remainder = number1 % number2;
    
    	while(remainder != 0)
		{
    	number1 = number2;
    	number2 = remainder;
    	remainder = number1 % number2;         	
		}
		
		System.out.printf("Greatest common divisor = %d\n", number2);
	}	

	// Multiply two numbers using russian multiplication.
	public static void exercise_7 ()
	{
		int number1;
		int number2;
		int result = 0;
	
		System.out.print("Enter the first number: ");
		number1 = sc.nextInt();
	
		System.out.print("Enter the second number: ");
    	number2 = sc.nextInt();	
   
		do
		{
			if(number1 % 2 == 1) 
			{
				result += number2;
			}

	   		number1 /= 2;
			number2 *= 2;

		}while(number1 != 0);
	System.out.printf("\nThe result of the product is: %d\n\n", result);
	}	

	// Calculate the grades sum and average value.
	public static void exercise_8 ()
	{
		double average;
		int grade;
		int sum = 0;
		int count = 0;
		
		System.out.printf("(%d) - Enter a positive grade: ", count);
		grade = sc.nextInt();

		while( grade >= 0)
		{
			sum += grade ;
			count++;

			System.out.printf("(%d) - Enter a positive grade: ", count);
			grade = sc.nextInt();
		}    
		average = sum / count;

  		System.out.printf("\nThe average grade is: %.2f\n", average) ;
  		System.out.printf("The sum of the grades is: %d\n\n", sum) ;
	}

	// Count the number of positive, negative and inside two ranges numbers that end in 0.
	public static void exercise_9 ()
	{
		boolean finish = false;
		double number = 0; 
		int positive = 0; 
		int negative = 0;
		int positiveRange = 0;
		int negativeRange = 0;

      	while(!finish)
		{
			System.out.print("Enter a number that end in 0: ");
			number = sc.nextDouble();
			
			if ( number % 10 == 0)
			{
				if (number < 0)
				{
					negative++;
				}
				else
				{
					positive++;
				}
				if (number < 1000 && number > 100) 
				{
					positiveRange++;
				}
				if (number > -1000 && number < -100) 
				{
					negativeRange++;
				}
			}
			else
			{
				finish = true;
			}
		}
		System.out.printf("\nTotal positive numbers: %d", positive) ;
		System.out.printf("\nTotal negative numbers: %d", negative) ;
		System.out.printf("\nTotal numbers between 100 and 1000: %d", positiveRange) ;
		System.out.printf("\nTotal numbers between -100 and -1000: %d\n\n", negativeRange) ;
	}	

	// Show the maximum, the minimum and the stop value.
	public static void exercise_10 ()
	{
		int number;
		int minimum = Integer.MAX_VALUE;
		int maximum = 0;
		int last;
 	
		System.out.print("Enter a positive integer: ");
 	 	number = sc.nextInt();	  
		
		last = number;
	 
	 	while( number != 2 * last && number > 0)
		{
			last = number;

			if (number < minimum)
			{
				minimum = number;
			}
			if (number > maximum)
			{
				maximum = number;
			}

			System.out.print("Enter a positive integer: ");
			number = sc.nextInt();	  
    	}
 		System.out.printf("\nThe maximum value is: %d", maximum);
		System.out.printf("\nThe minimum value is: %d", minimum);
		System.out.printf("\nThe value that stoped the program was: %d\n\n", number) ;
	}	

	// Verify if all the numbers inserted are odd.
	public static void exercise_11 ()
	{
		boolean finish = false;
		boolean odd = true;
		int number;
 		  
		do
		{
			System.out.print("Enter a positive integer: ");
			number = sc.nextInt();
			
			if( number > 0)
			{
				if(number % 2 == 0)
				{
					odd = false;
					break;
				}
			}
			else
			{
				finish = true;
			}
		} while(!finish);

		if (odd)
		{
			System.out.println("\nAll the numbers inserted are odd\n") ;
		}
		else
		{
			System.out.println("\nNot all the numbers inserted are odd\n") ;
		}
	}

	// Game guess the number multiple times.
	public static void exercise_12 ()
	{
		int number = 0;
		int count = 0; 
		String response;

		do
		{
			int secret = (int)(100 * Math.random());
		
			while(secret != number)
			{
				System.out.print("Enter a integer number: ");
				number = sc.nextInt();
			
				count++;
			
				if(number > secret)
				{
					System.out.println("The number is smaller\n");
				}
			
				else if(number < secret)
				{
					System.out.println("The number is bigger\n");
				}
				else
				{
					System.out.printf("\nYou guessed after %d attempts\n\n", count);
				}
			}
			System.out.print("New Game(y/n): ");
        	response = sc.next();
			System.out.println();
      	}while(response.equals("y"));    
	}	

	// Calculate the inverse of a number.
	public static void exercise_13 ()
	{
		int number, inverse = 0;
 
    	System.out.print("Enter a positive integer: ");
    	number = sc.nextInt();
 
    	while(number != 0)
    	{
			inverse *= 10;
			inverse += number % 10;
          	number = number / 10;
      	}
		System.out.printf("\nThe inverse is: %d\n\n", inverse);
	}	
}

