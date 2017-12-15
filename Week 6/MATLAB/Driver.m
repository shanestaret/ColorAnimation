%class responsible for creating objects and moving the program along
clear all %deletes all values in previous variables
clc %clearing the command window just to make life easier
close all %closes all figures/files
folder = fullfile('C:\Users\Shane\Desktop\MATLAB'); %locating the folder of the desired image
fileDesired = 'DisneyColorfulLogo.jpg'; %giving the desired name of the file we want
fullPath = fullfile(folder, fileDesired); %assigning the filename based to the rest of the path (C:\Users\Shane\Desktop\MATLAB)
% Get the full filename, along with the path in which it exists
    if ~exist(fullPath, 'file')
    % if no file exists in the folder matching the "fullFileName"
    fullPath = fileDesired % Then just check for the fileName without a specific path
	 ~exist(fullPath, 'file') %if the file still is not found
    error = sprintf('%s does not exist.', fullPath); %Then tell user the file doesn't exist
    uiwait(warndlg(error));
    return; %print out error message
    end
ColorLineXStart = 0; %x-value that determines where the color variation line should start
totalFrames = 1; %total number of frames is always at least one, as images have one and videos may have more
isAnImage = (contains(fileDesired, '.jpg') || contains(fileDesired, '.jpeg') || contains(fileDesired, '.png') || contains(fileDesired, '.gif')); %true if file is an image
isAVid = (contains(fileDesired, '.avi') || contains(fileDesired, '.mp4')); %true if file is a video

ColorNames = ["White", "DarkRed", "Red", "LightRed", "DarkOrange", "Orange", "LightOrange", "DarkYellow", "Yellow", "LightYellow", "DarkGreen", "Green", "LightGreen", "DarkSkyBlue", "SkyBlue", "LightSkyBlue", "DarkBlue", "Blue", "LightBlue", "DarkPurple", "Purple", "LightPurple", "DarkPink", "Pink", "LightPink", "DarkHotPink", "HotPink", "LightHotPink", "DarkGrey", "Grey", "LightGrey", "Black"]; %array with the names of each color found in image
ColorValues = [255/255 255/255 255/255; 102/255 0/255 0/255; 255/255 0/255 0/255; 255/255 153/255 153/255; 102/255 51/255 0/255; 255/255 128/255 0/255; 255/255 204/255 153/255; 102/255 102/255 0/255; 255/255 255/255 0/255; 255/255 255/255 153/255; 0/255 102/255 0/255; 0/255 255/255 0/255; 153/255 255/255 153/255; 0/255 102/255 102/255; 0/255 255/255 255/255; 153/255 255/255 255/255; 0/255 0/255 102/255; 0/255 0/255 255/255; 153/255 153/255 255/255; 51/255 0/255 102/255; 127/255 0/255 255/255; 204/255 153/255 255/255; 102/255 0/255 102/255; 255/255 0/255 255/255; 255/255 153/255 255/255; 102/255 0/255 51/255; 255/255 0/255 127/255; 255/255 153/255 204/255; 64/255 64/255 64/255; 128/255 128/255 128/255; 224/255 224/255 224/255; 0/255 0/255 0/255;]; %the RGB value that corresponds with the color in "colorNames"
firstFrame = true; %the first time through the loop, we will be on the first frame
frameCount = 1; %always at least one frame in a video/image
numberOfFramesDisplayed = 1; %always at least one frame will be displayed
subPlotCol = 2; %always at least two columns of subplots if there is an image displayed
subPlotLine = [3; 4]; %if we're only looking at one image, the color lines will appear in plots 3 and 4
subPlotThreeD = [5; 6]; %if we're only looking at one image, the color lines will appear in plots 5 and 6
    
if(isAVid) %if the file is a video
    subPlotCol = 3; %number of subplots in a column; display becomes formatted better for video
    subPlotLine = [4 5 6; 7 8 9]; %need the plot space for the color lines to be much bigger when looking at a video
    subPlotThreeD = [10; 11]; %need more plot space for video, so these get pushed back to plots 10 and 11
% Initialize an object for reading video. Here the video will be placed and we will make it RGB(Red Green Blue) which is used to display all sorts of colors. It is store to the variable name videoObj.
videoObj = vision.VideoFileReader(fileDesired, 'ImageColorSpace', 'RGB');
% Get video frame size and frame rate. The info will have a bunch of information about the video.
someInfo = info(videoObj); %retrieves some info about the video's properties
frameRate = someInfo.VideoFrameRate; %retrieves frame rate of video
allInfo = VideoReader(fileDesired); %retrieves A LOT more info about the video
totalFrames = round(allInfo.Duration * frameRate); %Get the total number of frames in the video by multiplying its duration and seconds by frames per second

oneFrameFromVid = step(videoObj); % Get individual video frames
skippableFrames = 1; %the number of frames we want to skip per iteration; if it is "10", then we look at the first, eleventh, twenty-first, thirty-first, ... frame
numberOfFramesDisplayed = ceil(totalFrames/skippableFrames); %the total number of frames that will be displayed on the figure; this changes depending on the number of frames in the video and how many we will skip

end

for i = 1:numberOfFramesDisplayed % Run the loop until all frames have been displayed
    if(firstFrame == false) %if it isn't the first frame, then we move where the color variation line is drawn so they can be seen side by side
    ColorLineXStart = ColorLineXStart + 1;
    end
    if(isAnImage)
    InitialImage = imread(fullPath); %the initial, original image
    DuplicatedImage = imread(fullPath); %duplicate of initial image, but we are going to change this one
    elseif(isAVid)
    oneFrameFromVid = im2uint8(oneFrameFromVid); %converting the frame into a type of image whose RGB values can properly be grabbed and manipulated
    InitialImage = oneFrameFromVid; %the initial, original image
    DuplicatedImage = oneFrameFromVid; %duplicate of initial image, but we are going to change this one
    end
