%class responsible for creating objects and moving the program along
clear all %deletes all values in previous variables
clc %clearing the command window just to make life easier
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
    
InitialImage = imread(fullPath); %the initial, original image
ManipulatedImage = imread(fullPath); %duplicate of initial image, but we are going to change this one
Manipulation = ImageManipulation(ManipulatedImage); %the object that we will use to properly manipulate the image
ManipulatedImageFinal = Manipulation.manipulate; %the variable that the final manipulated image is stored in; call the method that actually manipulates the image in the "ImageManipulation" class

initial = ColorProportions(InitialImage); %the object that we will use to get the proportions for initial image
initialProps = initial.proportions; %the array of proportions for the original image; use the method in "ColorProportions" class to get the proportions
manipulated = ColorProportions(ManipulatedImageFinal); %the object that we will use to get the proportions for manipulated image
manipulatedProps = manipulated.proportions; %the array of proportions for the manipulated image; use the method in "ColorProportions" class to get the proportions

BarNames = ["White", "Black", "Grey", "Red", "Green", "Blue"]; %array with the names of each color found in image
Colors = [1 1 1; 0 0 0; 0.7 0.7 0.7; 1 0 0; 0 1 0; 0 0 1]; %RGB value for corresponding color

OriginalGraph = BarGraphs(initialProps, BarNames, Colors, 'Original Image Graph','Colors', 'Proportion (%)',1); %creating original bar graph object
ManipGraph = BarGraphs(manipulatedProps, BarNames, Colors, 'Manipulated Image Graph', 'Colors', 'Proportion (%)', 1); %creating manipulated bar graph object
for i = 1:length(initialProps) %creating difference bar graph array
   DifferenceGraphObj(i) = [abs(initialProps(i) - manipulatedProps(i))];
end

DifferenceGraph = BarGraphs(DifferenceGraphObj, BarNames, Colors, 'Difference Image Graph', 'Colors', 'Proportion (%)', 1); %creating difference bar graph object
OriginalLine = ColorLine(initialProps(1), initialProps(2), initialProps(3), initialProps(4), initialProps(5), initialProps(6)); %creating the color variation line object for original image
ManipLine = ColorLine(manipulatedProps(1), manipulatedProps(2), manipulatedProps(3), manipulatedProps(4), manipulatedProps(5), manipulatedProps(6)); %creating the color variation line object for manipulated image
threeDTest = ThreeDCluster(initialProps, 'Original 3D Cluster', initialProps(1), initialProps(2), initialProps(3), initialProps(4), initialProps(5), initialProps(6)); %creating the 3D cluster object for original image

figure('units','normalized','outerposition',[0 0 1 1])
subplot(3,3,1), imshow(InitialImage); title('Original Image', 'FontSize', 16); %displays original image
subplot(3,3,2), imshow(ManipulatedImageFinal, []); title('Manipulated Image', 'FontSize', 16); %displays manipulated image
subplot(3,3,4), OriginalGraph.createGraph; %displays original bar graph
subplot(3,3,5), ManipGraph.createGraph; %displays manipulated bar graph
subplot(3,3,6), DifferenceGraph.createGraph; %displays difference graph
subplot(3,3,7), OriginalLine.drawLine; title('Original Image Color Variation Line', 'FontSize', 16); %displays original color variation line
subplot(3,3,8), ManipLine.drawLine; title('Manipulated Image Color Variation Line', 'FontSize', 16); %displays manipulated color variation line
subplot(3,3,9), threeDTest.createGraph; %displays 3D cluster (only for original image for now)