classdef ColorLine %class to create color variation line
    
    properties
        colorProps
        xStart
        numberOfLines
        RGBValues
    end
    
    methods
        function lineObj = ColorLine(c,x,l,RGB)
            lineObj.colorProps = c;
            lineObj.xStart = x;
            lineObj.numberOfLines = l;
            lineObj.RGBValues = RGB;
        end
        
        function drawLine = drawLine(lineObj)
            z = lineObj.colorProps(1);
            if(lineObj.numberOfLines == 1)
                lineObj.xStart = 4.5;
            end
            for i=1:length(lineObj.colorProps)
                if i == 1
            linePortion = rectangle('Position', [lineObj.xStart 0 1 z], 'FaceColor', lineObj.RGBValues(i,:),'LineStyle','none'); %draws the first line, since we are looking at the propOfWhite, we make the line white; we change the width as well to make it more visible
                else
            linePortion = rectangle('Position', [lineObj.xStart z 1 lineObj.colorProps(i)], 'FaceColor', lineObj.RGBValues(i,:),'LineStyle','none'); %draws the first line, since we are looking at the propOfWhite, we make the line white; we change the width as well to make it more visible
                end
            if i > 1
            z = z + lineObj.colorProps(i);
            end
            end
            ylim([0 100]);
            xlim([0 10]);
            if(lineObj.numberOfLines > 10)
            xlim([0 lineObj.numberOfLines]);
            end
            axis off
        end %turns off the axis because we do not need to see them unless we are debugging to ensure proportions are correct
            
    end

end