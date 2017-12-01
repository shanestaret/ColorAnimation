package com.company;

import javax.swing.*;
import java.awt.*;
import java.awt.event.KeyEvent;

/**
 * Created by Shane on 12/1/2017.
 */
public class Tabs extends JFrame {
    public Tabs() {

        setTitle("Tabbed Pane");
        JTabbedPane jtp = new JTabbedPane();
        getContentPane().add(jtp);
        ImageIcon oImg = new ImageIcon("C:\\Users\\Shane\\Desktop\\MATLAB\\imageLogo.png");
        Image image = oImg.getImage(); // transform it
        Image newimg = image.getScaledInstance(50, 40,  java.awt.Image.SCALE_SMOOTH); // scale it the smooth way
        oImg = new ImageIcon(newimg);  // transform it back
        ImageIcon mImg = new ImageIcon("C:\\Users\\Shane\\Desktop\\MATLAB\\barLogo.png");
        Image image2 = mImg.getImage(); // transform it
        Image newimg2 = image2.getScaledInstance(50, 40, java.awt.Image.SCALE_SMOOTH); // scale it the smooth way
        mImg = new ImageIcon(newimg2);  // transform it back
        JLabel label1 = new JLabel(new ImageIcon("C:\\Users\\Shane\\Desktop\\MATLAB\\MainFigure.png"));
        JLabel label2 = new JLabel(new ImageIcon("C:\\Users\\Shane\\Desktop\\MATLAB\\BarFigure.png"));
        JPanel jp1 = new JPanel();
        JPanel jp2 = new JPanel();
        jp1.add(label1);
        jp2.add(label2);
        jtp.addTab("",oImg, jp1);
        jtp.setMnemonicAt(0, KeyEvent.VK_1);
        jtp.addTab("",mImg, jp2);
        jtp.setMnemonicAt(1, KeyEvent.VK_2);
    }
}
