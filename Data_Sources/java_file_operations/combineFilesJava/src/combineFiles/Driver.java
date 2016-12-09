package combineFiles;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;

// This puts all of the data files into one big file.
public class Driver {

	public static void main(String[] args) throws FileNotFoundException {
		File folder = new File("D:\\Users\\Andrew\\CS3250\\Data_Sources\\betfair_data_sets");
		List<File> fileList = Arrays.asList(folder.listFiles());
		Scanner input = null;
		File result = new File("result.csv");
		PrintWriter output = new PrintWriter(result);
		System.out.println("Got files prepared");
		for (int i = 0; i < fileList.size(); i++){
			if (!fileList.get(i).getName().contains("greyhound")){
				try {
					input = new Scanner(fileList.get(i));
					while (input.hasNextLine()){
						output.println(input.nextLine());
					}
				} catch (FileNotFoundException e) {
					System.out.println("Could not read file: " + fileList.get(i).getName());
					//e.printStackTrace();
				}
				if (i % 20 == 0)
					System.out.println("Read " + i + " files so far...");
			}
		}
		output.close();
		input.close();
		System.out.print("Done.");
	}

}
