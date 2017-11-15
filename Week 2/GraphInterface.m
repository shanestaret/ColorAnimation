classdef GraphInterface < handle
    
    properties
        Data
        Color
        Plot
    end
    
    methods (Abstract)
        createGraph(obj);
    end
end

