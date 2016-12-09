package combineFiles;

import java.io.File;
import java.util.Arrays;
import java.util.List;

// This is the main class used to rename the files into a nice iterator format.
// The original files are deleted as this program runs.
public class RenameFile {

	public static void main(String[] args) {
		File folder = new File("D:\\Users\\Andrew\\Downloads\\grabbed");
		List<File> fileList = Arrays.asList(folder.listFiles());
		
		int fileName = 1;
		for (int i = 0; i < fileList.size(); i++){
			if (!fileList.get(i).getName().contains("greyhound") && !fileList.get(i).getName().contains("place")){
				fileList.get(i).renameTo(new File("D:\\Users\\Andrew\\workspace\\combinedFilesJava\\renamed\\" + fileName++ + ".csv"));
				if (fileName % 50 == 0)
					System.out.println("Renamed " + fileName + " files");
			}
		}
	}

}
