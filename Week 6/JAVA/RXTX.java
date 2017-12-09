package com.company;

        import java.io.*;
        import java.util.*;
        import gnu.io.*;

public class RXTX {
    static Enumeration portList;
    static CommPortIdentifier portId;
    static int maxColorIndex;
    static SerialPort serialPort;
    static OutputStream outputStream;

    public static void main(String[] args) {
        portList = CommPortIdentifier.getPortIdentifiers();


        while (portList.hasMoreElements()) {

            portId = (CommPortIdentifier) portList.nextElement();
            if (portId.getPortType() == CommPortIdentifier.PORT_SERIAL) {

                if (portId.getName().equals("COM3")) {

                    try {
                        serialPort = (SerialPort)
                                portId.open("SimpleWriteApp", 2000);
                    } catch (PortInUseException e) {System.out.println("err");}
                    try {
                        outputStream = serialPort.getOutputStream();
                    } catch (IOException e) {System.out.println("err1");}
                    try {

                        serialPort.setSerialPortParams(9600,
                                SerialPort.DATABITS_8,
                                SerialPort.STOPBITS_1,
                                SerialPort.PARITY_NONE);
                    } catch (UnsupportedCommOperationException e) {System.out.println("err2");}
                    try {

                        int maxColorIndex = ColorProportions.retrieveMaxColor();
                        System.out.println(maxColorIndex);
                        RXTX ServoSpin1 = new RXTX();

                        if(maxColorIndex == 0) {
                            ServoSpin1.write(18);
                            ServoSpin1.println("The color is Red");
                            ServoSpin(10000);
                            ServoSpin1.write(1);
                            System.out.println("The Max Color is White");

                        }else if(maxColorIndex == 1) {

                            System.out.println("The Max Color is Red");

                        }else if(maxColorIndex == 2) {

                            System.out.println("The Max Color is Orange");

                        }else if(maxColorIndex == 3) {

                            System.out.println("The Max Color is Yellow");

                        }else if(maxColorIndex == 4) {

                            System.out.println("The Max Color is Green");

                        }else if(maxColorIndex == 5) {

                            System.out.println("The Max Color is Blue");

                        }else if(maxColorIndex == 6) {
                            System.out.println("The Max Color is Purple");
                        }else if(maxColorIndex == 7) {
                            System.out.println("The Max Color is Pink");
                        }else if(maxColorIndex == 8) {
                            System.out.println("The Max Color is Grey");
                        }else if(maxColorIndex == 9){
                            ServoSpin1.write(180);
                            System.out.println("The Max Color is Black");
                            ServoSpin(10000);
                            ServoSpin1.write(1);
                        }
                        outputStream.close();
                        serialPort.close();

                    } catch (IOException e) {System.out.println("err3");}
                }
            }
        }
    }

    private static void ServoSpin(int i) {
        // TODO Auto-generated method stub

    }

    private void println(String string) {
        // TODO Auto-generated method stub

    }

    private void write(int i) {
        // TODO Auto-generated method stub

    }


}
