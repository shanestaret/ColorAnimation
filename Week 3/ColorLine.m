classdef ColorLine %class to create color variation line
    
    properties
        propOfWhite
        propOfBlack
        propOfGrey %defining all important properties that need to be defined in constructor specifically
        propOfRed
        propOfGreen
        propOfBlue
    end
    
    methods
        function lineObj = ColorLine(w,z,y,r,g,b)
            lineObj.propOfWhite = w;
            lineObj.propOfBlack = z;
            lineObj.propOfGrey = y;
            lineObj.propOfRed = r; %setting local variables to their parameter equivalent
            lineObj.propOfGreen = g;
            lineObj.propOfBlue = b;
        end
        
        function drawLine = drawLine(lineObj)
            x = [10 10]; %Says that the X coordinate is strictly 10
            y = [0 lineObj.propOfWhite];  %the initial line coordinate stops at 0, then goes to whatever the proportion of white is; for example, if propOfWhite is 75, then this indicates that a line needs to be drawn from y = 0 to y = 75
            bottom = line(x,y, 'Color', 'white'); set(bottom, 'LineWidth', 5); %draws the first line, since we are looking at the propOfWhite, we make the line white; we change the width as well to make it more visible
            y = [lineObj.propOfWhite (lineObj.propOfWhite + lineObj.propOfBlack)]; %sets the y-coordinates for the second line; the second line coordinates go from the top of the propOfWhite line, all the way to another coordinate based on propOfBlack; for example, propOfWhite = 75, propOfBlack = 3, then this indicates that a line must be drawn from y = 75 to y = 78; this is similar for all the following
            second = line(x,y, 'Color', 'black'); set(second, 'LineWidth', 5); %draws the second line, directly above the first
            y = [(lineObj.propOfWhite + lineObj.propOfBlack) (lineObj.propOfWhite + lineObj.propOfBlack + lineObj.propOfGrey)];
            third = line(x,y, 'Color', [0.5 0.5 0.5]); set(third, 'LineWidth', 5);
            y = [(lineObj.propOfWhite + lineObj.propOfBlack + lineObj.propOfGrey) (lineObj.propOfWhite + lineObj.propOfBlack + lineObj.propOfGrey + lineObj.propOfRed)];
            fourth = line(x,y, 'Color', 'red'); set(fourth, 'LineWidth', 5);
            y = [(lineObj.propOfWhite + lineObj.propOfBlack + lineObj.propOfGrey + lineObj.propOfRed) (lineObj.propOfWhite + lineObj.propOfBlack + lineObj.propOfGrey + lineObj.propOfRed + lineObj.propOfGreen)];
            fifth = line(x,y, 'Color', 'green'); set(fifth, 'LineWidth', 5);
            y = [(lineObj.propOfWhite + lineObj.propOfBlack + lineObj.propOfGrey + lineObj.propOfRed + lineObj.propOfGreen) (lineObj.propOfWhite + lineObj.propOfBlack + lineObj.propOfGrey + lineObj.propOfRed + lineObj.propOfGreen + lineObj.propOfBlue)];
            sixth = line(x,y, 'Color', 'blue'); set(sixth, 'LineWidth', 5); %draws the sixth and final line
            axis off %turns off the axis because we do not need to see them unless we are debugging to ensure proportions are correct
        end
    end
end

