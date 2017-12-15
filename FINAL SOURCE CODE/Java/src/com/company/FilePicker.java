package com.company;//package MATLAB
import java.io.File;
import java.io.FileWriter;
import java.io.FilenameFilter; //import to properly create and write to the file
import java.io.IOException;

/**
 * Class that creates the file being sent to the Arduino and the class that picks the image/video we need to display next
 */

public class FilePicker {
    private static String fileLocation;
    private static File fileOfMaxColorIndex;
    private static String path; //String that will represent the folder we want to look into
    private static int times; //int that will tell us how many times we have been through the loop
    private static File file;
    private static String[] directories;
    private static String pick;
    private static String newPath;
    private static FileWriter writer;

        public static void create(int n, String p) throws IOException {
            path = p;
        fileLocation = path + "maxColorIndex.txt"; //specify where the file should be saved
        fileOfMaxColorIndex = new File(fileLocation); //creates new text file on desktop
         writer = new FileWriter(fileOfMaxColorIndex); //creates an object that can be used to write to the file we have created
        writer.write(Integer.toString(n)); //writes the maxColorIndex to the text file, so if maxColorIndex is "3", the text file will now contain "3" as a String
        writer.close(); //closes the object used to write to the text file
    }

    public static String chooseImageOrVid(String p, int i) {
        times = i;
        path = p;
        file = new File(path); //creates new local temporary file
        directories = file.list(new FilenameFilter() { //creates an array that holds all subfolders within our given path
            @Override
            public boolean accept(File current, String name) { //if the folder is in the directory
                return new File(current, name).isDirectory(); //then return it and place it in the array
            }
        });
        pick = directories[times]; //randomly picking a folder that we have not seen yet
        newPath = path + pick + "\\"; //specific folder we want to look into that
        return newPath;
    }

    public static int numOfIterations(String p) {
        path = p;
        file = new File(path); //creates new local temporary file
        directories = file.list(new FilenameFilter() { //creates an array that holds all subfolders within our given path
            @Override
            public boolean accept(File current, String name) { //if the folder is in the directory
                return new File(current, name).isDirectory(); //then return it and place it in the array
            }
        });
        return directories.length;
    }
}
