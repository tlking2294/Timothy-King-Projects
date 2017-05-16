import java.util.Scanner;
import java.io.File;
import java.io.FileNotFoundException;
/**
 * CSCI 140
 * Program 8
 * Programmer: Timothy Logan King
 * This program can tally votes for an election as long as there are no more than 
 * 			20 Precincts and 10 candidates
 *   The numbers in the text file can be altered to change results.
 */
public class Prog8 
{
	public static void main(String[] args) throws FileNotFoundException
	{
		int n;
		int m;
		int i = 0;
		int j = 0;
		int count = 0;
		int maxCount = 0;
		int sum = 0;
		int max;
		int remember = 0;
		int remember2 = 0;
		String[] name = new String[10];
		int[][] votes = new int[20][10];
		int[] total = new int[10];
		File results = new File("prog8.txt");
		Scanner in = new Scanner(results);
		
		n = in.nextInt();
		m = in.nextInt();
		in.nextLine();
		
		for(count = 0; count < m; count ++)
		{
			name[count] = in.next();
		}
		for(i = 0; i < n; i++)
		{
			for(j = 0; j < m; j++)
			{
				votes[i][j] = in.nextInt();
			}
		}
		count = 0;
		for(j = 0; j < m; j++)  // tallies the votes
		{
			sum = 0;
			for( i = 0; i < n; i++)
			{
				sum = sum + votes[i][j];
			}
			total[count] = sum;
			count++;
		}
		max = total[maxCount];
		for(count = 1; count < m; count++)  // finds the highest vote total
		{
			if(total[count] > max) 
			{
				max = total[count];
				maxCount = count;
			}
		}
		for(count = 0; count < m; count++)  // finds if there is a tie
		{
			if(max == total[count] && maxCount != count)
				remember = count;
		}
		for(count = 0; count < m; count++) // finds if there is a three way tie
		{
			if(total[remember] == total[count] && remember !=count)
				remember2 = count;
		}
		System.out.print("Precint");
		for(count = 0; count < m; count++)  // prints out the table of the votes
			System.out.printf("%20s", name[count]);
		System.out.println();
		count = 1;
		for(i = 0; i < n; i++)
		{
			System.out.print(count + "      ");
			for(j = 0; j < m; j++)
				System.out.printf("%20d", votes[i][j]);
			System.out.println();
			count++;
		}
		System.out.println();
		count = 0;
		System.out.print("Total: ");
		for(count = 0; count < m; count++)
			System.out.printf("%20d", total[count]);
		System.out.println();
		System.out.println();
		
		if(total[maxCount] > total[remember])
			System.out.println("The person with the most votes is: " + name[maxCount]);
		else if(total[remember2] == total[maxCount] && remember2 != maxCount && total[remember2] == total[remember])
			System.out.println("There is a 3 way for the most votes tie between " + name[maxCount] + ", " + name[remember] + " and " + name[remember2]);	
		else
			System.out.println("There is a tie for the most votes between " + name[maxCount] + " and " + name[remember]);
		in.close();
	}
}
