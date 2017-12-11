package com.company;
import java.io.*; //import to properly create and write to the file

// one class needs to have a main() method
public class FileCreator
{
  public static void create(int n) throws IOException {
        File fileOfMaxColorIndex = new File("C://Users//Shane//Desktop//maxColorIndex.txt"); //creates new text file on desktop **MUST CHANGE WHEN USING A DIFFERENT COMPUTER**
        FileWriter writer = new FileWriter(fileOfMaxColorIndex); //creates an object that can be used to write to the file we have created
        writer.write(Integer.toString(n)); //writes the maxColorIndex to the text file, so if maxColorIndex is "3", the text file will now contain "3"
        writer.close(); //closes the object used to write to the text file
  }
}
