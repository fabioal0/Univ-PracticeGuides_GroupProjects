import java.util.Scanner;

public class Guide_2 
{
	public static Scanner sc = new Scanner(System.in);

	public static void main (String[] args) 
	{
		boolean finish = false;
		int select = 0;

		System.out.println("Chose a number (1-11) to select the exercise or chose any other number to finish the program execution:\n");

		System.out.println("1 - Calculate the final grade from one student.");
		System.out.println("2 - Inform the biggest number and the smallest number out of two.");
		System.out.println("3 - Inform the type of ticket to buy accordingly with the persons age.");
		System.out.println("4 - Inform the number of days from the month inserted.");
		System.out.println("5 - Detect if the 4 points inserted create a square.");
		System.out.println("6 - Inform if an integer number is odd or even.");
		System.out.println("7 - Calculate the bigger number out of three.");
		System.out.println("8 - Sort three numbers by crescent order.");
		System.out.println("9 - Convert celcius degrees to fahrenheit degrees or vice-versa.");
		System.out.println("10 - Inform the next day and the previous day of the date inserted.");
		System.out.println("11 - Calculate the result of second degree equations.\n");

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
				default:
					finish = true;
			}
		}while(!finish);
	}

	// Calculate the final grade from one student.
	public static void exercise_1 ()
	{
		String components[] = {"TP1", "TP2", "API", "EP"};
		double perc[] = {0.10, 0.10, 0.3, 0.5};
		double grades[] = new double[4];	
		double total = 0;

		for(int i = 0; i < grades.length; i++)
		{
			System.out.printf("The grade from the %s was: ", components[i]);
			grades[i] = sc.nextDouble();

			total += grades[i] * perc[i];
		}
	
		System.out.printf("\nThe final grade is: %.2f\n", total);
		
		if(total < 9.5)
		{
			System.out.printf("\nThe student fail the class.\n\n");
		}
		else{
			System.out.printf("\nThe student pass the class.\n\n");
		}
	}

	// Inform the biggest number and the smallest number out of two.
	public static void exercise_2 ()
	{
		double number_1, number_2;
	
		System.out.print("First number: ");
		number_1 = sc.nextDouble();
	
		System.out.print("Second number: ");
		number_2 = sc.nextDouble();
	
		if(number_1 > number_2)
		{
			System.out.printf("\nThe first number (%f) is bigger than the second number (%f)\n\n", number_1, number_2);		
		}
		else if(number_1 < number_2)
		{
			System.out.printf("\nThe first number (%f) is smaller than the second number (%f)\n\n", number_1, number_2);		
		}
		else
		{
			System.out.printf("\nThe numbers are the same (%f) (%f)\n\n", number_1, number_2);	
		}
	}

	// Inform the type of ticket to buy accordingly with the persons age.
	public static void exercise_3 ()
	{
		int age;
	
		System.out.print("Introduce your age: ");
		age = sc.nextInt();
	
		if(age >= 0 && age < 6)
		{
			System.out.printf("\nNo ticket needed.\n\n");
		}
		else if(age >= 6 && age < 13)
		{
			System.out.printf("\nKids ticket.\n\n");
		}
		else if(age >= 13 && age < 66)
		{
			System.out.printf("\nNormal ticket\n\n");
		}
		else if(age >= 66)
		{
			System.out.printf("\nSenior ticket\n\n");
		}
		else 
		{
			System.out.printf("\nInvalid age\n\n");
		}
	}

	// Inform the number of days from the month inserted.
	public static void exercise_4 ()
	{
		int month,year;
	
		System.out.print("Month (1-12): ");
		month = sc.nextInt();
	
		System.out.print("Year: ");
		year = sc.nextInt();
	
		switch(month)
		{
			case 1:
			case 3:
			case 5:
			case 7:
			case 8:
			case 10:
			case 12:
				System.out.printf("\nThe month %d from %d have 31 days.\n\n", month, year);
				break;
			case 2:
				if(year % 4 == 0 && (year % 100 != 0 || year % 400 == 0))
				{
					System.out.printf("\nThe month %d from %d have 29 days.\n\n",month,year);
				}
				else
				{
					System.out.printf("\nThe month %d from %d have 28 days.\n\n",month,year);
				}	
				break;
			case 4:case 6:case 9:case 11: 
				System.out.printf("\nThe month %d from %d have 30 days.\n\n",month,year);
				break;
			default:
				System.out.printf("\nThe month %d is invalid.\n\n",month);		
		}
	}

	// Detect if the 4 points inserted create a square.
	public static void exercise_5 ()
	{
		double point[][] = new double[4][2];
	
		for(int i=0; i<4; i++)
		{
			System.out.printf("Point %d:\n", i);
	
			System.out.print("X: ");
			point[i][0] = sc.nextDouble();
		
			System.out.print("Y: ");
			point[i][1] = sc.nextDouble();
		}

		if	(	(	(point[0][1] == point[1][1]) && (point[2][1] == point[3][1]) && (point[0][0] != point[1][0]) &&
					(
						((point[0][0] == point[2][0]) && (point[1][0] == point[3][0])) 
						|| 
						((point[0][0] == point[3][0]) && (point[1][0] == point[2][0]))
					)	
				)
				||
				(
					(point[0][1] == point[2][1]) && (point[1][1] == point[3][1]) && (point[0][0] != point[2][0]) &&
					(
						((point[0][0] == point[1][0]) && (point[2][0] == point[3][0]))
						||
						((point[0][0] == point[3][0]) && (point[2][0] == point[1][0]))
					)				
				)
				||
				(
					(point[0][1] == point[3][1]) && (point[1][1] == point[2][1]) && (point[0][0] != point[3][0]) &&
					(
						((point[0][0] == point[1][0]) && (point[3][0] == point[2][0]))
						||
						((point[0][0] == point[2][0]) && (point[3][0] == point[1][0]))
					)		
				)
			)
		{
			System.out.printf("\nThe points form a square\n\n");
		}
		else
		{
			System.out.printf("\nThe points don't form a square\n\n");
		}
	}

	// Inform if an integer number is odd or even.
	public static void exercise_6 ()
	{
		int number;
	
		System.out.print("Enter an integer number: ");
		number = sc.nextInt();
	
		if(number % 2 == 0)
		{
			System.out.printf("\nThe number is even\n\n");
		}
		else
		{
			System.out.printf("\nThe number is odd\n\n");
		}	
	}

	// Calculate the bigger number out of three.
	public static void exercise_7 ()
	{
		double numbers[] = new double[3];
		double result = 0;

		for(int i=0; i<numbers.length; i++)
		{
			System.out.print("Number: ");
			numbers[i] = sc.nextDouble();
		}
		
		for(int i=0; i<numbers.length; i++)
		{
			if(numbers[i] > result)
			{
				result = numbers[i];
			}
		}
		System.out.printf("\nThe biggest number is %f\n\n", result);
	}

	// Sort three numbers by crescent order.
	public static void exercise_8 ()
	{
		double numbers[] = new double[3];
		double tmp;

		for(int i=0; i<numbers.length; i++)
		{
			System.out.print("Number: ");
			numbers[i] = sc.nextDouble();
		}
	
		for(int i=0; i<numbers.length-1; i++)
		{
			for(int k=1; k<numbers.length; k++)
			{
				if(numbers[i] > numbers[k])
				{
					tmp = numbers[i];
					numbers[i] = numbers[k];
					numbers[k] = tmp;
				}
			}	
		}
		System.out.println("\nOrder (crescent):");

		for(int i=0; i<numbers.length; i++)
		{
			System.out.println(numbers[i]);
		}
		System.out.println();
	}

	// Convert celcius degrees to fahrenheit degrees or vice-versa.
	public static void exercise_9 ()
	{
		int select;
		double temperature, result;
	
		System.out.print("Initial temperature units (0 - Celsius || 1 - Fahrenheit): ");
		select = sc.nextInt();
	
		System.out.print("Temperature: ");
		temperature = sc.nextDouble();
	
		switch(select)
		{
			case 0:
				result = 1.8 * temperature + 32;
				System.out.printf("\n%.2f° Celcius is equivalent to %.2f° Fahrenheit\n\n", temperature, result);
				break;
			case 1:
				result = (temperature - 32) / 1.8;
				System.out.printf("\n%.2f° Fahrenheit is equivalent to %.2f° Celcius\n\n", temperature, result);
				break;
			default:
				System.out.printf("\nInvalid temperature units\n\n");
		}
	}

	// Inform the next day and the previous day of the date inserted.
	public static void exercise_10 ()
	{
		int day, month, year;
		int date[][] = new int[2][3];
	
		System.out.print("Day: ");
		day = sc.nextInt();
	
		System.out.print("Month: ");
		month = sc.nextInt();
	
		System.out.print("Year: ");
		year = sc.nextInt();
	
		switch(month)
		{
			case 1:
				if (day == 1)
				{
					date[0][0] = 31;
					date[0][1] = 12;
					date[0][2] = year - 1;

					date[1][0] = day + 1;
					date[1][1] = month;
					date[1][2] = year;
				}
				else if(day == 31)
				{
					date[0][0] = day - 1;
					date[0][1] = month;
					date[0][2] = year;

					date[1][0] = 1;
					date[1][1] = month + 1;
					date[1][2] = year;
				}
				else
				{
					date[0][0] = day - 1;
					date[0][1] = month;
					date[0][2] = year;

					date[1][0] = day + 1;
					date[1][1] = month;
					date[1][2] = year;
				}
				break;
			case 2:
				if(year % 4 == 0 && (year % 100 != 0 || year % 400 == 0))
				{
					if (day == 1)
					{
						date[0][0] = 31;
						date[0][1] = month - 1;
						date[0][2] = year;
	
						date[1][0] = day + 1;
						date[1][1] = month;
						date[1][2] = year;
					}
					else if(day == 29)
					{
						date[0][0] = day - 1;
						date[0][1] = month;
						date[0][2] = year;
	
						date[1][0] = 1;
						date[1][1] = month + 1;
						date[1][2] = year;
					}
					else
					{
						date[0][0] = day - 1;
						date[0][1] = month;
						date[0][2] = year;
	
						date[1][0] = day + 1;
						date[1][1] = month;
						date[1][2] = year;
					}
				}
				else
				{			
					if (day == 1)
					{
						date[0][0] = 31;
						date[0][1] = month - 1;
						date[0][2] = year;
	
						date[1][0] = day + 1;
						date[1][1] = month;
						date[1][2] = year;
					}
					else if(day == 28)
					{
						date[0][0] = day - 1;
						date[0][1] = month;
						date[0][2] = year;
	
						date[1][0] = 1;
						date[1][1] = month + 1;
						date[1][2] = year;
					}
					else
					{
						date[0][0] = day - 1;
						date[0][1] = month;
						date[0][2] = year;
	
						date[1][0] = day + 1;
						date[1][1] = month;
						date[1][2] = year;
					}
				}	
				break;
			case 3:
				if(year % 4 == 0 && (year % 100 != 0 || year % 400 == 0))
				{
					if (day == 1)
					{
						date[0][0] = 29;
						date[0][1] = month - 1;
						date[0][2] = year;
	
						date[1][0] = day + 1;
						date[1][1] = month;
						date[1][2] = year;
					}
					else if(day == 31)
					{
						date[0][0] = day - 1;
						date[0][1] = month;
						date[0][2] = year;
	
						date[1][0] = 1;
						date[1][1] = month + 1;
						date[1][2] = year;
					}
					else
					{
						date[0][0] = day - 1;
						date[0][1] = month;
						date[0][2] = year;
	
						date[1][0] = day + 1;
						date[1][1] = month;
						date[1][2] = year;
					}
				}
				else
				{		
					if (day == 1)
					{
						date[0][0] = 28;
						date[0][1] = month - 1;
						date[0][2] = year;
	
						date[1][0] = day + 1;
						date[1][1] = month;
						date[1][2] = year;
					}
					else if(day == 31)
					{
						date[0][0] = day - 1;
						date[0][1] = month;
						date[0][2] = year;
	
						date[1][0] = 1;
						date[1][1] = month + 1;
						date[1][2] = year;
					}
					else
					{
						date[0][0] = day - 1;
						date[0][1] = month;
						date[0][2] = year;
	
						date[1][0] = day + 1;
						date[1][1] = month;
						date[1][2] = year;
					}
				}		
				break;
			case 4:
			case 6:
			case 9:
			case 11: 
				if (day == 1)
				{
					date[0][0] = 31;
					date[0][1] = month - 1;
					date[0][2] = year;

					date[1][0] = day + 1;
					date[1][1] = month;
					date[1][2] = year;
				}
				else if(day == 30)
				{
					date[0][0] = day - 1;
					date[0][1] = month;
					date[0][2] = year;

					date[1][0] = 1;
					date[1][1] = month + 1;
					date[1][2] = year;
				}
				else
				{
					date[0][0] = day - 1;
					date[0][1] = month;
					date[0][2] = year;

					date[1][0] = day + 1;
					date[1][1] = month;
					date[1][2] = year;
				}
				break;
			case 5:
			case 7:
			case 8:
			case 10:
				if (day == 1)
				{
					date[0][0] = 30;
					date[0][1] = month - 1;
					date[0][2] = year;

					date[1][0] = day + 1;
					date[1][1] = month;
					date[1][2] = year;
				}
				else if(day == 31)
				{
					date[0][0] = day - 1;
					date[0][1] = month;
					date[0][2] = year;

					date[1][0] = 1;
					date[1][1] = month + 1;
					date[1][2] = year;
				}
				else
				{
					date[0][0] = day - 1;
					date[0][1] = month;
					date[0][2] = year;

					date[1][0] = day + 1;
					date[1][1] = month;
					date[1][2] = year;
				}
				break;
			case 12:	
				if (day == 1)
				{
					date[0][0] = 30;
					date[0][1] = month - 1;
					date[0][2] = year;

					date[1][0] = day + 1;
					date[1][1] = month;
					date[1][2] = year;
				}
				else if(day == 31)
				{
					date[0][0] = day - 1;
					date[0][1] = month;
					date[0][2] = year;

					date[1][0] = 1;
					date[1][1] = 1;
					date[1][2] = year + 1;
				}
				else
				{						
					date[0][0] = day - 1;
					date[0][1] = month;
					date[0][2] = year;

					date[1][0] = day + 1;
					date[1][1] = month;
					date[1][2] = year;
				}
				break;	
			default:
				date[0][1] = 0;
		}
		if(date[0][1] != 0)
		{
			System.out.printf("\nThe previous day is %d-%d-%d", date[0][0], date[0][1], date[0][2]);
			System.out.printf("\nThe next day is %d-%d-%d\n\n", date[1][0], date[1][1], date[1][2]);
		}
		else
		{
			System.out.printf("\nThe month %d is invalid\n\n", month);
		}
	}

	// Calculate the result of second degree equations.
	public static void exercise_11 ()
	{
		double delta, a, b, c, im1, im2, rea1, rea2;
	
		System.out.print("A: ");
		a = sc.nextDouble();
	
		if (a != 0) 
		{
			System.out.print("B: ");
			b = sc.nextDouble();
		
			System.out.print("C: ");
			c = sc.nextDouble();
	 
			delta = Math.pow(b,2) - 4 * a * c;

			if(delta >= 0)
			{
				rea1 = (-b + Math.sqrt(delta)) / (2 * a);
				rea2 = (-b - Math.sqrt(delta)) / (2 * a);
		
				System.out.printf("Solution = %f or %f\n\n", rea1, rea2);
			}
			else
			{
				rea1 = -b / (2 * a);
				rea2 = -b / (2 * a);
				im1 = -Math.sqrt(-delta) / (2 * a);
				im2 = Math.sqrt(-delta) / (2 * a);
			
				System.out.printf("Solution = %f %fi or %f +%fi\n\n", rea1, im1, rea2, im2);
			}
		}
		else 
		{
			System.out.printf("It's not from second degree\n\n");
    	}
	}
}

