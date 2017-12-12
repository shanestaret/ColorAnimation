package MATLAB;//package MATLAB

        import java.io.*;//imports the library's 
        import java.util.*;//imports java library's 
        import gnu.io.*;//used for arduio communication

public class RXTX {//class RXTX. Rxtx is used primarily for communicating java and arduino
    static Enumeration portList;// special data type that enables for a variable to be a set of predefined constants
    static CommPortIdentifier portId;//used to identify the port the usb is connected to
    static int maxColorIndex;//maxColorIndex created in Main class. The maxColorIndex assigns an index to every
    //color from the MATLAB textfile and then sorts it into an Array from Max to Min. Outputs the max index.
    static SerialPort serialPort; // used to get the port
    static OutputStream outputStream;// is used for many things that you write to

    public static void main(String[] args) {//main method
    	
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
                    } catch (PortInUseException e) {System.out.println("err");}//if the port is not found,
                    //the "err" error shows up
                    try {//will try
                        outputStream = serialPort.getOutputStream();//it will try to write to the port
                    } catch (IOException e) {System.out.println("err1");}//if it fails to do so
                    //it will catch it and give "err1" error
                    try {//will try

                        serialPort.setSerialPortParams(9600,//the 9600 is the baud
                                SerialPort.DATABITS_8, //Bits that are sent 
                                SerialPort.STOPBITS_1,// Bits that stop
                                SerialPort.PARITY_NONE);//No connection
                    } catch (UnsupportedCommOperationException e) {System.out.println("err2");}//If unable to
                    //this error will print output will say "err2"
                    try {//will try
                        
                        outputStream.close();//closes output stream
                        serialPort.close();//closes serial port
                        
                    } catch (IOException e) {System.out.println("err3");}//if all fails then error 3 will result
                    //output will say "err3"
                }
            }
        }
