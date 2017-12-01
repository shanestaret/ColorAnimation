package com.company;

        import javax.swing.*;
        import java.awt.*;
        import java.awt.event.KeyEvent;
        import java.io.IOException;
        import java.util.Arrays;

public class Main {

    public static void main(String[] args) throws IOException {
        Tabs tp = new Tabs();
        tp.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        tp.pack();
        tp.setVisible(true);

        int colorProps = ColorProportions.retrieveMax();
        System.out.println(colorProps);
        }
    }
}