# Color Animation
###### Official CIS111B Final Project by [Shane Staret](https://github.com/SStaret43), [Yao Sedzro](https://github.com/Yensedzro), and [Trush Patel](https://github.com/trushpatel1997). Created through the use of MATLAB, Java, and Arduino.

###### *We'd like to thank [Theodore Gray](http://home.theodoregray.com/), [Professor Kendall Martin](http://lelejiktenkye.blogspot.com/), and [Professor Robert Moyer](http://faculty.mc3.edu/rmoyer/) for helping us throughout this project.*

#### Essentially, our project can take any image or video (in an appropriate format) and grab each individual pixel. From there, we can determine the RGB values of each pixel and then deduce the proportion of each color (we used 32 colors for simplicity) in every individual frame. We can also manipulate each frame so that it is composed of different colors and then deduce the proportions of the manipulated image as well. A color line, bar graphs, and three-D cluster plots were used to present the information we gathered about each frame from our code.

#### MATLAB was the program we used to process each frame. Every individual figure produced by MATLAB was sent to Java within a folder and then Java presented these figures within a GUI after the video/image was finished processing in MATLAB. The main reason for this was that it could take hours for MATLAB to process a video and show the results, but in Java, we could show each frame in seconds because they were all already processed within MATLAB. The color proportions of each frame were also determined in MATLAB, then sent to Java through a text file, as we wanted to use Java to manipulate the Arduino. With the Arduino, we programmed a servo to move to certain positions depending on which color had the greatest proportion within a frame.

1. Project Manager: Yao Sedzro
   * ###### created project timeline for all six weeks
   * ###### directed group in specific direction
   * ###### ensured we were all during our part of the project in a timely manner
   * ###### searched for different communication/documentation tools
   * ###### set up and planned meetings
   * ###### communicated with those in power or others who we needed help/advice from
   * ###### obtained access to equipment (arduinos and raspberry pis)
   * ###### created design document
   * ###### helped with code whenever possible
   
#### - Documenter: Trush Patel
#### - Lead Programmer: Shane Staret

###### We give a run down of what we have done for the past six weeks and present our code output within [this short video](https://www.youtube.com/watch?v=CgzbIqppAzo).

* [JavaDoc](https://sstaret43.github.io/ColorAnimation/)
* [Google Hangouts Conversation](https://hangouts.google.com/group/vYaHYCTixmCaNGMp1) NOTE: You will join the conversation and will be able to read all previous messages we sent
* [Freedcamp Page](https://freedcamp.com/CIS_111B_Final_Proje_sX0/A_Project_IzH/todos)
