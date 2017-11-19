%class responsible for creating objects and moving the program along
clear all %deletes all values in previous variables
clc %clearing the command window just to make life easier
close all
folder = fullfile('C:\Users\Shane\Desktop\MATLAB'); %locating the folder of the desired image
fileDesired = 'Wallpaper.png'; %giving the desired name of the file we want
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
xStart = 0;
totalFrames = 1;
    
if(contains(fileDesired, '.jpg') || contains(fileDesired, '.png'))
InitialImage = imread(fullPath); %the initial, original image
ManipulatedImage = imread(fullPath); %duplicate of initial image, but we are going to change this one
Manipulation = ImageManipulation(ManipulatedImage); %the object that we will use to properly manipulate the image
ManipulatedImageFinal = Manipulation.manipulate; %the variable that the final manipulated image is stored in; call the method that actually manipulates the image in the "ImageManipulation" class

initial = ColorProportions(InitialImage); %the object that we will use to get the proportions for initial image
initialProps = initial.proportions; %the array of proportions for the original image; use the method in "ColorProportions" class to get the proportions
manipulated = ColorProportions(ManipulatedImageFinal); %the object that we will use to get the proportions for manipulated image
manipulatedProps = manipulated.proportions; %the array of proportions for the manipulated image; use the method in "ColorProportions" class to get the proportions

BarNames = ["Grey", "Silv", "SGrey", "ABlue", "CBlue1", "CBlue4", "CoBlue", "LCoBlue", "Turq1", "SBlue", "DBlue", "LSBlue", "LSlBlue", "Aqua", "MBlue", "LAqua", "RBrwn", "SBrwn1", "SBrwn2", "Brwn", "DBrwn", "BWood", "BChoc", "Choc", "Tan", "Grn", "Bisq", "Coral", "Orng", "OrngN", "OrngR1", "HPink", "OrngR2", "LPink", "Red", "Tmto", "Pink", "Salm", "Scar", "DViol", "Mgnta", "Mar", "Prp", "Turq2", "Vio", "VioR", "Whte", "Blck"]; %array with the names of each color found in image
Colors = [84/255 84/255 84/255; 192/255 192/255 192/255; 47/255 79/255 79/255; 240/255 248/255 255/255; 152/255 245/255 255/255; 83/255 134/255 139/255; 66/255 66/255 111/255; 100/255 149/255 237/255; 0/255 206/255 209/255; 0/255 191/255 255/255; 30/255 144/255 255/255; 164/255 211/255 238/255; 132/255 112/255 255/255; 112/255 219/255 147/255; 0/255 0/255 205/255; 127/255 255/255 212/255; 255/255 193/255 193/255; 139/255 69/255 19/255; 244/255 164/255 96/255; 165/255 42/255 42/255; 92/255 64/255 51/255; 222/255 184/255 135/255; 92/255 51/255 23/255; 210/255 105/255 30/255; 219/255 147/255 112/255; 0/255 255/255 0/255; 255/255 228/255 196/255; 255/255 127/255 0/255; 255/255 165/255 0/255; 255/255 127/255 0/255; 255/255 36/255 0/255; 255/255 105/255 180/255; 255/255 69/255 0/255; 255/255 192/255 203/255; 255/255 0/255 0/255; 255/255 99/255 71/255; 188/255 143/255 143/255; 111/255 66/255 66/255; 140/255 23/255 23/255; 148/255 0/255 211/255; 255/255 0/255 255/255; 176/255 48/255 96/255; 160/255 32/255 240/255; 173/255 234/255 234/255; 79/255 47/255 79/255; 204/255 50/255 153/255; 255/255 255/255 255/255; 0/255 0/255 0/255;];                        %RGB value for corresponding color
size(Colors)
size(BarNames)
OriginalGraph = BarGraphs(initialProps, BarNames, Colors, 'Original Image Graph','Colors', 'Proportion (%)',1); %creating original bar graph object
ManipGraph = BarGraphs(manipulatedProps, BarNames, Colors, 'Manipulated Image Graph', 'Colors', 'Proportion (%)', 1); %creating manipulated bar graph object
for i = 1:length(initialProps) %creating difference bar graph array
   DifferenceGraphObj(i) = [abs(initialProps(i) - manipulatedProps(i))];
end

