import java.util.Scanner;
import java.io.PrintWriter;
import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;

public class Guide_9 {
	
	static Scanner sc = new Scanner(System.in);
	
	public static void main (String[] args)
	{
		boolean finish = false;
		int select = 0;

		System.out.println("Chose a number (1-4) to select the exercise or chose any other number to finish the program execution:\n");

		System.out.println("1 - Read and show data from a file.");
		System.out.println("2 - Count the number of times that a number appears in a file or show the data from the last line to the first.");
		System.out.println("3 - Integer numbers sequence analisys.");
		System.out.println("4 - Create a grades histogram.\n");

		do
		{
			System.out.print("Exercise number: ");
			select = sc.nextInt();
			
			if(sc.hasNextLine())
			{
				sc.nextLine();
			}

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
				default:
					finish = true;
			}
		}while(!finish);
		sc.close();
	}

	// Read, and show data from a file.
	public static void exercise_1 ()
	{
		String fileName;
		Path path;
		File file;

		System.out.printf("Insert the file name: ");
		fileName = sc.nextLine();
		
		path = Paths.get(fileName + ".txt");

		file = path.toFile();

		if (!file.exists()) 
		{
        	System.out.println("\nERROR: input file " + fileName + " does not exist!\n");
        	return;
 		}
		else if (file.isDirectory())
		{
        	System.out.println("\nERROR: input file " + fileName + " is a directory!\n");
			return;
		}
		else if (!file.canRead()) 
		{			 
			System.out.println("ERROR: cannot read from input file " + fileName + "!\n");
		   	return;
		}
		System.out.println("\nFile data: \n");

		try 
		{
			Scanner sc1 = new Scanner(file);
	
			while(sc1.hasNextLine())
			{
				System.out.println("\t" + sc1.nextLine());				
			}
			sc1.close();	
		} 
		catch (Exception e) 
		{
			System.out.println(e.getMessage());
		}
		System.out.println("\nEnd of file data.\n");
	}

	// Count the number of times that a number appears in a file or show the data from the last line to the first.
	public static void exercise_2 ()
	{
		int[] data;
		String fileName;
		Path path;
		File file;
		int select;
		int size = 0;

		System.out.printf("Insert the file name: ");
		fileName = sc.nextLine();
		
		path = Paths.get(fileName + ".txt");

		file = path.toFile();

		if (!file.exists()) 
		{
        	System.out.println("\nERROR: input file " + fileName + " does not exist!\n");
        	return;
 		}
		else if (file.isDirectory())
		{
        	System.out.println("\nERROR: input file " + fileName + " is a directory!\n");
			return;
		}
		else if (!file.canRead()) 
		{			 
			System.out.println("ERROR: cannot read from input file " + fileName + "!\n");
		   	return;
		}
		System.out.println("\nFile data: \n");

		try 
		{
			Scanner sc1 = new Scanner(file);
	
			while(sc1.hasNextInt())
			{
				size++;
				sc1.nextInt();				
			}
			sc1.close();	
		} 
		catch (Exception e) 
		{
			System.out.println(e.getMessage());
		}

		data = new int[size];

		try 
		{
			Scanner sc1 = new Scanner(file);

			for(int i=0; i<size; i++)
			{
				data[i] = sc1.nextInt();				
			}
			sc1.close();	
		} 
		catch (Exception e) 
		{
			System.out.println(e.getMessage());
		}

		System.out.println("Chose a number (1-2) to select the task to run:\n");

		System.out.println("1 - Print the file data in the inverse order.");
		System.out.println("2 - Count the amount of times that one number appears in the file data.\n");

		System.out.print("Task number: ");
		select = sc.nextInt();

		switch (select)
		{
			case 1:
				invertOrder(data);
				break;
			case 2:	
				countRepetitions(data);		
				break;
		}
	}

	public static void invertOrder (int[] data)
	{		
		System.out.println();

		for(int i=data.length-1; i>=0; i--)
		{
			System.out.println(data[i]);	
		}
		System.out.println();
	}

	public static void countRepetitions (int[] data)
	{
		int number;
		int count = 0;

		do
		{
			System.out.print("\nEnter the number to search in the list: ");
			number = sc.nextInt();
		} while(number <= 0);

		for (int i=0; i<data.length; i++)
		{
			if(number == data[i])
			{
				count++;
			}
		}
		System.out.printf("\nThe number %d appears %d times in the list\n\n", number, count);
	}


	// Integer numbers sequence analisys.
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
		System.out.println("7 - Read the sequence from a file");	
		System.out.println("8 - Add data to the sequence");				
		System.out.println("9 - Write the sequence to a file");	
		System.out.println("10 - Finish the program\n");
		
		do
		{
			System.out.print("Option: ");
			option = sc.nextInt();

			if(sc.hasNextLine())
			{
				sc.nextLine();
			}

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
				case 7:
					System.out.println();

					sequence = readFile(sequence.length);

					System.out.println();
					break;
				case 8:
					System.out.println();

					sequence = appendData(sequence);
					
					System.out.println();
					break;
				case 9:
					System.out.println();
						
					writeFile(sequence);

					System.out.println();
					break;
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
		} while(i < 50 && sequence[i - 1] > 0);
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

	public static int[] readFile (int size)
	{
		int[] data = new int[size];
		String fileName;
		Path path;
		File file;

		System.out.printf("Insert the file name: ");
		fileName = sc.nextLine();
		
		path = Paths.get(fileName + ".txt");

		file = path.toFile();

		try
		{
			Scanner sc1 = new Scanner(file);

			for(int i=0; i< data.length; i++)
			{
				if(sc1.hasNextInt())
				{
					data[i] = sc1.nextInt();
				}
				else
				{
					break;
				}
			}
			sc1.close();
		} 
		catch (Exception e) 
		{
			System.out.println(e.getMessage());
		}
		return data;
	}

	public static int[] appendData(int[] data)
	{
		for (int i=0; i<data.length; i++)
		{
			if(data[i] == 0)
			{
				System.out.printf("(%d)-Insert the positive integer number: ", i + 1);
				data[i] = sc.nextInt();
			}

			if(data[i] <= 0)
			{
				break;
			}
		}
		return data;
	}

 	public static void writeFile (int[] data)
	{
		String fileName;
		Path path;
		File file;

		System.out.printf("Insert the file name: ");
		fileName = sc.nextLine();
		
		path = Paths.get(fileName + ".txt");

		file = path.toFile();

		try
		{
			PrintWriter Pw = new PrintWriter(file);
		
			for(int i=0; i<data.length; i++)
			{
				if(data[i] == 0)
				{
					break;
				}
				Pw.println(data[i]);
			}
			Pw.close();	
		} 
		catch (Exception e) 
		{
			System.out.println(e.getMessage());
		}
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
		
		if(sc.hasNextLine())
		{
			sc.nextLine();
		}
		
		System.out.println();

		int numbers[] = readFile (number);

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
}

