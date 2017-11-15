classdef ImageManipulation %class to manipulate an image given
    %UNTITLED2 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        imageToManip
        ManipulatedImageFinal %defining all important properties that need to be defined in constructor specifically
    end
    
    methods
        function imageObj = ImageManipulation(img)
            imageObj.imageToManip = img; %setting local variables to their parameter equivalent
        end
        
        function imageObj = manipulate(imageObj)
            %dimensions of the image
        [height width color] = size(imageObj.imageToManip); % array with first element as height, second as width, and third showing whether it is in color or not (3 means it is in color)
        transferStructure = makecform('srgb2lab'); %variable that allows us to build a structure to change the color of the image
        lab = applycform(imageObj.imageToManip, transferStructure); %converting the transfer structure to a lab color space, so we can actually manipulate the individual R, G, and B numbers along with brightness/luminosity
        L_channel = lab(:,:,1); %alters the brightness by 1
        A_channel = lab(:,:,2); %alters color of red/green color axis by 2
        B_channel = lab(:,:,3); %alters color of yellow/blue color axis by 3
        L_channelNew = 100 - L_channel; %Essentially decreasing the brightness by 1

        A_channelNew = 255-A_channel; %Essentially decreasing red/green color axis by 2 (basically, flips the red and green colors)
        newColor = cat(3, L_channelNew, A_channelNew, B_channel); %array that holds the new lab color space values, it is important these values can convert to RGB, otherwise an error will occur
        secondTransfer = makecform('lab2srgb'); %converting from lab color space back to RGB
        imageObj.ManipulatedImageFinal = applycform(newColor,secondTransfer); %applying all of these changes to the manipulated image
        imageObj = imageObj.ManipulatedImageFinal; % this line makes everything work; it sets the object passed into the method as the image itself, so it can be returned to the "Driver" script as a manipulated image
        return %returns imageObj
        end
       
    end
end