DifferenceGraph = BarGraphs(DifferenceGraphObj, BarNames, Colors, 'Difference Image Graph', 'Colors', 'Proportion (%)', 1); %creating difference bar graph object
OriginalLine = ColorLine(initialProps(1), initialProps(2), initialProps(3), initialProps(4), initialProps(5), initialProps(6), xStart, totalFrames); %creating the color variation line object for original image
ManipLine = ColorLine(manipulatedProps(1), manipulatedProps(2), manipulatedProps(3), manipulatedProps(4), manipulatedProps(5), manipulatedProps(6), xStart, totalFrames); %creating the color variation line object for manipulated image
threeDTest = ThreeDCluster(initialProps, 'Original 3D Cluster'); %creating the 3D cluster object for original image
threeDTest2 = ThreeDCluster(manipulatedProps, 'Manipulated Image 3D Cluster'); %creating the 3D cluster object for original image

main = figure('units','normalized','outerposition',[0 0 1 1])
bars = figure('units','normalized','outerposition',[0 0 1 1])
set(0,'CurrentFigure',main);
subplot(4,2,1), imshow(InitialImage); title('Original Image','FontSize', 16); %displays original image
subplot(4,2,2), imshow(ManipulatedImageFinal, []); title('Manipulated Image','FontSize', 16); %displays manipulated image
subplot(4,2,3), OriginalLine.drawLine; title('Original Image Color Variation Line', 'FontSize', 16); %displays original color variation line
subplot(4,2,4), ManipLine.drawLine; title('Manipulated Image Color Variation Line', 'FontSize', 16); %displays manipulated color variation line
subplot(4,2,5), threeDTest.createGraph; %displays 3D cluster
subplot(4,2,6), threeDTest2.createGraph; %displays 3D cluster
set(0,'CurrentFigure',bars);
subplot(6,3,[1 2 3]), OriginalGraph.createGraph; %displays original bar graph
subplot(6,3,[7 8 9]), ManipGraph.createGraph; %displays manipulated bar graph
subplot(6,3,[13 14 15]), DifferenceGraph.createGraph; %displays difference graph
end

if(contains(fileDesired, '.avi') || contains(fileDesired, '.mp4'))
    % Initialize an object for reading video. Here the video will be placed and we will make it RGB(Red Green Blue) which is used to display all sorts of colors. It is store to the variable name videoObj.
videoObj = vision.VideoFileReader(fileDesired, 'ImageColorSpace', 'RGB');
% Get video frame size and frame rate. The info will have a bunch of information about the video.
S = info(videoObj);
width = S.VideoSize(1);
height = S.VideoSize(end);
frame_rate = S.VideoFrameRate;
allInfo = VideoReader(fileDesired);
totalFrames = round(allInfo.Duration * frame_rate);

% Get individual video frames
image_data = step(videoObj);
firstFrame = true;
frameCount = 1;
skippableFrames = 10;
numberOfLines = ceil(totalFrames/skippableFrames);
% Run the loop until all frames have been displayed
while ~isDone(videoObj)
    if(firstFrame == false)
    xStart = xStart + 1;
    end
    image_data = im2uint8(image_data);
% Display video frame one by one. Step allows us to keep repeating it. Its almost like a for loop that is incremented, or a while loop. It does not stop until the length is met.
InitialImage = image_data; %the initial, original image
ManipulatedImage = image_data; %duplicate of initial image, but we are going to change this one
Manipulation = ImageManipulation(ManipulatedImage); %the object that we will use to properly manipulate the image
ManipulatedImageFinal = Manipulation.manipulate; %the variable that the final manipulated image is stored in; call the method that actually manipulates the image in the "ImageManipulation" class

initial = ColorProportions(InitialImage); %the object that we will use to get the proportions for initial image
initialProps = initial.proportions; %the array of proportions for the original image; use the method in "ColorProportions" class to get the proportions
manipulated = ColorProportions(ManipulatedImageFinal); %the object that we will use to get the proportions for manipulated image
manipulatedProps = manipulated.proportions; %the array of proportions for the manipulated image; use the method in "ColorProportions" class to get the proportions

