package com.company;

import javax.swing.*;
import java.awt.*;
import java.awt.event.KeyEvent;
import java.io.BufferedReader; //all key import statements
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

/**
 * Class that creates the GUI and grabs the image files from MATLAB
 */
public class Tabs extends JFrame {
    private String line = null; //String that will represent every individual line of text file
    private String oldPath; //where some of our text files are stored
    private String newPath; //what our path is that we are grabbing image files/text files from
    private String[] txtFileComponents = new String[2]; //array that holds both the folder name and the number of frames passed by the text file
    private String folderName; //name of the folder with the images
    private int numberOfFrames; //the total number of frames we are displaying
    private int whichTab = 0; //the tab that the user is currently looking at, need to know so we don't accidently switch it (default set to first tab)
    private File txtFile;
    private FileReader reader;
    private BufferedReader bufferedReader;
    private JTabbedPane jtp;
    private ImageIcon oImg;
    private Image image;
    private Image newImg;
    private ImageIcon mImg;
    private Image image2;
    private Image newImg2;
    private JLabel label1;
    private JLabel label2;
    private JPanel jp1;
    private JPanel jp2;

    public Tabs(String np, String op) {

        newPath = np;
        oldPath = op;
    }

    public void createTabs() throws IOException, InterruptedException { //method to create tabs
        txtFile = new File(newPath + "fileInfo.txt"); //grab the text file
        reader = new FileReader(txtFile); //read the text file
        bufferedReader = new BufferedReader(reader); //read the text file in such a way we can loop through the individual lines
        while ((line = bufferedReader.readLine()) != null) { //while there is another line in the text file to read
            txtFileComponents = line.split(">"); //split the array based on the ">" sign, which is intentionally included
            folderName = txtFileComponents[0]; //folderName is the same as the folder sent by the text file
            numberOfFrames = Integer.parseInt(txtFileComponents[1]); //numberOfFrames is the number of frames we actually want to display
        }

        setTitle("Tabbed Pane"); //title of the figure
        jtp = new JTabbedPane(); //creates the area the tabs will reside within
        getContentPane().add(jtp); //adds the area created above to an arraylist of areas (size 1 because we only want one section of tabs)
        oImg = new ImageIcon(oldPath + "imageLogo.png"); //creates the logo that will represent the first tab
        image = oImg.getImage(); //changes the ImageIcon into an Image so we can scale it to an appropriate size
        newImg = image.getScaledInstance(50, 40, java.awt.Image.SCALE_SMOOTH); // scale the logo in the smooth way
        oImg = new ImageIcon(newImg);  // transform it back into an ImageIcon
        mImg = new ImageIcon(oldPath + "barLogo.png"); //creates the logo that will represent the second tab
        image2 = mImg.getImage(); //changes the ImageIcon into an Image so we can scale it to an appropriate size
        newImg2 = image2.getScaledInstance(50, 40, java.awt.Image.SCALE_SMOOTH); // scale it the smooth way
        mImg = new ImageIcon(newImg2);  // transform it back into an ImageIcon
        jp1 = new JPanel(); //creates a panel where we will put the pictures, color lines, and 3D cluster plot
        jp2 = new JPanel(); //creates a panel where we will put the bar graphs

        for (int i = 0; i < numberOfFrames; i++) { //for every frame we want to display
            label1 = new JLabel(new ImageIcon(oldPath + folderName + "\\Frame" + Integer.toString(i + 1) + "Main.png")); //creates the image we actually want to see when clicking the first tab
            label2 = new JLabel(new ImageIcon(oldPath + folderName + "\\Frame" + Integer.toString(i + 1) + "Bars.png")); //creates the image we actually want to see when clicking the second tab
            jp1.add(label1); //adds the actual image of the pictures, color lines, and 3D cluster plot to the panel
            jp2.add(label2); //adds the actual image of the bar graphs to the panel
            jtp.addTab("", oImg, jp1); //actually creates the individual first tab
            jtp.setMnemonicAt(0, KeyEvent.VK_1); //if the first tab is clicked, then the first panel will show
            jtp.addTab("", mImg, jp2); //actually creates the individual second tab
            jtp.setMnemonicAt(1, KeyEvent.VK_2); //if the second tab is clicked, then the second panel will show
            jtp.setSelectedIndex(whichTab);
            Thread.sleep(100);
            pack();
            setVisible(true); //displays the GUI
            setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
            Thread.sleep(50);
            whichTab = jtp.getSelectedIndex();
            if (i != numberOfFrames - 1) {
                jp1.removeAll();
                jp2.removeAll();
            }
        }
    }
}
