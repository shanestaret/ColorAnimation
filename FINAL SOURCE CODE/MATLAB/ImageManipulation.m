classdef ImageManipulation %class to manipulate an image given
    % ImageManipulation Manipulates orignal image to look differently
    %   Essentially, this class takes a duplicated image and changes its
    %   color structure so that it can be manipulated. We change it from
    %   RGB format to LAB format, and then decrease its brightness and we
    %   change the green values to red. Then we change it back to RGB
    %   format, where all of the processes on the original image also take
    %   place on the manipulated image
    
    properties
        imageToManip
        ManipulatedImageFinal %defining all important properties that need to be defined in constructor specifically
    end
    
    methods
        function imageObj = ImageManipulation(img)
            imageObj.imageToManip = img; %setting local variables to their parameter equivalent
        end
        
        function imageObj = manipulate(imageObj)
        transferStructure = makecform('srgb2lab'); %variable that allows us to build a structure to change the color of the image
        labImageType = applycform(imageObj.imageToManip, transferStructure); %converting the transfer structure to a lab color space, so we can actually manipulate the individual R, G, and B numbers along with brightness/luminosity
        Luminosity = labImageType(:,:,1); %creates an array that contains all of the "luminosity" values for each pixel
        RedGreen = labImageType(:,:,2); %creates an array that contains all of the "red/green" values for each pixel
        BlueYellow = labImageType(:,:,3); %creates an array that contains all of the "yellow/blue" values for each pixel
        LuminosityChanged = 100 - Luminosity; %Essentially decreasing the brightness; the more bright the image initially was, the less bright it will be now

        RedGreenChanged = 255-RedGreen; %Essentially decreasing red/green color axis, the more red/green it was, the less it will be now (red and green essentially switch)
        newColorStructure = cat(3, LuminosityChanged, RedGreenChanged, BlueYellow); %array that holds the new lab color space values, it is important these values can convert to RGB, otherwise an error will occur
        secondTransfer = makecform('lab2srgb'); %converting from lab color space back to RGB
        imageObj.ManipulatedImageFinal = applycform(newColorStructure,secondTransfer); %applying all of these changes to the manipulated image
        imageObj = imageObj.ManipulatedImageFinal; % this line makes everything work; it sets the object passed into the method as the image itself, so it can be returned to the "Driver" script as a manipulated image
        return %returns imageObj
        end
       
    end
end

