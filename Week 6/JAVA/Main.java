package com.company;

        import javax.swing.*;
        import java.io.IOException;

public class Main {

    public static void main(String[] args) throws IOException {
        Tabs tp = new Tabs(); //creates the tabs to hold both figures
        tp.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); //the code ends as soon as the tabs are closed out of
        tp.pack(); //basically sets it so the GUI displays full screen
        tp.setVisible(true); //displays the GUI

        int maxColorIndex = ColorProportions.retrieveMaxColor(); //uses the "retrieveMaxColor" method in the "ColorProportions" class to get the index that has the greatest proportion
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
        File fileOfMaxColorIndex = new file("C://Users//Shane//Desktop");
        FileWriter writer = new FileWriter(fileOfMaxColorIndex);
        writer.write(maxColorIndex);
        writer.close();
    }
}
