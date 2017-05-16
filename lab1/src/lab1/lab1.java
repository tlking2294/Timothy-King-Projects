package lab1;
import java.util.Scanner;

/**
 * Lab1
 * CSCI 140L
 * Programmer: Timothy Logan King
 * Last Revised: 8-25-2014
 * 
 *This program can tell the user how many miles their car can drive before running out of gas.
 */
public class lab1 
{
	public static void main(String[] args)
	{
		double GasMileage;
		double TankCapacity;
		double RangeofMiles;
		
		Scanner in = new Scanner(System.in);
		
		// Read mileage per gallon
		System.out.print("Please enter the gas mileage of your vehicle (miles per gallon): ");
		GasMileage = in.nextDouble();
		System.out.println();
		
		// Read tank capacity
		System.out.print("Please enter the tank capacity of your vehicle (in gallons): ");
		TankCapacity = in.nextDouble();
		System.out.println();
		
		// Compute the range
		RangeofMiles = GasMileage * TankCapacity;
		System.out.print("Number of miles that can be driven: ");
		System.out.println(RangeofMiles);
		in.close();	
	}

}

