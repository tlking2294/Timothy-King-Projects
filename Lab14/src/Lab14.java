import java.util.Scanner;

/**
 * CSCI 140L
 * Programmer: Timothy Logan King
 * 10.27.2014
 * 
 * This program can repeat a string the amount of times the user specifies
 *
 */






public class Lab14 
{
	public static void main (String[] args)
	{
		String str; // holds string 
		int times;  // number of times you want string repeated
	
		Scanner in = new Scanner(System.in);
		System.out.print("Type in a phrase or sentence you would like to repeat: ");
		str = in.nextLine();
		System.out.println();
		System.out.print("Type in the number of times you want it to repeat: ");
		times = in.nextInt();
		System.out.println();
		
		System.out.print(repeat(str, times));
		in.close();

	}
	/**
	 * This repeats the String 
	 * @param str // the String 
	 * @param n  // number of times
	 * @return  
	 */
	public static String repeat(String str, int n)
	{
		int count = 0;
		String multi = "";  // String repeated n times
		for (count = 0; count < n; count++)
		{
			multi = multi + str + "\n";
		}
		return multi;
	}
	
}