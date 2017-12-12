package MATLAB; //package MATLAB

import javax.swing.*;
import java.awt.*; //import to show figures and to respond to the mouse clicks
import java.awt.event.KeyEvent;

/**
 * Created by Shane on 12/1/2017.
 */
public class Tabs extends JFrame {
    public Tabs() {

        setTitle("Tabbed Pane"); //title of the figure
        JTabbedPane jtp = new JTabbedPane(); //creates the area the tabs will reside within
        getContentPane().add(jtp); //adds the area created above to an arraylist of areas (size 1 because we only want one section of tabs)
        
        ImageIcon oImg = new ImageIcon("C:\\Users\\Shane\\Desktop\\MATLAB\\imageLogo.png"); //creates the logo that will represent the first tab
        Image image = oImg.getImage(); //changes the ImageIcon into an Image so we can scale it to an appropriate size
        Image newimg = image.getScaledInstance(50, 40,  java.awt.Image.SCALE_SMOOTH); // scale the logo in the smooth way
        oImg = new ImageIcon(newimg);  // transform it back into an ImageIcon
        
        ImageIcon mImg = new ImageIcon("C:\\Users\\Shane\\Desktop\\MATLAB\\barLogo.png"); //creates the logo that will represent the second tab
        Image image2 = mImg.getImage(); //changes the ImageIcon into an Image so we can scale it to an appropriate size
        Image newimg2 = image2.getScaledInstance(50, 40, java.awt.Image.SCALE_SMOOTH); // scale it the smooth way
        mImg = new ImageIcon(newimg2);  // transform it back into an ImageIcon
        
        JLabel label1 = new JLabel(new ImageIcon("C:\\Users\\Shane\\Desktop\\MATLAB\\MainFigure.png")); //creates the image we actually want to see when clicking the first tab
        JLabel label2 = new JLabel(new ImageIcon("C:\\Users\\Shane\\Desktop\\MATLAB\\BarFigure.png")); //creates the image we actually want to see when clicking the second tab
        
        JPanel jp1 = new JPanel(); //creates a panel where we will put the pictures, color lines, and 3D cluster plot
        JPanel jp2 = new JPanel(); //creates a panel where we will put the bar graphs
        
        jp1.add(label1); //adds the actual image of the pictures, color lines, and 3D cluster plot to the panel
        jp2.add(label2); //adds the actual image of the bar graphs to the panel
        
        jtp.addTab("",oImg, jp1); //actually creates the individual first tab
        jtp.setMnemonicAt(0, KeyEvent.VK_1); //if the first tab is clicked, then the first panel will show
        jtp.addTab("",mImg, jp2); //actually creates the individual second tab
        jtp.setMnemonicAt(1, KeyEvent.VK_2); //if the second tab is clicked, then the second panel will show
    }
}
