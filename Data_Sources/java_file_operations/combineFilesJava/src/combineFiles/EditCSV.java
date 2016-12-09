package combineFiles;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.Scanner;

// This edits the big file generated in the Driver class, and keeps only the first CSV header,
// and removes all of the other headers remaining throughout the file.
public class EditCSV {

	public static void main(String[] args) throws FileNotFoundException {
		File result1 = new File("result.csv");
		File result2 = new File("Big_Data_File.csv");
		Scanner input = new Scanner(result1);
		PrintWriter output = new PrintWriter(result2);
		String header = input.nextLine();
		output.println(header);
		while (input.hasNextLine()){
			String temp = input.nextLine();
			if (temp != header)
				output.println(temp);
		}
		input.close();
		output.close();

	}

}
