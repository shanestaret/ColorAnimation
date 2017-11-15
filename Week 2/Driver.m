clear all
clc
img = imread('DisneyColorfulLogo.jpg');
ManipulatedImage = imread('DisneyColorfulLogo.jpg'); %duplicate of initial image, but we are going to change this one
%dimensions of the image
[height width color] = size(ManipulatedImage); % array with first element as height, second as width, and third showing whether it is in color or not (3 means it is in color)
transferStructure = makecform('srgb2lab'); %variable that allows us to build a structure to change the color of the image
lab = applycform(ManipulatedImage, transferStructure); %converting the transfer structure to a lab color space, so we can actually manipulate the individual R, G, and B numbers along with brightness/luminosity
L_channel = lab(:,:,1); %alters the brightness by 1
A_channel = lab(:,:,2); %alters color of red/green color axis by 2
B_channel = lab(:,:,3); %alters color of yellow/blue color axis by 3
L_channelNew = 100 - L_channel; %Essentially decreasing the brightness by 1

A_channelNew = 255-A_channel; %Essentially decreasing red/green color axis by 2 (basically, flips the red and green colors)
newColor = cat(3, L_channelNew, A_channelNew, B_channel); %array that holds the new lab color space values, it is important these values can convert to RGB, otherwise an error will occur
secondTransfer = makecform('lab2srgb'); %converting from lab color space back to RGB
ManipulatedImageFinal = applycform(newColor,secondTransfer); %applying all of these changes to the manipulated image

frame_size2 = size(ManipulatedImageFinal);
allpixels2 = reshape(ManipulatedImageFinal, frame_size2(1)*frame_size2(2), frame_size2(3))
[row,col] = size(allpixels2);
totalPixels2 = 0;
count2 = 0;
white2 = 0;
black2 = 0;
red2 = 0;
green2 = 0;
blue2 = 0;
grey2 = 0;
purplepink2 = 0;
yelloworange2 = 0;
for row = 1:row
    count2 = 0;
    for col = 1:col
        if count2 == 0
            R = allpixels2(row,col);
            count2 = count2 + 1;
        elseif count2 == 1
            G = allpixels2(row,col);
            count2 = count2 + 1;
        elseif count2 == 2
            B = allpixels2(row,col);
            count2 = count2 + 1;
        end
        totalPixels2 = totalPixels2 + 1;
    end
        if R > 230 && G > 230 && B > 230
            white2 = white2 + 1;
        elseif R < 20 && G < 20 && B < 20
            black2 = black2 + 1;
        elseif abs(R - G) <= 5 && abs(G - B) <= 5 && abs(R - B) <= 5
            grey2 = grey2 + 1;
        elseif R > B && R > G
            red2 = red2 + 1;
        elseif G > B && G >= R
            green2 = green2 + 1;
        elseif B >= R && B >= G
            blue2 = blue2 + 1;
        end
end

totalPixels2 = totalPixels2/3;
totalPixels2
white2
black2
grey2
red2
green2
blue2
white2 + black2 + grey2 + red2 + green2 + blue2

PercentOfWhite2 = (white2/totalPixels2)* 100
PercentOfBlack2 = (black2/totalPixels2) * 100
PercentOfGrey2 = (grey2/totalPixels2)* 100
PercentOfRed2 = (red2/totalPixels2)* 100
PercentOfGreen2 = (green2/totalPixels2) * 100
PercentOfBlue2 = (blue2/totalPixels2) * 100

BarNames = ["White", "Black", "Grey", "Red", "Green", "Blue"];
Bar2 = [PercentOfWhite2 PercentOfBlack2 PercentOfGrey2 PercentOfRed2 PercentOfGreen2 PercentOfBlue2];
Colors = [1 1 1; 0 0 0; 0.7 0.7 0.7; 1 0 0; 0 1 0; 0 0 1];

frame_size = size(img);
allpixels = reshape(img, frame_size(1)*frame_size(2), frame_size(3))
[row,col] = size(allpixels);
totalPixels = 0;
count = 0;
white = 0;
black = 0;
red = 0;
green = 0;
blue = 0;
grey = 0;
purplepink = 0;
yelloworange = 0;
for row = 1:row
    count = 0;
    for col = 1:col
        if count == 0
            R = allpixels(row,col);
            count = count + 1;
        elseif count == 1
            G = allpixels(row,col);
            count = count + 1;
        elseif count == 2
            B = allpixels(row,col);
            count = count + 1;
        end
        totalPixels = totalPixels + 1;
    end
        if R > 230 && G > 230 && B > 230
            white = white + 1;
        elseif R < 70 && G < 70 && B < 70
            black = black + 1;
        elseif abs(R - G) <= 5 && abs(G - B) <= 5 && abs(R - B) <= 5
            grey = grey + 1;
        elseif R > B && R > G
            red = red + 1;
        elseif G > B && G >= R
            green = green + 1;
        elseif B >= R && B >= G
            blue = blue + 1;
        end
end

totalPixels = totalPixels/3;
totalPixels
white
black
grey
red
green
blue
white + black + grey + red + green + blue

PercentOfWhite = (white/totalPixels)* 100
PercentOfBlack = (black/totalPixels) * 100
PercentOfGrey = (grey/totalPixels)* 100
PercentOfRed = (red/totalPixels)* 100
PercentOfGreen = (green/totalPixels) * 100
PercentOfBlue = (blue/totalPixels) * 100

Bar = [PercentOfWhite PercentOfBlack PercentOfGrey PercentOfRed PercentOfGreen PercentOfBlue];

OriginalGraph = BarGraphs(Bar, BarNames, Colors, 'Original Image Graph','Colors', 'Proportion (%)',1)
ManipGraph = BarGraphs(Bar2, BarNames, Colors, 'Manipulated Image Graph', 'Colors', 'Proportion (%)', 1);
Test2 = StackedGraphs(Bar, Colors);
for i = 1:length(Bar)
    Bar3(i) = [abs(Bar(i) - Bar2(i))];
end
DifferenceGraph = BarGraphs(Bar3, BarNames, Colors, 'Difference Image Graph', 'Colors', 'Proportion (%)', 1);
OriginalLine = ColorLine(PercentOfWhite, PercentOfBlack, PercentOfGrey, PercentOfRed, PercentOfGreen, PercentOfBlue);
ManipLine = ColorLine(PercentOfWhite2, PercentOfBlack2, PercentOfGrey2, PercentOfRed2, PercentOfGreen2, PercentOfBlue2);
threeDTest = ThreeDCluster(Bar, 'Original 3D Cluster', PercentOfWhite, PercentOfBlack, PercentOfGrey, PercentOfRed, PercentOfGreen, PercentOfBlue);

figure('units','normalized','outerposition',[0 0 1 1])
subplot(3,3,1), imshow('DisneyColorfulLogo.jpg'); title('Original Image', 'FontSize', 16); %displays full path along with a title
subplot(3,3,2), imshow(ManipulatedImageFinal, []); title('Manipulated Image', 'FontSize', 16);
subplot(3,3,4), OriginalGraph.createGraph;
subplot(3,3,5), ManipGraph.createGraph;
subplot(3,3,6), DifferenceGraph.createGraph;
subplot(3,3,7), OriginalLine.drawLine; title('Original Image Color Variation Line', 'FontSize', 16);
subplot(3,3,8), ManipLine.drawLine; title('Manipulated Image Color Variation Line', 'FontSize', 16);
subplot(3,3,9), threeDTest.createGraph;
