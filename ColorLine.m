classdef ColorLine
    
    properties
        propOfWhite
        propOfBlack
        propOfGrey
        propOfRed
        propOfGreen
        propOfBlue
    end
    
    methods
        function lineObj = ColorLine(w,z,y,r,g,b)
            lineObj.propOfWhite = w;
            lineObj.propOfBlack = z;
            lineObj.propOfGrey = y;
            lineObj.propOfRed = r;
            lineObj.propOfGreen = g;
            lineObj.propOfBlue = b;
        end
        
        function drawLine = drawLine(lineObj)
            x = [10 10];
            y = [10 lineObj.propOfWhite];
            bottom = line(x,y, 'Color', 'white'); set(bottom, 'LineWidth', 5);
            y = [lineObj.propOfWhite (lineObj.propOfWhite + lineObj.propOfBlack)];
            second = line(x,y, 'Color', 'black'); set(second, 'LineWidth', 5);
            y = [(lineObj.propOfWhite + lineObj.propOfBlack) (lineObj.propOfWhite + lineObj.propOfBlack + lineObj.propOfGrey)];
            third = line(x,y, 'Color', [0.5 0.5 0.5]); set(third, 'LineWidth', 5);
            y = [(lineObj.propOfWhite + lineObj.propOfBlack + lineObj.propOfGrey) (lineObj.propOfWhite + lineObj.propOfBlack + lineObj.propOfGrey + lineObj.propOfRed)];
            fourth = line(x,y, 'Color', 'red'); set(fourth, 'LineWidth', 5);
            y = [(lineObj.propOfWhite + lineObj.propOfBlack + lineObj.propOfGrey + lineObj.propOfRed) (lineObj.propOfWhite + lineObj.propOfBlack + lineObj.propOfGrey + lineObj.propOfRed + lineObj.propOfGreen)];
            fifth = line(x,y, 'Color', 'green'); set(fifth, 'LineWidth', 5);
            y = [(lineObj.propOfWhite + lineObj.propOfBlack + lineObj.propOfGrey + lineObj.propOfRed + lineObj.propOfGreen) (lineObj.propOfWhite + lineObj.propOfBlack + lineObj.propOfGrey + lineObj.propOfRed + lineObj.propOfGreen + lineObj.propOfBlue)];
            sixth = line(x,y, 'Color', 'blue'); set(sixth, 'LineWidth', 5);
            axis off
        end
    end
end

