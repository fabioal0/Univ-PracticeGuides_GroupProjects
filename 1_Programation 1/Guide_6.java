import java.util.Scanner;

public class Guide_6 {
	
	public static Scanner sc = new Scanner(System.in);

	public static void main (String[] args) 
	{
		boolean finish = false;
		int select = 0;

		System.out.println("Chose a number (1-4) to select the exercise or chose any other number to finish the program execution:\n");

		System.out.println("1 - Show a list of values, in the opposite order the values where inputed.");
		System.out.println("2 - Create a list of values and search how many times one value appears in that list.");
		System.out.println("3 - Integer numbers sequence analisys.");
		System.out.println("4 - Create a grades histogram.");
		System.out.println("5 - Calculate the average and the standart deviation from some values. Show the values above average.");
		System.out.println("6 - Return the letters used on a phrase.");
		System.out.println("7 - Count the amount of times that all the numbers appear in the list.\n");

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

	// Show a list of values, ​​in the opposite order the values ​​were inputed.
	public static void exercise_1 ()
	{
		int number;
	
		do
		{
			System.out.print("Enter the amount of numbers that will be inserted in the list: ");
			number = sc.nextInt();
		} while(number <= 0);

		int numbers[] = new int[number];

		System.out.println();

		for(int i=0; i<number; i++)
		{
			System.out.printf("(%d)-Insert the integer number: ", i + 1);
			numbers[i] = sc.nextInt();
		}
		System.out.println("\nNumbers printed from the last to the first inserted:\n");

		for(int k=number-1; k>=0; k--)
		{
			System.out.printf("%d\n", numbers[k]);
		}
		System.out.println();
	}
	
	// Create a list of values and search how many times one value appears in that list. 
	public static void exercise_2 ()
	{
		int number;
		int numbers[] = new int[100];
		int i = 0;
		int count = 0;

		do 
		{
			System.out.printf("(%d)-Insert the integer number: ", i + 1);
			numbers[i] = sc.nextInt();
			
			i++;
		} while(i < 100 && numbers[i - 1] >= 0);

		do
		{
			System.out.print("\nEnter the number to search in the list: ");
			number = sc.nextInt();
		} while(number <= 0);

		int k = 0;

		do 
		{
			if(number == numbers[k])
			{
				count++;
			}

			k++;
		} while(k < 100 && numbers[k - 1] >= 0);
		System.out.printf("\nThe number %d appears %d times in the list\n\n", number, count);
	}

	// Integer numbers sequence analisys
	public static void exercise_3 ()
	{		
		int sequence[] = new int[50];
		int option;

		System.out.println("Integer numbers sequence analysis:");
		System.out.println("1 - Read the sequence");
		System.out.println("2 - Write the sequence");
		System.out.println("3 - Calculate the sequence maximum ");
		System.out.println("4 - Calculate the sequence minimum");
		System.out.println("5 - Calculate the sequence average");
		System.out.println("6 - Detect if the sequence just have even numbers");
		System.out.println("10 - Finish the program\n");

		do
		{
			System.out.print("Option: ");
			option = sc.nextInt();

			switch(option)
			{
				case 1:
					System.out.println();

					sequence = readSequence();

					System.out.println();
					break;
				case 2:
					System.out.println();
					
					writeSequence(sequence);

					System.out.println();
					break;
				case 3:
					System.out.printf("\nThe biggest number is: %d\n\n", maximumSequence(sequence));
					break;
				case 4:
					System.out.printf("\nThe smallest number is: %d\n\n", minimumSequence(sequence));
					break;
				case 5:
					System.out.printf("\nThe numbers average is: %f\n\n", averageSequence(sequence));
					break;
				case 6:
					if(isEvenvSequence(sequence))
					{
						System.out.println("\nAll the numbers are even\n");
					}
					else
					{
						System.out.println("\nNot all the numbers are even\n");
					}
			}

		} while(option != 10);
		System.out.println();
	}

	public static void writeSequence(int[] sequence)
	{
		int i = 0;

		while(i < 50 && sequence[i] != 0)
		{
			System.out.println(sequence[i]);
			i++;
		}
	}

	public static int[] readSequence()
	{
		int sequence[] = new int[50];
		int i = 0;

		do 
		{
			do
			{
				System.out.printf("(%d)-Insert the positive integer number: ", i + 1);
				sequence[i] = sc.nextInt();
			} while(sequence[i] < 0);
			i++;
		} while(i < 50 && sequence[i - 1] != 0);
		return sequence;
	}

	public static int maximumSequence(int[] sequence)
	{
		int result = 0;

		for(int number : sequence)
		{
			if(number > result)
			{
				result = number;
			}
		}
		return result;
	}

	public static int minimumSequence(int[] sequence)
	{
		int result = Integer.MAX_VALUE;

		for(int number : sequence)
		{
			if(number < result && number != 0)
			{
				result = number;
			}
		}
		return result;
	}

	public static double averageSequence(int[] sequence)
	{
		double result = 0;
		int i = 0;

		while(i < 50 && sequence[i] != 0)
		{
			result += sequence[i];
			i++;
		}

		result = result / i;

		return result;
	}

	public static boolean isEvenvSequence(int[] sequence)
	{
		for(int number : sequence)
		{
			if(number % 2 != 0)
			{
				return false;
			}
		}
		return true;
	}

	// Create a grades histogram.
	public static void exercise_4 ()
	{
		int number;
	
		do
		{
			System.out.print("Enter the amount of grades that will be inserted in the list: ");
			number = sc.nextInt();
		} while(number <= 0);
		
		System.out.println();

		int numbers[] = new int[number];

		for(int i=0; i<number; i++)
		{
			do
			{
			System.out.printf("(%d)-Insert the grade: ", i + 1);
			numbers[i] = sc.nextInt();
			} while(numbers[i] < 0);
		}

		int grades[] = new int[21];

		for(int k=0; k<number; k++)
		{
			grades[numbers[k]] ++;
		}

		System.out.println("\nGrades histogram");
		System.out.println("-------------------------------------------------");

		for(int j=0; j<grades.length; j++)
		{
			System.out.printf("%2d  |  ", j);

			for(int l=0; l<grades[j]; l++)
			{
				System.out.print("*");
			}
			System.out.println();
		}
		System.out.println();
	}
	
	// Calculate the average and the standart deviation from some values. Show the values above average.
	public static void exercise_5 ()
	{
		int size;
		double sum = 0;
		double average = 0;
		double auxiliar = 0;
		double deviation = 0;

		System.out.print("Number of elements: ");		
		size = sc.nextInt();
		
		System.out.println();	

		double[] values = new double[size];

		for(int i=0; i<size; i++)
		{
			System.out.printf("(%d) - Value: ", i);		
			values[i] = sc.nextDouble();	
			
			sum += values[i];
		}
		average = sum / size;
	
		System.out.printf("\nThe average value is: %.2f\n\n", average);	
		System.out.print("The values above average are: ");	

		for(int k=0; k<size; k++)
		{
			auxiliar += Math.pow(values[k] - average, 2);

			if(values[k] > average)
			{
				System.out.print(values[k] + " ");	

			}	
		}	
	    deviation = Math.sqrt(auxiliar / size);
		
		System.out.println("\n");	
		System.out.printf("The standard deviation is: %.2f\n\n", deviation);	
	}

	// Return the letters used on a phrase. 
	public static void exercise_6 ()
	{
		String phrase;
		char[] alphabet = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
		boolean[] used = new boolean[26];

		System.out.printf("Enter a phrase: ");
		phrase = sc.nextLine();

		System.out.printf("\nUsed letters: ");

		for(int i=0 ; i<phrase.length(); i++)
		{
			if(Character.isLetter(phrase.charAt(i)))
			{
				for(int k=0; k<alphabet.length; k++)
				{
					if (Character.toLowerCase(phrase.charAt(i)) == alphabet[k])
					{
						if(used[k] == false)
						{
							used[k] = true;
							System.out.print(alphabet[k] + " ");
						}
						break;
					}
				}
			}
		}
		System.out.println("\n");
	}

	// Count the amount of times that all the numbers appear in the list.
	public static void exercise_7 ()
	{
		int numbers[] = new int[100];
		int count[] = new int[100];
		int size = 0;

		do 
		{
			System.out.printf("(%d)-Insert the integer number: ", size + 1);
			numbers[size] = sc.nextInt();
			
			size++;
		} while(size < numbers.length && numbers[size - 1] >= 0);

		for(int k=0; k<size; k++)
		{
			for(int j=0; j<=k; j++)
			{
				if(numbers[k] == numbers[j] && numbers[k] >= 0)
				{
					count[j]++;
					break;
				}
			}
		}
		for(int l=0; l<size; l++)
		{
			if(count[l] != 0)
			{
				System.out.printf("\nThe number %d appears %d times in the list", numbers[l], count[l]);
			}
		}
		System.out.println("\n");
	}
}

