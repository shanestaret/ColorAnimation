classdef GraphInterface < handle % Abstract class for creating data graphs; acts as interface
    
    properties %enables you to customize the behavior of properties for specific purposes
        Data %property name Data
        Title 
        Color %property name Color
        Plot %property name Plot
        xLabel
        yLabel
    end %Ends block of code
    
    methods (Abstract) % Abstract method 
        createGraph(obj);%object inside parameters will be used in the subclasses to create the graph
    end %Ends block of code
end %Ends block of code

