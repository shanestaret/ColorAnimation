classdef BarGraphs < GraphInterface %implements the interface "GraphInterface"; to create bar graphs
    
    properties
        Width
        Name %defining all important properties that need to be defined in constructor specifically
    end
    
    methods
        function graphObj = BarGraphs(d,n,c,t,x,y,w)
            graphObj.Data = d;
            graphObj.Name = n;
            graphObj.Color = c;
            graphObj.Title = t; %setting local variables to their parameter equivalent
            graphObj.xLabel = x;
            graphObj.yLabel = y;
            graphObj.Width = w;
        end
        
        function createGraph(graphObj)
            [row1, col1] = size(graphObj.Name); %setting "row1" equal to the number of rows and "col1" equal to number of columns within the "Name" array passed to this class
            graphObj.Plot = bar(graphObj.Data, graphObj.Width, 'FaceColor',[0 .5 .5],'EdgeColor',[0.4 0.4 0.4],'LineWidth',1.5'); title(graphObj.Title, 'FontSize', 16); ylim([0 100]); xlim([0 col1 + 1]); %plotting of the actual graph; it plots the data, giving each bar a color, creating an outline for each bar, and giving each axis a title, along with a title to the whole bar graph
            xL =xlabel(graphObj.xLabel, 'FontSize', 16);
            yL =ylabel(graphObj.yLabel, 'FontSize', 16);
            ax = ancestor(graphObj.Plot, 'axes');
            yrule = ax.YAxis;
            xrule = ax.XAxis;
            % Change properties of the axes
            ax.YTick = [0 10 20 30 40 50 60 70 80 90 100];
            ax.YTickLabel = [0 10 20 30 40 50 60 70 80 90 100];
            % Change properties of the ruler
            yrule.FontSize = 8;
            % Change properties of the label
            yL.FontSize = 16;
            ax.XTick = 1:col1;
            ax.XTickLabel = graphObj.Name;
            xrule.FontSize = 6;
            % Change properties of the label
            xL.FontSize = 16;
            set(gca, 'Color', [0.3 0.9 1]); %sets the background color to cyan, that way we can see everything
            graphObj.Plot.FaceColor = 'flat'; %sets the color "style" of the plot to flat, so it can be manipulated
            for i = 1:col1 %loops through every individual bar in the graph and changes the color based on the Color Array
                graphObj.Plot.CData(i,:) = graphObj.Color(i,:); %so the first bar corresponds to "white", so the color should be white; the first element of the Color array is "white" so this works out
                end
      
            end
        end
end