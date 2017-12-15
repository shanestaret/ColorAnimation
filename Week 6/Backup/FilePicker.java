package com.company;

import java.io.File;
import java.io.FilenameFilter; //all important imports

/**
 * Class that picks what image or video we want to go over next
 */
public class FilePicker {
    private static String path; //String that will represent the folder we want to look into
    private static int times; //int that will tell us how many times we have been through the loop
    private static File file;
    private static String[] directories;
    private static String pick;
    private static String newPath;

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
