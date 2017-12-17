classdef GraphInterface < handle % Abstract class for creating data graphs; acts as interface
        % someClass Interface for graphs
    %   An interface for the BarGraphs and ThreeDCluster classes. Every
    %   graph needs to have data, a title, in our case, the RGB values of
    %   32 distinct colors, an x-label describing the x-axis, and a y-label
    %   describing the y-axis
    properties %enables you to customize the behavior of properties for specific purposes
        Data %property name Data, where all of the data that is going to be plotted is stored
        Title %property name Title, title of graph
        ColorValues %property name ColorValues, the RGB values of the data
        xLabel %property name xLable, label for x-axis
        yLabel %property name Title, label for y-axis
    end %Ends block of code
    
    methods (Abstract) % Abstract method 
        createGraph(obj);% object inside parameters will be used in the subclasses to create the graph; can't have a graph if you can't create one
    end %Ends block of code
end %Ends block of code

