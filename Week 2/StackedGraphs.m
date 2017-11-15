classdef StackedGraphs < GraphInterface
    
        properties
            Style
    end
    
    methods
        function graphObj = StackedGraphs(d,c)
            graphObj.Data = d;
            graphObj.Color = c;
            graphObj.Style = 'stacked';
        end
        
        function createGraph(graphObj)
            [row1, col1] = size(graphObj.Data);
            graphObj.Plot = bar(graphObj.Data, 'stacked');
            graphObj.Plot.FaceColor = 'flat';
            for i = 1:col1
                graphObj.Plot.CData(i,:) = graphObj.Color(i,:);
            end
      
            end
        end
end
