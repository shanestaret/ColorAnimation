classdef ColorProportions %class to determine the color of each pixel and the overall proportion of each color in an image
    
    properties
        img %defining all important properties that need to be defined in constructor specifically
    end
    
    methods
        function colorObj = ColorProportions(i)
            colorObj.img = i; %setting local variables to their parameter equivalent
        end
        
        function colorObj = proportions(colorObj)
            totalPixels = 0; %complete # of pixels
            white = 0; % # of white pixels
            black = 0; % # of black pixels
            red = 0; % # of red pixels
            green = 0; % # of green pixels
            blue = 0; % # of blue pixels
            grey = 0; % # of grey pixels
            purplepink = 0; % # of purple or pink pixels (IMPLEMENTING LATER!)
            yelloworange = 0; % # of yellow or orange pixels (IMPLEMENTING LATER!)
        frame_size = size(colorObj.img); %basically, determines the resolution of the image
        allpixels = reshape(colorObj.img, frame_size(1)*frame_size(2), frame_size(3)); %multiplies the total height (frame_size(1)), by the total width(frame_size(2)), to get the total number of pixels in the image, frame_size(3) is the part that determines whether this image has 3, 2, or 1 color channels
        [row,col] = size(allpixels); %creates an array so that we can loop through each row and col; the row is the height, whereas col is the width
        for row = 1:row %looping through the first row till the last row
    count = 0; %determines whether we are looking at the R,G, or B part of the image; when it is 0, it is looking at the R channel; when it is 1, it is looking at the G channe; when it is 2, it is looking at B channel
    for col = 1:col %goes through every pixel AND its RGB channels, so the first THREE iterations are ONE pixel (if it was grayscale, TWO iterations would be ONE pixel)
        if count == 0
            R = allpixels(row,col); %creates a separate array of ALL R channels for EVERY pixel
            count = count + 1;
        elseif count == 1
            G = allpixels(row,col); %creates a separate array of ALL G channels for EVERY pixel
            count = count + 1;
        elseif count == 2
            B = allpixels(row,col); %creates a separate array of ALL B channels for EVERY pixel
            count = count + 1;
        end
        totalPixels = totalPixels + 1; %misleading variable name; really all of the pixels * 3 because there are 3 color channels (R,G, and B)
    end
    %then, it takes R, G, and B elements of a certain pixel, and compares them to determine the actual color of the pixel
        if R > 230 && G > 230 && B > 230 %this and the following elseif statements basically give the RGB triplet range for each color; DEFINITELY will be tweaked for the future
            white = white + 1;
        elseif R < 20 && G < 20 && B < 20
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

totalPixels = totalPixels/3; %divides total pixels by 3 because it incremented every time we looked at an RGB channel for a pixel, so it really incremented 3 times for 1 pixel rather than 1 time

PercentOfWhite = (white/totalPixels)* 100;
PercentOfBlack = (black/totalPixels) * 100;
PercentOfGrey = (grey/totalPixels)* 100;
PercentOfRed = (red/totalPixels)* 100; %total proportion of each color (percentage)
PercentOfGreen = (green/totalPixels) * 100;
PercentOfBlue = (blue/totalPixels) * 100;

colorProportions = [PercentOfWhite PercentOfBlack PercentOfGrey PercentOfRed PercentOfGreen PercentOfBlue]; %array containing all of the color proportions
colorObj = colorProportions; %sets the object passed to the method equal to the actual array of color proportions; returns it to the "Driver" script so it can be used in other objects and classes
return %returns colorObj
        
        end
    end
end

