package com.company;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

/**
 * Created by Shane on 12/1/2017.
 */
public class ColorProportions {
    private static int count = 0;
    private static String line = null;
    private static double[] colors = new double[32];
    private static int maxColorIndex;
    public static int retrieveMax() throws IOException {
        File txtFile = new File("C:\\Users\\Shane\\Desktop\\MATLAB\\propsArray.txt");
        FileReader reader = new FileReader(txtFile);
        BufferedReader bufferedReader = new BufferedReader(reader);
        while((line = bufferedReader.readLine()) != null) {
            colors[count] = Double.parseDouble(line);
            count++;
        }
        double max = 0;
        for(int i = 0; i < colors.length; i++) {
            if(colors[i] > max) {
                maxColorIndex = i;
                max = colors[i];
            }
    }
        return maxColorIndex;
}
