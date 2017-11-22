classdef GraphInterface < handle % Abstract class for creating data graphs; acts as interface
    
    properties %enables you to customize the behavior of properties for specific purposes
        Data %property name Data, where all of the data that is going to be plotted is stored
        Title %property name Title, title of graph
        ColorValues %property name ColorValues, the RGB values of the data
        Plot %property name Plot, the physical plot to put data on
        xLabel %property name xLable, label for x-axis
        yLabel %property name Title, label for y-axis
    end %Ends block of code
    
    methods (Abstract) % Abstract method 
        createGraph(obj);% object inside parameters will be used in the subclasses to create the graph; can't have a graph if you can't create one
    end %Ends block of code
end %Ends block of code