BarNames = ["Grey", "Silv", "SGrey", "ABlue", "CBlue1", "CBlue4", "CoBlue", "LCoBlue", "Turq1", "SBlue", "DBlue", "LSBlue", "LSlBlue", "Aqua", "MBlue", "LAqua", "RBrown", "SadBrown", "SanBrown", "Brown", "DBrown", "BWood", "BChoco", "Choco", "Tan", "Green", "Bisq", "Coral", "Orange", "OrangeN", "OrangeR1", "HotPink", "OrangeR2", "LPink", "Red", "Tomato", "Pink", "Salm", "Scar", "DViolet", "Magenta", "Maroon", "Purple", "Turq2", "Violet", "VioletR", "White", "Black"]; %array with the names of each color found in image
Colors = [84/255 84/255 84/255; 192/255 192/255 192/255; 47/255 79/255 79/255; 240/255 248/255 255/255; 152/255 245/255 255/255; 83/255 134/255 139/255; 66/255 66/255 111/255; 100/255 149/255 237/255; 0/255 206/255 209/255; 0/255 191/255 255/255; 30/255 144/255 255/255; 164/255 211/255 238/255; 132/255 112/255 255/255; 112/255 219/255 147/255; 0/255 0/255 205/255; 127/255 255/255 212/255; 255/255 193/255 193/255; 139/255 69/255 19/255; 244/255 164/255 96/255; 165/255 42/255 42/255;
92/255 64/255 51/255; 222/255 184/255 135/255; 92/255 51/255 23/255; 210/255 105/255 30/255; 219/255 147/255 112/255; 0/255 255/255 0/255; 255/255 228/255 196/255; 255/255 127/255 0/255; 255/255 165/255 0/255; 255/255 127/255 0/255; 255/255 36/255 0/255; 255/255 105/255 180/255; 255/255 69/255 0/255; 255/255 192/255 203/255; 255/255 0/255 0/255; 255/255 99/255 71/255; 188/255 143/255 143/255; 111/255 66/255 66/255; 140/255 23/255 23/255; 148/255 0/255 211/255; 255/255 0/255 255/255; 176/255 48/255 96/255;
160/255 32/255 240/255; 173/255 234/255 234/255; 79/255 47/255 79/255; 204/255 50/255 153/255; 255/255 255/255 255/255; 0/255 0/255 0/255;];                        %RGB value for corresponding color

OriginalGraph = BarGraphs(initialProps, BarNames, Colors, 'Original Image Graph','Colors', 'Proportion (%)',1); %creating original bar graph object
ManipGraph = BarGraphs(manipulatedProps, BarNames, Colors, 'Manipulated Image Graph', 'Colors', 'Proportion (%)', 1); %creating manipulated bar graph object
for i = 1:length(initialProps) %creating difference bar graph array
   DifferenceGraphObj(i) = [abs(initialProps(i) - manipulatedProps(i))];
end

DifferenceGraph = BarGraphs(DifferenceGraphObj, BarNames, Colors, 'Difference Image Graph', 'Colors', 'Proportion (%)', 1); %creating difference bar graph object
OriginalLine = ColorLine(initialProps(1), initialProps(2), initialProps(3), initialProps(4), initialProps(5), initialProps(6), xStart, numberOfLines); %creating the color variation line object for original image
ManipLine = ColorLine(manipulatedProps(1), manipulatedProps(2), manipulatedProps(3), manipulatedProps(4), manipulatedProps(5), manipulatedProps(6), xStart, numberOfLines); %creating the color variation line object for manipulated image
threeDTest = ThreeDCluster(initialProps, 'Original Image 3D Cluster'); %creating the 3D cluster object for original image
threeDTest2 = ThreeDCluster(manipulatedProps, 'Manipulated Image 3D Cluster'); %creating the 3D cluster object for original image

if(firstFrame)
main = figure('units','normalized','outerposition',[0 0 1 1])
bars = figure('units','normalized','outerposition',[0 0 1 1])
firstFrame = false;
end
set(0,'CurrentFigure',main);
subplot(4,3,1), imshow(InitialImage); title(['Original Image (Frame ' num2str(frameCount) ' out of ' num2str(totalFrames) ')'],'FontSize', 16); %displays original image
subplot(4,3,2), imshow(ManipulatedImageFinal, []); title(['Manipulated Image (Frame ' num2str(frameCount) ' out of ' num2str(totalFrames) ')'],'FontSize', 16); %displays manipulated image
subplot(4,3,[4 5 6]), OriginalLine.drawLine; title('Original Image Color Variation Line', 'FontSize', 16); %displays original color variation line
subplot(4,3,[7 8 9]), ManipLine.drawLine; title('Manipulated Image Color Variation Line', 'FontSize', 16); %displays manipulated color variation line
subplot(4,3,10), threeDTest.createGraph; %displays 3D cluster
subplot(4,3,11), threeDTest2.createGraph; %displays 3D cluster
set(0,'CurrentFigure',bars);
subplot(6,5,[1 2 3 4 5]), OriginalGraph.createGraph; %displays original bar graph
subplot(6,5,[11 12 13 14 15]), ManipGraph.createGraph; %displays manipulated bar graph
subplot(6,5,[21 22 23 24 25]), DifferenceGraph.createGraph; %displays difference graph
drawnow
for n = 1:skippableFrames
image_data = step(videoObj);
frameCount = frameCount + 1;
end
end
% Release the object for reading video
end