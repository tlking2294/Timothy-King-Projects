import java.util.Scanner;
import java.io.File;
import java.io.FileNotFoundException;

/**
 * CSCI 140L
 * Timothy Logan King
 * 11-19-2014
 * This program can print out a star map 
 *
 */


public class Lab18 
{
	public static void main(String[] args) throws FileNotFoundException
	{
		int i = 0; // rows variable
		int j = 0; // column variable
		int n; // rows variable
		int m; // column variable
		int sum = 0;
		double avg;
		String name;
		int[][] picture = new int[50][80];  // array that holds where the light is shown
		File picPoints = new File ("lab18.txt");
		Scanner in = new Scanner(picPoints);
		
		name = in.nextLine();
		n = in.nextInt();
		m = in.nextInt();
		
		for(i = 0; i < n; i++)
		{
			for(j = 0; j < m; j++)
			{
				picture[i][j] = in.nextInt();
				System.out.printf("%5d", picture[i][j]);
			}
			System.out.println();
		}
		System.out.println();
		
		System.out.println(name);
		System.out.println("------------------------------------");
		for(i = 1; i < n-1; i++)
		{
			sum = 0;
			System.out.print(":");
			for(j = 1; j < m-1; j++)
			{
				
				sum = 0;
				sum = sum + picture[i][j] + picture[i-1][j] + picture[i+1][j] + picture[i][j-1] + picture[i][j+1];
				avg = (double) sum / 5.0;
				if(avg > 6.0)
					System.out.print("   *");
				else
					System.out.print("    ");
				
			}
			System.out.println("          :");
		}
		System.out.println("------------------------------------");
		
		in.close();
	}
}