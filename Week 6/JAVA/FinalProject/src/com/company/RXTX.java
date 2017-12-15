package MATLAB;//package matlab
import java.io.BufferedReader;//Reads
import java.io.InputStreamReader;//input stream library
import java.io.OutputStream;//output which sends data library
import gnu.io.CommPortIdentifier; //com port which is used to communicate with arduino
import gnu.io.SerialPort;//Serial port library
import gnu.io.SerialPortEvent; //events for serial port
import gnu.io.SerialPortEventListener; //listens to the events of serial port
import java.util.Enumeration;


public class Project implements SerialPortEventListener {//Project class implementing serialporteventlistener
	SerialPort serialPort;//serial port variable created to use
        /** The port we're normally going to use. */
	private static final String PORT_NAMES[] = { 
			"/dev/tty.usbserial-A9007UX1", // Mac OS X
                        "/dev/ttyACM0", // Raspberry Pi
			"/dev/ttyUSB0", // Linux
			"COM3", // Windows
	};
	/**
	* A BufferedReader which will be fed by a InputStreamReader 
	* converting the bytes into characters 
	* making the displayed results codepage independent
	*/
	private BufferedReader input;
	/** The output stream to the port */
	private OutputStream output;
	/** Milliseconds to block while waiting for port open */
	private static final int TIME_OUT = 2000;
	/** Default bits per second for COM port. */
	private static final int DATA_RATE = 9600;//the rate of arudino serial monitor defaulted

	public void initialize() {
                // the next line is for Raspberry Pi and 
                // gets us into the while loop and was suggested here was suggested http://www.raspberrypi.org/phpBB3/viewtopic.php?f=81&t=32186


		CommPortIdentifier portId = null;
		Enumeration portEnum = CommPortIdentifier.getPortIdentifiers();

		//First, Find an instance of serial port as set in PORT_NAMES.
		while (portEnum.hasMoreElements()) {
			CommPortIdentifier currPortId = (CommPortIdentifier) portEnum.nextElement();
			for (String portName : PORT_NAMES) {
				if (currPortId.getName().equals(portName)) {
					portId = currPortId;
					break;
				}
			}
		}
		if (portId == null) {//if portid == null then it will output could not find com port
			System.out.println("Could not find COM port.");
			return;
		}

		try {//trys
			// open serial port, and use class name for the appName.
			serialPort = (SerialPort) portId.open(this.getClass().getName(),
					TIME_OUT);

			// set port parameters
			serialPort.setSerialPortParams(DATA_RATE,
					SerialPort.DATABITS_8,
					SerialPort.STOPBITS_1,
					SerialPort.PARITY_NONE);

			// open the streams
			input = new BufferedReader(new InputStreamReader(serialPort.getInputStream()));
			output = serialPort.getOutputStream();

			// add event listeners
			serialPort.addEventListener(this);
			serialPort.notifyOnDataAvailable(true);
		} catch (Exception e) {
			System.err.println(e.toString());
		}
	}

	/**
	 * This should be called when you stop using the port.
	 * This will prevent port locking on platforms like Linux.
	 */
	public synchronized void close() {//close
		if (serialPort != null) {//if serialport is not equal to null
			serialPort.removeEventListener();//removes event listener
			serialPort.close();//closes serial port
		}
	}

	/**
	 * Handle an event on the serial port. Read the data and print it.
	 */
	public synchronized void serialEvent(SerialPortEvent oEvent) {

		if (oEvent.getEventType() == SerialPortEvent.DATA_AVAILABLE) {//if serialportevent.data available
			try {//try
				String inputLine=input.readLine();//input then reads line
				System.out.println(inputLine);//prints input line
			} catch (Exception e) {//catches exception
				System.err.println(e.toString());//prints exception e to string
			}
		}
		// Ignore all the other eventTypes, but you should consider the other ones.
	}

	public static void main(String[] args) throws Exception {//if anything goes wrong it will throw exception
		
		Project main = new Project();//main object created
		
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

	
		main.initialize();//starts main
		Thread t=new Thread() {
			public void run() {
				//the following line will keep this app alive for 1000 seconds,
				//waiting for events to occur and responding to them (printing incoming messages to console).
				try {Thread.sleep(1000000);} catch (InterruptedException ie) {}
			}
		};
		t.start();//starts thread 
		System.out.println("Started");//output started
	}


}
