package com.company;
import java.io.*; //import to properly create and write to the file

// one class needs to have a main() method
public class FileCreator
{
  public static void create(int n) throws IOException {
	String fileLocation = "C://Users//Shane//Desktop//maxColorIndex.txt" //specify where the file should be saved
        File fileOfMaxColorIndex = new File(fileLocation); //creates new text file on desktop
    
    	if (fileOfMaxColorIndex.createNewFile()) //prints whether the file was successfully created or not
		System.out.println("New file successfully created.");
	elseif(fileOfMaxColorIndex.exists())
		System.out.println("File successfully updated.");
        else
		System.out.println("There was a problem when creating/updating the file.");
    
        FileWriter writer = new FileWriter(fileOfMaxColorIndex); //creates an object that can be used to write to the file we have created
        writer.write(Integer.toString(n)); //writes the maxColorIndex to the text file, so if maxColorIndex is "3", the text file will now contain "3" as a String
        writer.close(); //closes the object used to write to the text file
  }
}
