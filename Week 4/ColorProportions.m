classdef ColorProportions %class to determine the color of each pixel and the overall proportion of each color in an image
    
    properties
        img %defining all important properties that need to be defined in constructor specifically
        ColorNames
    end
    
    methods
        function colorObj = ColorProportions(i, c)
            colorObj.img = i; %creates a local variable equivalent to the image passed to this class
            colorObj.ColorNames = c; %the names of the colors that we want to get the proportion of
        end
        
        function colorObj = proportions(colorObj)
            totalPixels = 0; %complete # of pixels
            colorProps = zeros(length(colorObj.ColorNames),1); %create an array that will hold all of the proportions of each color; initial values set to 0
        redArray = colorObj.img(:,:,1); %array of all R values
        greenArray = colorObj.img(:,:,2); %array of all G values
        blueArray = colorObj.img(:,:,3); % array of all B values
        redChannel = reshape(redArray, [], 1); %reshaping the array so it only has one column
        greenChannel = reshape(greenArray, [], 1); %reshaping the array so it only has one column
        blueChannel = reshape(blueArray, [], 1); %reshaping the array so it only has one column
        allPixels = [(redChannel) (greenChannel) (blueChannel)]; %creates an array of three columns, where the first column has the R value of a pixel, the second has the G, and the third has the B
        [row,col] = size(allPixels); %creates an array so that we can loop through each row and col; the row is the height, whereas col is the width
        for row = 1:row %looping through the first row till the last row
            totalPixels = totalPixels + 1; %incrementing each time we move onto a new row, as each row represents one pixel
    count = 0; %determines whether we are looking at the R,G, or B part of the image; when it is 0, it is looking at the R channel; when it is 1, it is looking at the G channe; when it is 2, it is looking at B channel
    for col = 1:col %goes through every pixel AND its RGB channels, so the first THREE iterations are ONE pixel (if it was grayscale, TWO iterations would be ONE pixel)
        if count == 0
            R = allPixels(row,col); %creates a separate array of ALL R channels for EVERY pixel
            count = count + 1;
        elseif count == 1
            G = allPixels(row,col); %creates a separate array of ALL G channels for EVERY pixel
            count = count + 1;
        elseif count == 2
            B = allPixels(row,col); %creates a separate array of ALL B channels for EVERY pixel
            count = count + 1;
        end
    end
    %then, it takes R, G, and B elements of a certain pixel, and compares them to determine the actual color of the pixel
        if R >= 224 && G >= 224 && B >= 224 %White
            colorProps(1) = colorProps(1) + 1;
        elseif R < 51 && G < 51 && B < 51 %Black
            colorProps(32) = colorProps(32) + 1;
        elseif abs(R - G) < 3 && abs(G - B) < 3 && abs(R - B) < 3 && (R + G + B) <= 192 %Dark Grey
            colorProps(29) = colorProps(29) + 1;
        elseif abs(R - G) < 3 && abs(G - B) < 3 && abs(R - B) < 3 && (R + G + B) <= 480 %Grey
            colorProps(30) = colorProps(30) + 1;
        elseif abs(R - G) < 3 && abs(G - B) < 3 && abs(R - B) < 3 %Light Grey
            colorProps(31) = colorProps(31) + 1;
        elseif R > G && R > B && abs(G - B) < 15 && R <= 178 %Dark Red
            colorProps(2) = colorProps(2) + 1;
        elseif R > G && R > B && abs(G - B) < 15 && (R + G + B) <= 357 %Red
            colorProps(3) = colorProps(3) + 1;
        elseif R > G && R > B && abs(G - B) < 15 %Light Red
            colorProps(4) = colorProps(4) + 1;
        elseif R > G && R > B && abs(G - B) >= 15 && R <= 178 %Dark Orange
            colorProps(5) = colorProps(5) + 1;
        elseif R > G && R > B && abs(G - B) >= 15 && (R + G + B) <= 496 %Orange
            colorProps(6) = colorProps(6) + 1;
        elseif R > G && R > B && abs(G - B) >= 15 %Light Orange
            colorProps(7) = colorProps(7) + 1;
        elseif R > B && G > B && abs(R - G) < 15 && R <= 178 && G <= 178 %Dark Yellow
            colorProps(8) = colorProps(8) + 1;
        elseif R > B && G > B && abs(R - G) < 15 && (R + G + B) <= 586 %Yellow
            colorProps(9) = colorProps(9) + 1;
        elseif R > B && G > B && abs(R - G) < 15 %Light Yellow
            colorProps(10) = colorProps(10) + 1;
        elseif G > R && G > B && G <= 178 %Dark Green
            colorProps(11) = colorProps(11) + 1;
        elseif G > R && G > B && (R + G + B) <= 459 %Green
            colorProps(12) = colorProps(12) + 1;
        elseif G > R && G > B %Light Green
            colorProps(13) = colorProps(13) + 1;
        elseif G > R && B > R && abs(G - B) < 15 && G <= 178 && B <= 178 %Dark Sky Blue
            colorProps(14) = colorProps(14) + 1;
        elseif G > R && B > R && abs(G - B) < 15 && (R + G + B) <= 586 %Sky Blue
            colorProps(15) = colorProps(15) + 1;
        elseif G > R && B > R && abs(G - B) < 15 %Light Sky Blue
            colorProps(16) = colorProps(16) + 1;
        elseif B > G && B > R && abs(G - R) >= 15 && (R + G + B) <= 267 %Dark Blue
            colorProps(17) = colorProps(17) + 1;
        elseif B > G && B > R && abs(G - R) >= 15 && (R + G + B) <= 496 %Blue
            colorProps(18) = colorProps(18) + 1;
        elseif B > G && B > R && abs(G - R) >= 15 %Light Blue
            colorProps(19) = colorProps(19) + 1;
        elseif B > R && B > G && R > G && abs(R - G) >= 15 && (R + G + B) <= 267 && B <= 178 %Dark Purple
            colorProps(20) = colorProps(20) + 1;
        elseif R > B && G > B && R > G && abs(R - G) >= 15 && (R + G + B) <= 496 %Purple
            colorProps(21) = colorProps(21) + 1;
        elseif R > B && G > B && abs(R - G) >= 15 %Light Purple
            colorProps(22) = colorProps(22) + 1;
        elseif R > G && B > G && abs(R - B) < 15 && R <= 178 && B <= 178 %Dark Pink
            colorProps(23) = colorProps(23) + 1;
        elseif R > G && B > G && abs(R - B) < 15 && (R + G + B) <= 586 %Pink
            colorProps(24) = colorProps(24) + 1;
        elseif R > G && B > G && abs(R - B) < 15 %Light Pink
            colorProps(25) = colorProps(25) + 1;
        elseif R > B && R > G && B > G && abs(R - B) >= 15 && (R + G + B) <= 267 && R <= 178 %Dark Hot Pink
            colorProps(26) = colorProps(26) + 1;
        elseif R > B && R > G && B > G && abs(R - B) >= 15 && (R + G + B) <= 496 %Hot Pink
            colorProps(27) = colorProps(27) + 1;
        elseif R > B && R > G && B > G && abs(R - G) >= 15 %Light Hot Pink
            colorProps(28) = colorProps(28) + 1;
        %IMPORTANT: The if statements are written to ensure that every
        %pixel gets assigned a color
        end
        end
colorProps = (colorProps/totalPixels) * 100; %array containing all of the color proportions; all elements are divided by total pixels to get proportion from 0 to 1, then multiplied by 100 to get percentage
colorObj = colorProps; %sets the object passed to the method equal to the actual array of color proportions; returns it to the "Driver" script so it can be used in other objects and classes
return %returns colorObj
        
        end
    end
end

