classdef ColorLine %class to create color variation line
    
    properties
        propOfWhite
        propOfBlack
        propOfGrey %defining all important properties that need to be defined in constructor specifically
        propOfRed
        propOfGreen
        propOfBlue
        xStart
        numberOfLines
    end
    
    methods
        function lineObj = ColorLine(w,z,y,r,g,b,x,l)
            lineObj.propOfWhite = w;
            lineObj.propOfBlack = z;
            lineObj.propOfGrey = y;
            lineObj.propOfRed = r; %setting local variables to their parameter equivalent
            lineObj.propOfGreen = g;
            lineObj.propOfBlue = b;
            lineObj.xStart = x;
            lineObj.numberOfLines = l;
        end
        
        function drawLine = drawLine(lineObj)
            if(lineObj.numberOfLines == 1)
                lineObj.xStart = 4.5;
            end
            x = [lineObj.xStart lineObj.xStart]; %Says that the X coordinate is strictly 10
            y = [0 lineObj.propOfWhite];  %the initial line coordinate stops at 0, then goes to whatever the proportion of white is; for example, if propOfWhite is 75, then this indicates that a line needs to be drawn from y = 0 to y = 75
            bottom = rectangle('Position', [lineObj.xStart 0 1 lineObj.propOfWhite], 'FaceColor', [1,1,1],'LineStyle','none'); %draws the first line, since we are looking at the propOfWhite, we make the line white; we change the width as well to make it more visible
            y = [lineObj.propOfWhite (lineObj.propOfWhite + lineObj.propOfBlack)]; %sets the y-coordinates for the second line; the second line coordinates go from the top of the propOfWhite line, all the way to another coordinate based on propOfBlack; for example, propOfWhite = 75, propOfBlack = 3, then this indicates that a line must be drawn from y = 75 to y = 78; this is similar for all the following
            second = rectangle('Position', [lineObj.xStart (lineObj.propOfWhite) 1 lineObj.propOfBlack], 'FaceColor', [0,0,0],'LineStyle','none'); %draws the second line, directly above the first
            y = [(lineObj.propOfWhite + lineObj.propOfBlack) (lineObj.propOfWhite + lineObj.propOfBlack + lineObj.propOfGrey)];
            third = rectangle('Position', [lineObj.xStart (lineObj.propOfWhite + lineObj.propOfBlack) 1 lineObj.propOfGrey], 'FaceColor', [0.5 0.5 0.5],'LineStyle','none');
            y = [(lineObj.propOfWhite + lineObj.propOfBlack + lineObj.propOfGrey) (lineObj.propOfWhite + lineObj.propOfBlack + lineObj.propOfGrey + lineObj.propOfRed)];
            fourth = rectangle('Position', [lineObj.xStart (lineObj.propOfWhite + lineObj.propOfBlack + lineObj.propOfGrey) 1 lineObj.propOfRed], 'FaceColor', [1,0,0],'LineStyle','none');
            y = [(lineObj.propOfWhite + lineObj.propOfBlack + lineObj.propOfGrey + lineObj.propOfRed) (lineObj.propOfWhite + lineObj.propOfBlack + lineObj.propOfGrey + lineObj.propOfRed + lineObj.propOfGreen)];
            fifth = rectangle('Position', [lineObj.xStart (lineObj.propOfWhite + lineObj.propOfBlack + lineObj.propOfGrey + lineObj.propOfRed) 1 lineObj.propOfGreen], 'FaceColor', [0,1,0],'LineStyle','none');
            y = [(lineObj.propOfWhite + lineObj.propOfBlack + lineObj.propOfGrey + lineObj.propOfRed + lineObj.propOfGreen) (lineObj.propOfWhite + lineObj.propOfBlack + lineObj.propOfGrey + lineObj.propOfRed + lineObj.propOfGreen + lineObj.propOfBlue)];
            sixth = rectangle('Position', [lineObj.xStart (lineObj.propOfWhite + lineObj.propOfBlack + lineObj.propOfGrey + lineObj.propOfRed + lineObj.propOfGreen) 1 lineObj.propOfBlue], 'FaceColor', [0,0,1],'LineStyle','none');
            ylim([0 100]);
            xlim([0 10]);
            if(lineObj.numberOfLines > 10)
            xlim([0 lineObj.numberOfLines]);
            end
            axis off %turns off the axis because we do not need to see them unless we are debugging to ensure proportions are correct
            
        end
    end
end

