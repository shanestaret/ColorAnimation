classdef ColorLine %class to create color variation line
    
    properties
        ColorProps
        ColorLineXStart
        numberOfFramesDisplayed %defining all important properties that need to be defined in constructor specifically
        ColorValues
    end
    
    methods
        function lineObj = ColorLine(c,x,l,RGB)
            lineObj.ColorProps = c; %an array that holds all of the color proportions of the image
            lineObj.ColorLineXStart = x; %accepts the starting x-value for the colorline (changes with each frame)
            lineObj.numberOfFramesDisplayed = l; %number of frames that will actually be displayed
            lineObj.ColorValues = RGB; %RGB values of all the colors we want to appear on the color line
        end
        
        function drawLine = drawLine(lineObj)
            z = lineObj.ColorProps(1); %the y-value that we start to draw the rectangle at; equivalent to the upper y-value of last rectangle drawn; so if there are three rectangles on top of one another and the second one ends at y = 15, then z = 15, and z will be used to determine the lower y-value for the next rectangle 
            if(lineObj.numberOfFramesDisplayed == 1) %if we are looking at an image, plot the line at x = 4.5 so it is in the middle of the subplot
                lineObj.ColorLineXStart = 4.5;
            end
            %---------------------------------
            for i=1:length(lineObj.ColorProps)
                if i == 1
            linePortion = rectangle('Position', [lineObj.ColorLineXStart 0 1 z], 'FaceColor', lineObj.ColorValues(i,:),'LineStyle','none'); %draws the first line, since we are looking at the propOfWhite, we make the line white; we change the width as well to make it more visible
                else
            linePortion = rectangle('Position', [lineObj.ColorLineXStart z 1 lineObj.ColorProps(i)], 'FaceColor', lineObj.ColorValues(i,:),'LineStyle','none'); %draws the first line, since we are looking at the propOfWhite, we make the line white; we change the width as well to make it more visible
                end
            if i > 1
            z = z + lineObj.ColorProps(i);
            end
            end
            % Code from here to hyphenated line is to draw the color
            % variation line. Essentially, the first rectangle must start
            % at y = 0 and end at whatever proportion of "white" there is
            % in the image. So if the image is 10% white, then a white
            % rectangle is drawn from y = 0 to y = 10. Then, then the next
            % loop will draw a Dark Grey rectangle from y = 10 to whatever
            % the proportion of Dark Grey is plus ten. So say Dark Grey is
            % 3% of the image, then that rectangle is drawn from y = 10 to
            % y = 13. This goes all the way until y = 100, as all of the
            % individual color proportions add to 100%.
            ylim([0 100]); %sets it so y is only displayed up until 100; only have this because since our line goes all the way to 100, MatLab automatically scales it so 0 to 120 is shown, which looks worse. This line fixes that display bug.
            xlim([0 10]); %sets it so x limit by default is 10, but that can change depending on how many frames we are looking at
            if(lineObj.numberOfFramesDisplayed > 10)
            xlim([0 lineObj.numberOfFramesDisplayed]); %for formatting, we want the color variation line to take up the entire plot, but not look too thin or wide. So the upper limit for x is based strictly on the number of frames we are looking at. For example, if we are looking at 50 frames, there will be 50 color lines, each of width one. So we want the plot to go from x = 0 to x = 50 so the whole plot is filled. So the first line goes from x = 0 to x = 1, then x = 1 to x = 2, etc.
            end
            axis off %turns the axis off so it looks much nicer
        end %turns off the axis because we do not need to see them unless we are debugging to ensure proportions are correct
            
    end

end