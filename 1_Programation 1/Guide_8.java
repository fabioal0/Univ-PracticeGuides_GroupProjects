import java.util.Scanner;

public class Guide_8 {
		
	public static Scanner sc = new Scanner(System.in);	

	public static void main (String[] args) 
	{
		boolean finish = false;
		int select = 0;

		System.out.println("Chose a number (1-5) to select the exercise or chose any other number to finish the program execution:\n");

		System.out.println("1 - Analyse a phrase.");
		System.out.println("2 - Show the acronym from x phrases.");
		System.out.println("3 - Count the number of words.");
		System.out.println("4 - Verify the license plate validity.");
		System.out.println("5 - Convert a number from base 10 to all the bases between 2 and 10.\n");

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
				case 5:
					exercise_5();
					break;
				default:
					finish = true;
			}
		}while(!finish);
		sc.close();
	}

	// Analyse a phrase.
	public static void exercise_1 ()
	{
		String phrase = "";
		int countVowels = 0;
		int countDigits = 0;
		int countLowerCases = 0;
		int countUpperCases = 0;
		
		System.out.printf("Entrer a phrase: ");
		phrase = sc.nextLine();
	
		System.out.printf("\nPhrase analysis:\n\n");
		System.out.printf("Entry phrase: %s\n\n", phrase);

		for(int i=0; i<phrase.length(); i++)
		{
			if(Character.isDigit(phrase.charAt(i)))
			{
				countDigits ++;
			}
			else
			{
				if(Character.isLowerCase(phrase.charAt(i)))
				{
					countLowerCases ++;
				}
				else if(Character.isUpperCase(phrase.charAt(i)))
				{
					countUpperCases ++;
				}

				if(isVowel(phrase.charAt(i)))
				{
					countVowels ++;
				}
			} 
		}
		System.out.printf("Number of lower cases: %s\n", countLowerCases);
		System.out.printf("Number of higher cases: %s\n", countUpperCases);
		System.out.printf("Number of digits cases: %s\n", countDigits);
		System.out.printf("Number of vowels: %s\n", countVowels);
		System.out.printf("Number of consonants: %s\n\n", (countLowerCases + countUpperCases - countVowels));
	}

	public static boolean isVowel(char character)
	{
		return (character == 'a' || character == 'A' || 
				character == 'e' || character == 'E' || 
				character == 'i' || character == 'I' || 
				character == 'o' || character == 'O' ||
				character == 'u' || character == 'U');
	}

	// Show the acronym from the phrase.
	public static void exercise_2 ()
	{
		String phrase = "";

		do
		{
			System.out.printf("Entrer a phrase: ");
			phrase = sc.nextLine();

			System.out.printf("\nacronym (\"%s\") -> \"%s\"\n\n", phrase, getAcronym(phrase));
		}while(phrase.length() > 0);
	}

	public static String getAcronym(String phrase)
	{
		String acronym = "";

		for(int i=0; i<phrase.length(); i++)
		{
			if(Character.isUpperCase(phrase.charAt(i)))
			{
				acronym += phrase.charAt(i);
			}
		}		
		return acronym;
	}

	// Count the number of words.
	public static void exercise_3 ()
	{
		String phrase = "";
		int numberWords;

		System.out.printf("Entrer a phrase: ");
		phrase = sc.nextLine();

		numberWords = phrase.split("\n|\t| ").length;

		System.out.printf("Number of Words: %d\n\n", numberWords);
	}	

	// Verify the license plate validity.
	public static void exercise_4 ()
	{
		String patterns[] = {"AA-00-00", "00-AA-00", "00-00-AA"};
		String registration = "";
		int pattern;

		System.out.printf("Entrer the registration plate: ");
		registration = sc.nextLine();

		System.out.printf("\nPatterns:\n0 - (%s)\n1 - (%s)\n2 - (%s)\n\n", patterns[0], patterns[1], patterns[2]);

		System.out.printf("Entrer the pattern: ");
		pattern = sc.nextInt();

		if(matchPattern(registration, patterns[pattern]))
		{
			System.out.printf("The license plate is valid\n\n");
		}
		else
		{
			System.out.printf("The license plate is not valid\n\n");
		}
	}

	public static boolean matchPattern(String registration, String pattern)
	{
		if(registration.length() != pattern.length())
		{
			return false;
		}

		for(int i=0; i<pattern.length(); i++)
		{
			if	(
					! (Character.isDigit(pattern.charAt(i)) && Character.isDigit(registration.charAt(i))) ||
					! (Character.isUpperCase(pattern.charAt(i)) && Character.isUpperCase(registration.charAt(i)))
				)
			{
				return false;
			}
		}
		return true;	
	}

	// Convert a number from base 10 to all the bases between 2 and 10.
	public static void exercise_5 ()
	{
		String result = "";
		int number;
		double value;
		double remainder;

		System.out.print("Enter a base 10 number: ");
		number = sc.nextInt();

		System.out.println();

		for (int i=2; i<=10; i++)
		{
			value = number;
			result = "";

			while(value >= i)
			{
				remainder = value % i;
				value = (value - remainder) / i;
				result = String.valueOf((int)remainder) + result;
			}
			result = String.valueOf((int)value) + result;
			System.out.printf("Number %d from base 10 to base %d -> %s\n", number, i, result);
		}
		System.out.println();
	}
}   