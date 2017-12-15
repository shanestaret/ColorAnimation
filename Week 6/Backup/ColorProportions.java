package com.company;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader; //all important imports
import java.io.IOException;
import java.util.ArrayList;

/**
 * Created by Shane on 12/1/2017.
 */
public class ColorProportions {
    private static String line = null; //String that will represent every individual line of text file
    private static ArrayList<Double> colors = new ArrayList<>(); //ArrayList to hold all color proportions acquired from text file
    private static int maxColorIndex; //int that will hold the final index that holds the max proportion
    private static String path;
    private static File txtFile;
    private static FileReader reader;
    private static BufferedReader bufferedReader;
    private static double propSum;
    private static int count;
    private static int nextIndex;
    private static double max;

    public static int retrieveMaxColor(String p) throws IOException {
        path = p; //must look at the same path that holds everything else
        txtFile = new File(path + "propsArray.txt"); //grab the text file
        reader = new FileReader(txtFile); //read the text file
        bufferedReader = new BufferedReader(reader); //read the text file in such a way we can loop through the individual lines
        while ((line = bufferedReader.readLine()) != null) { //while there is another line in the text file to read
            colors.add(Double.parseDouble(line)); //add that line into the color proportions ArrayList (there are 32 lines to represent the 32 colors)
        }
        propSum = 0; //double that will hold the sum of all color props we must combine; so this sum will hold DarkRed, Red, and LightRed to represent all the Reds
        count = 0; //integer to determine when all the color props we must combine are added together
        nextIndex = 1; //the index we want to put the new proportion within (goes from 1 to 8 because 0 is White in the old and new array and 9 is black in the old and new array)
        for (int i = 0; i < colors.size(); i++) { //loops through every element of color props array (there are 32 elements)
            if ((i > 0 && i < 13) || (i > 18 && i < 22) || (i > 27 && i < 31)) { //this if statement gets the color props combination for colors that only have three to combine; so DarkRed, Red, and LightRed proportions are all combined to make Red here
                propSum += colors.get(i); //adds up the proportions that must be combined, so if DarkRed = 20, Red = 10, and LightRed = 15, then the new array will have Red = 45
                count++; //counts up so we know we already did one of the proportions that must be combined
                if (count == 3) { //once all three are combined
                    colors.set(nextIndex, propSum); //set the next index in the new array equal to the combined proportions; now that Red = 45, the second element in the array is equal to 45, and the first element is equal to the white proportion
                    count = 0; //resets this so we can move onto the next proportions that must be combined
                    propSum = 0; //reset this so that the next proportion combinations can properly be added together
                    nextIndex++; //increases the index that the combined color proportions are added to so we simply don't replace them; 0 is white, 1 is Red, 2 is Orange, etc.
                }
            }
            if ((i > 12 && i < 19) || (i > 21 && i < 28)) { //this if statement gets the color props combination for colors that have six to combine; so DarkSkyBlue, SkyBlue, LightSkyBlue, DarkBlue, Blue, and LightBlue proportions are all combined to make Blue here
                propSum += colors.get(i); //adds up the proportions that must be combined, so if DarkSkyBlue = 20, SkyBlue = 10, and LightSkyBlue = 3, DarkBlue = 1, Blue = 2, and LightBlue = 2 then the new array will have Blue = 38
                count++; //counts up so we know we already did one of the proportions that must be combined
                if (count == 6) { //once all six are combined
                    colors.set(nextIndex, propSum); //set the next index in the new array equal to the combined proportions; now that Blue = 38, the sixth element in the array is equal to 38
                    count = 0; //resets this so we can move onto the next proportions that must be combined
                    propSum = 0; //reset this so that the next proportion combinations can properly be added together
                    nextIndex++; //increases the index that the combined color proportions are added to so we simply don't replace them; 0 is white, 1 is Red, 2 is Orange, etc.
                }
            }
            if (i == 31) //if we are looking at the last element of the array (black)
                colors.set(9, colors.get(i)); //set it to the tenth element of the array, as we want the last element of our array to be 9 since we only have ten colors (0 to 9)
        }
        for (int i = 0; i < 22; i++) { //array was initially size 32, but now we only want it to be size 10, so we remove the uneeded elements 22 times since there are 22 of them
            colors.remove(10); //removes all of the extra elements that are no longer needed, so we only have the ten combined proportions
        }
        max = 0; //double that will hold the largest percentage
        for (int i = 0; i < colors.size(); i++) { //loops through the 10 new and combined proportions
            if (colors.get(i) > max) { //if the element we are looking at has a greater proportion than any of the previous elements
                maxColorIndex = i; //then the index with the greatest proportion is now equal to this element
                max = colors.get(i); //the new max is equal to this element's proportion
            }
        }
        return maxColorIndex; //returns the max index; so if we have array [1, 5, 3, 1], then it will return "1" because 5 is the largest proportion and it is in the second index (after the zeroth index)
    }
}
