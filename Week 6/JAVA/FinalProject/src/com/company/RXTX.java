package com.company;//package MATLAB

import java.io.*;//imports the library's
import java.util.*;//imports java library's
import gnu.io.*;//used for arduio communication
import javax.swing.*; //import to show figures
import java.io.IOException; //import to allow us to read a file

public class RXTX {//class RXTX. Rxtx is used primarily for communicating java and arduino
    static Enumeration portList;// special data type that enables for a variable to be a set of predefined constants
    static CommPortIdentifier portId;//used to identify the port the usb is connected to
    static int maxColorIndex;//maxColorIndex created in Main class. The maxColorIndex assigns an index to every
    //color from the MATLAB textfile and then sorts it into an Array. Outputs the max index.
    static SerialPort serialPort; // used to get the port
    static OutputStream outputStream;// is used for many things that you write to

    public static void main(String[] args) {//main method


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
        So if "maxColorIndex" is 7, that means the servo should point to the "Pink" color on the color wheel */

        FileCreator.create(maxColorIndex); //sending the maxColorIndex to a method in the "FileCreator" class that creates a file, and writes the maxColorIndex to that file

        portList = CommPortIdentifier.getPortIdentifiers();//identifies the port and gets the port


        while (portList.hasMoreElements()) {// the portlist will have multiple COM ports

            portId = (CommPortIdentifier) portList.nextElement();//initialize the portId
            if (portId.getPortType() == CommPortIdentifier.PORT_SERIAL) {//if the port id and the port
                //identified are the same then it will proceed

                if (portId.getName().equals("COM3")) {//this is really important because you have to change it
                    //so the "COM#" matches up to the one you just plugged in

                    try {//if it matches, it will try this below
                        serialPort = (SerialPort)//serialPort is initialized
                                portId.open("SimpleWriteApp", 2000);//it will write a simple app
                    } catch (PortInUseException e) {
                        System.out.println("err");
                    }//if the port is not found,
                    //the "err" error shows up
                    try {//will try
                        outputStream = serialPort.getOutputStream();//it will try to write to the port
                    } catch (IOException e) {
                        System.out.println("err1");
                    }//if it fails to do so
                    //it will catch it and give "err1" error
                    try {//will try

                        serialPort.setSerialPortParams(9600,//the 9600 is the baud
                                SerialPort.DATABITS_8, //Bits that are sent
                                SerialPort.STOPBITS_1,// Bits that stop
                                SerialPort.PARITY_NONE);//No connection
                    } catch (UnsupportedCommOperationException e) {
                        System.out.println("err2");
                    }//If unable to
                    //this error will print output will say "err2"
                    try {//will try

                        outputStream.close();//closes output stream
                        serialPort.close();//closes serial port

                    } catch (IOException e) {
                        System.out.println("err3");
                    }//if all fails then error 3 will result
                    //output will say "err3"
                }
            }
        }
    }
}