package com.company;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

/**
 * Created by Shane on 12/1/2017.
 */
public class ColorProportions {
    private static String line = null;
    private static ArrayList<Double> colors = new ArrayList<>();
    private static int maxColorIndex;

    public static int retrieveMaxColor() throws IOException {
        File txtFile = new File("C:\\Users\\Shane\\Desktop\\MATLAB\\propsArray.txt");
        FileReader reader = new FileReader(txtFile);
        BufferedReader bufferedReader = new BufferedReader(reader);
        while ((line = bufferedReader.readLine()) != null) {
            colors.add(Double.parseDouble(line));
        }
        double propSum = 0;
        int count = 0;
        int nextIndex = 1;
        for (int i = 0; i < colors.size(); i++) {
            if ((i > 0 && i < 13) || (i > 18 && i < 22) || (i > 27 && i < 31)) {
                propSum += colors.get(i);
                count++;
                if (count == 3) {
                    colors.set(nextIndex, propSum);
                    count = 0;
                    propSum = 0;
                    nextIndex++;
                }
            }
            if ((i > 12 && i < 19) || (i > 21 && i < 28)) {
                propSum += colors.get(i);
                count++;
                if (count == 6) {
                    colors.set(nextIndex, propSum);
                    count = 0;
                    propSum = 0;
                    nextIndex++;
                }
            }
            if (i == 31)
                colors.set(9, colors.get(i));
        }
        for (int i = 0; i < 22; i++) {
            colors.remove(10);
        }
        double max = 0;
        for (int i = 0; i < colors.size(); i++) {
            if (colors.get(i) > max) {
                maxColorIndex = i;
                max = colors.get(i);
            }
        }
        return maxColorIndex;
    }
}
