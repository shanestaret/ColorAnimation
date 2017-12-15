classdef BarGraphs < GraphInterface %implements the interface "GraphInterface"; to create bar graphs
    
    properties
        BarWidth
        ColorNames %defining all important properties that need to be defined in constructor specifically
    end
    
    methods
        function graphObj = BarGraphs(d,n,c,t,x,y,w)
            graphObj.Data = d; %the color proportions of the image
            graphObj.ColorNames = n; %the names of all the colors represented
            graphObj.ColorValues = c; %the actual RGB values of all the colors represented
            graphObj.Title = t; %title of graph
            graphObj.xLabel = x; %x-axis label of graph
            graphObj.yLabel = y; %y-axis label of graph
            graphObj.BarWidth = w; %width of each bar of the bar graph
        end
        
        function createGraph(graphObj)
            [row1, col1] = size(graphObj.ColorNames); %setting "row1" equal to the number of rows and "col1" equal to number of columns within the "ColorNames" array passed to this class
            graphObj.Plot = bar(graphObj.Data, graphObj.BarWidth, 'FaceColor',[0 .5 .5],'EdgeColor',[0.4 0.4 0.4],'LineWidth',1'); title(graphObj.Title, 'FontSize', 16); ylim([0 100]); xlim([0 col1 + 1]); %plotting of the actual graph; it plots the data, giving each bar a color, creating an outline for each bar, and giving each axis a title, along with a title to the whole bar graph
            % --------------------------------
            xLabel =xlabel(graphObj.xLabel, 'FontSize', 16);
            yLabel =ylabel(graphObj.yLabel, 'FontSize', 16);
            axObj = ancestor(graphObj.Plot, 'axes');
            yRuler = axObj.YAxis;
            xRuler = axObj.XAxis;
            % Change properties of the axes
            axObj.YTick = [0 10 20 30 40 50 60 70 80 90 100];
            axObj.YTickLabel = [0 10 20 30 40 50 60 70 80 90 100];
            % Change properties of the ruler
            yRuler.FontSize = 8;
            % Change properties of the label
            yLabel.FontSize = 16;
            axObj.XTick = 1:col1;
            axObj.XTickLabel = graphObj.ColorNames;
            xRuler.FontSize = 4;
            % Change properties of the label
            xLabel.FontSize = 16;
            % All code above to hyphenated line is to change the labelling
            % of the axes and the ticks of each bar, basically an "axis"
            % object is created (both an x and y) and from there, we can
            % change its properties, like the font size of the ticks and
            % the font size of the x-axis label
            
            set(gca, 'Color', [0.3 0.9 1]); %sets the background color to cyan, that way we can see everything
            graphObj.Plot.FaceColor = 'flat'; %sets the color "style" of the plot to flat, so it can be manipulated
            for i = 1:col1 %loops through every individual bar in the graph and changes the color based on the ColorValues array
                graphObj.Plot.CData(i,:) = graphObj.ColorValues(i,:); %so the first bar corresponds to "white", so the color should be white; the first element of the Color array is "0 0 0" so this works out
                end
      
            end
        end
end