% Display video frame one by one. Step allows us to keep repeating it. Its almost like a for loop that is incremented, or a while loop. It does not stop until the length is met.
Manipulatable = ImageManipulation(DuplicatedImage); %the object that we will use to properly manipulate the image
ManipulatedImageFinal = Manipulatable.manipulate; %the variable that the final manipulated image is stored in; call the method that actually manipulates the image in the "ImageManipulation" class

initial = ColorProportions(InitialImage, ColorNames); %the object that we will use to get the proportions for initial image
initialProps = initial.proportions; %the array of proportions for the initial image; use the method in "ColorProportions" class to get the proportions

fileID = fopen( 'propsArray.txt', 'w' ); %creates a text file which we will write to
fprintf(fileID, '%d\n', initialProps); %writes the original image proportions to this text file so we can use the proportions in Java
fclose(fileID); %closes the file

manipulated = ColorProportions(ManipulatedImageFinal, ColorNames); %the object that we will use to get the proportions for manipulated image
manipulatedProps = manipulated.proportions; %the array of proportions for the manipulated image; use the method in "ColorProportions" class to get the proportions

OriginalGraph = BarGraphs(initialProps, ColorNames, ColorValues, 'Original Image Graph','Colors', 'Proportion (%)', 1); %creating original bar graph object
ManipGraph = BarGraphs(manipulatedProps, ColorNames, ColorValues, 'Manipulated Image Graph', 'Colors', 'Proportion (%)', 1); %creating manipulated bar graph object
for i = 1:length(initialProps) %creating difference bar graph array
   DifferenceGraphArray(i) = [abs(initialProps(i) - manipulatedProps(i))]; %This gets the difference of each bar for the initial and manipulated bar graphs and puts it in an array; so if the original bar graph was 50% blue and the manipulated was 60%, then the difference bar graph shows a 10% difference
end

DifferenceGraph = BarGraphs(DifferenceGraphArray, ColorNames, ColorValues, 'Difference Image Graph', 'Colors', 'Proportion (%)', 1); %creating difference bar graph object
OriginalLine = ColorLine(initialProps, ColorLineXStart, numberOfFramesDisplayed, ColorValues); %creating the color variation line object for original image
ManipLine = ColorLine(manipulatedProps, ColorLineXStart, numberOfFramesDisplayed, ColorValues); %creating the color variation line object for manipulated image
threeDOrig = ThreeDCluster(initialProps, ColorValues, 'Original 3D Cluster'); %creating the 3D cluster object for original image
threeDManip = ThreeDCluster(manipulatedProps, ColorValues, 'Manipulated Image 3D Cluster'); %creating the 3D cluster object for original image

if(firstFrame)
bars = figure('units','normalized','outerposition',[0 0 1 1], 'Name', 'Bar Graphs') %creates a figure that holds the bar graphs
main = figure('units','normalized','outerposition',[0 0 1 1], 'Name', 'Color Variation'); %creates a figure that holds everything but the bar graphs
firstFrame = false; %sets this false so that the figures are only created once: for the first frame looked at; after this, the subplots are simply updated
end
set(0,'CurrentFigure',main);
subplot(4,subPlotCol,1), imshow(InitialImage); title(['Original Image (Frame ' num2str(frameCount) ' out of ' num2str(totalFrames) ')'],'FontSize', 16); %displays original image
subplot(4,subPlotCol,2), imshow(ManipulatedImageFinal, []); title(['Manipulated Image (Frame ' num2str(frameCount) ' out of ' num2str(totalFrames) ')'],'FontSize', 16); %displays manipulated image
subplot(4,subPlotCol,subPlotLine(1,:)), OriginalLine.drawLine; title('Original Image Color Variation Line', 'FontSize', 16); %displays original color variation line
subplot(4,subPlotCol,subPlotLine(2,:)), ManipLine.drawLine; title('Manipulated Image Color Variation Line', 'FontSize', 16); %displays manipulated color variation line
subplot(4,subPlotCol,subPlotThreeD(1)), threeDOrig.createGraph; %displays 3D cluster
subplot(4,subPlotCol,subPlotThreeD(2)), threeDManip.createGraph; %displays 3D cluster
mainFigure = getframe(gcf); %creates object that holds the figure
[X, Map] = frame2im(mainFigure); %creates a matrix that converts the figure into an image
imwrite([X, Map], 'MainFigure.png'); %writes the image of the figure to an image file
set(0,'CurrentFigure',bars);
subplot(6,5,[1 2 3 4 5]), OriginalGraph.createGraph; %displays original bar graph
subplot(6,5,[11 12 13 14 15]), ManipGraph.createGraph; %displays manipulated bar graph
subplot(6,5,[21 22 23 24 25]), DifferenceGraph.createGraph; %displays difference graph
drawnow
barFigure = getframe(gcf); %creates object that holds the figure
[X, Map] = frame2im(barFigure); %creates a matrix that converts the figure into an image
imwrite([X, Map], 'BarFigure.png'); %writes the image of the figure to an image file
if(isAVid)
for n = 1:skippableFrames
oneFrameFromVid = step(videoObj);
frameCount = frameCount + 1;
if(frameCount >= totalFrames)
    release(videoObj);
end
end
end
end
