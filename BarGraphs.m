classdef BarGraphs < GraphInterface
    
    properties
        Width
        Name
        Title
        xLabel
        yLabel
    end
    
    methods
        function graphObj = BarGraphs(d,n,c,t,x,y,w)
            graphObj.Data = d;
            graphObj.Name = n;
            graphObj.Color = c;
            graphObj.Title = t;
            graphObj.xLabel = x;
            graphObj.yLabel = y;
            graphObj.Width = w;
        end
        
        function createGraph(graphObj)
            [row1, col1] = size(graphObj.Name);
            graphObj.Plot = bar(graphObj.Data, graphObj.Width, 'FaceColor',[0 .5 .5],'EdgeColor',[0.4 0.4 0.4],'LineWidth',1.5'), title(graphObj.Title),
            xlabel(graphObj.xLabel), ylabel(graphObj.yLabel);
            
            set(gca,'xtick',[1:col1],'xticklabel',graphObj.Name);
            set(gca, 'Color', [0.3 0.9 1]);
            graphObj.Plot.FaceColor = 'flat';
            for i = 1:col1
                graphObj.Plot.CData(i,:) = graphObj.Color(i,:);
                end
      
            end
        end
end