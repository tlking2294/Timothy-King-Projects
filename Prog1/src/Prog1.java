import java.util.Scanner;

/**
 * Prog1
 * CSCI 140
 * Programmer: Timothy Logan King
 * Last Reivsed: 9-3-2014
 * 
 * This program can calculate the time it takes to cut a lawn given its dimensions.
 */



public class Prog1 {
	
	public static void main(String[] args)
	{
		double LotLength;
		double LotWidth;
		double HouseLength;
		double HouseWidth;
		double ToCut;
		double LotArea;
		double HouseArea;
		double SquareFt;
		double Time;
		final double PER_SEC = 3.0;
		final double MIN = 60;
		
		
		
		Scanner in = new Scanner(System.in);
		
		// input Length of lot
		System.out.print("Please enter in the length of the lot (in feet): ");
		LotLength = in.nextDouble();
		System.out.println();
		
		// input Width of lot
		System.out.print("Please enter in the width of the lot (in feet): ");
		LotWidth = in.nextDouble();
		System.out.println();
		
		// input Length of House
		System.out.print("Please enter in the length of the house on the lot(in feet): ");
		HouseLength = in.nextDouble();
		System.out.println();
		
		// input Width of House
		System.out.print("Please enter in the width of the house that is on the lot (in feet): ");
		HouseWidth = in.nextDouble();
		System.out.println();
		
		// Compute Areas
		LotArea = LotLength * LotWidth;
		HouseArea = HouseLength * HouseWidth;
		
		// Compute the grass that needs to be cut
		ToCut = LotArea - HouseArea;
		
		// Compute the time it takes to cut grass
		SquareFt = ToCut / PER_SEC;
		Time = SquareFt / MIN;
		
		System.out.printf("The area of the grass is (in square feet): %.2f", ToCut);
		System.out.println();
		System.out.printf("The time it will take to cut the grass will be (in minutes): %.2f", Time);
		
		in.close();
			
	}

}
