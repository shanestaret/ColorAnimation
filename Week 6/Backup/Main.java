package com.company;

import java.io.IOException; //so that we can read text files properly

public class Main {
    public static void main(String[] args) throws IOException, InterruptedException {
        String path;
        int numOfTimesToLoop;
        String newPath;
        Tabs tp;
        int maxColorIndex;

        path = "C:\\Users\\Shane\\Desktop\\MATLAB\\"; //initial folder containing everything we need
        numOfTimesToLoop = FilePicker.numOfIterations(path); //determines how many subfolders are in initial folder, telling us how many times we must loop
        for (int i = 0; i < numOfTimesToLoop; i++) { //loop as many times as there are subfolders
            newPath = FilePicker.chooseImageOrVid(path, i); //specific folder we want to look into that contains image files and text files
            tp = new Tabs(newPath, path);
            tp.createTabs(); //creates the tabs to hold both figures

            maxColorIndex = ColorProportions.retrieveMaxColor(path); //uses the "retrieveMaxColor" method in the "ColorProportions" class to get the index that has the greatest proportion
        /* The above line of code will always be equal to a number 0 through 9, since we are only using ten colors for the color wheel
        0 is White
        1 is Red (combination of DarkRed, Red, and LightRed)
        2 is Orange (combination of DarkOrange, Orange, and LightOrange)
        3 is Yellow (combination of DarkYellow, Yellow, and LightYellow)
        4 is Green (combination of DarkGreen, Green, and LightGreen)
        5 is Blue (combination of DarkSkyBlue, SkyBlue, LightSkyBlue, DarkBlue, Blue, and LightBlue)
        6 is Purple (combination of DarkPurple, Purple, and LightPurple)
        7 is Pink (combination of DarkPink, Pink, LightPink, DarkHotPink, HotPink, and LightHotPink)
        8 is Grey (combination of DarkGrey, Grey, and LightGrey)
        9 is Black
        So if "maxColorIndex" is 7, that means the servo should point to the "Pink" color on the color wheel
         */
        Thread.sleep(1000); //sleep for fifteen seconds before moving onto next subfolder
        }
    }
}