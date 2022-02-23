import java.util.Scanner;

public class Guide_1 
{
	public static Scanner sc = new Scanner(System.in);

	public static void main (String[] args) 
	{
		boolean finish = false;
		int select = 0;

		System.out.println("Chose a number (1-9) to select the exercise or chose any other number to finish the program execution:\n");

		System.out.println("1 - Calculate the area and the perimeter.");
		System.out.println("2 - Convert temperature from celcius to fahrenheit.");
		System.out.println("3 - Convert dollars to euros.");
		System.out.println("4 - Convert seconds in hh:mm:ss.");
		System.out.println("5 - Calculate the real distance betwen two localities.");
		System.out.println("6 - Calculate the hypotenuse and the angle (in degrees) between the side A and the hypotenuse.");
		System.out.println("7 - Calculate the final grade from one student.");
		System.out.println("8 - Calculate the average expense from a tourist in a trip knowing that in each day he spent more 20% that the previous day.");
		System.out.println("9 - Calculate the total bill liquid value.\n");

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

	// Calculate the area and the perimeter.
	public static void exercise_1 ()
	{
		double lenght, width, perimeter, area;
	   
		System.out.print("Lenght: ");
		lenght = sc.nextDouble();
	   
		System.out.print("Width: ");
		width = sc.nextDouble();
	   
		perimeter = (lenght + width) * 2;

		area = lenght * width;

		System.out.printf("\nThe perimeter of the figure is %.2f cm", perimeter);
		System.out.printf("\nThe area of the figure is %.2f cm\n\n", area);
	}

	// Convert temperature from celcius to fahrenheit.
	public static void exercise_2 ()
	{
		double temperature, result;
	
		System.out.print("Temperature in °C: ");
		temperature = sc.nextDouble();

		result = 1.8 * temperature + 32;

		System.out.printf("\n%.2f °C is equivalent to %.2f °F\n\n", temperature, result);
	}

	// Convert dollars to euros.
	public static void exercise_3 ()
	{
		double amount, rate, result;
	
		System.out.print("Amount of dollars: ");
		amount = sc.nextDouble();
	
		System.out.print("Exchange rate: ");
		rate = sc.nextDouble();
		
		result = amount * rate;

		System.out.printf("\n%.2f dollars is equal to %.2f euros\n\n", amount, result);
	}

	// Convert seconds in hh:mm:ss.
	public static void exercise_4 ()
	{	
		double total, seconds, minutes, hours; 

		System.out.print("Total seconds: ");
		total = sc.nextInt();
	 
		hours = total / 3600;
		minutes = (hours % 1) * 60;
		seconds = (minutes % 1) * 60;

		System.out.printf("\n%.0f seconds is equal to %02d:%02d:%02d h\n\n", total, (int)hours, (int)minutes, (int)seconds);	
	}

	// Calculate the real distance betwen two localities.
	public static void exercise_5 ()
	{
		double x1, y1, x2, y2, result;
		double scale = 100;
	
		System.out.printf("\nLocality A:\n");
	
		System.out.print("X: ");
		x1 = sc.nextDouble();
	
		System.out.print("Y: ");
		y1 = sc.nextDouble();
	
		System.out.printf("\n\nLocality B:\n");
	
		System.out.print("X: ");
		x2 = sc.nextDouble();

		System.out.print("Y: ");
		y2 = sc.nextDouble();
	
		result = Math.sqrt(Math.pow(y2-y1,2) + Math.pow(x2-x1,2)) * scale;
	
		System.out.printf("\nThe distance betwen the two localities is %.2f km\n\n", result);
	}

	// Calculate the hypotenuse and the angle (in degrees) between the side A and the hypotenuse.
	public static void exercise_6 ()
	{	
		double side_A, side_B, hip, grau;
	
		System.out.print("The size of the side A: ");
		side_A = sc.nextDouble();
	
		System.out.print("The size of the side B: "); 
		side_B = sc.nextDouble();
	
		hip = Math.sqrt(Math.pow(side_A,2) + Math.pow(side_B,2));
	
		grau = Math.toDegrees(Math.acos(side_A/hip));
	
		System.out.printf("The angle betwen the side A ( %.2f cm ) and the hypotenuse ( %.2f cm ) is: %.2f°\n\n", side_A, hip, grau);
	}

	// Calculate the final grade from one student.
	public static void exercise_7 ()
	{	
		String components[] = {"TP1", "TP2", "API", "EP"};
		double perc[] = {0.15, 0.15, 0.3, 0.4};
		double grades[] = new double[4];	
		double total = 0;

		for(int i = 0; i < grades.length; i++)
		{
			System.out.printf("The grade from the %s was: ", components[i]);
			grades[i] = sc.nextDouble();

			total += grades[i] * perc[i];
		}
	
		System.out.printf("\nThe final grade is: %.2f\n\n", total);
	}

	// Calculate the average expense from a tourist in a trip knowing that in each day he spent more 20% that the previous day.
	public static void exercise_8 ()
	{	
		double spent, total;
		double inc = 1.2;
		double tmp = 0;
		int days = 4;

		System.out.print("Money spent on the first day: ");
		spent = sc.nextDouble();
	
		for(int i=0; i<days; i++)
		{
			tmp += Math.pow(inc, i);
		}

		total = spent * tmp / days;
	
		System.out.printf("\nThe amount of money spent on the trip daily (on average) was %.2f euros\n\n",total);
	}

	// Calculate the total bill liquid value.
	public static void exercise_9 ()
	{	
		double value ,discount ,tax, total;
	
		System.out.print("The product value is: ");
		value = sc.nextDouble();
	
		System.out.print("The discount is (0-100) %: ");
		discount = sc.nextDouble();
	
		System.out.print("The tax is (0-100) %: ");
		tax = sc.nextDouble();
	
		total = (value - (value * discount) / 100) * (1 + tax / 100);
	
		System.out.printf("\nThe total bill liquid value is %.2f euros\n\n",total);
	}
}