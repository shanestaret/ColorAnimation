classdef ThreeDCluster < GraphInterface %implements the interface "GraphInterface"; creates a 3D plot
	    
	    properties
	        Title % Title property meant for the title of title of 3D plot
	        xLabel % xLabel property meant for labeling x axis of the 3D plot
	        yLabel % yLabel property meant for labeling y axis of the 3D plot
            zLabel %zLabel property meant for labeling z axis of the 3D plot
            propOfWhite %propOfWhite property to get the proportion of white
            propOfBlack %propOfBlack property to get the proportion of Black
            propOfGrey %propOfGrey property to get the proportion of Grey
            propOfRed %propOfRed property to get the proportion of Red
            propOfGreen %propOfGreen property to get the proportion of Green
            propOfBlue %propOfBlue property to get the proportion of Blue
        end % Terminates block of code
	    
	    methods
	        function threeDObj = ThreeDCluster(d,t,w,z,y,r,g,b)% variables being passed into the parameter 
              %of the ThreeDCluster class. We are storing all of this in
              %the threeDObj
                                                            
	            threeDObj.Data = d; %assigns the Data to variable d
	            threeDObj.Title = t; %assigns the Title to variable t
                threeDObj.propOfWhite = w; %assigns the propOfWhite to variable w
                threeDObj.propOfBlack = z; %assigns the propOfBlack to variable z
                threeDObj.propOfGrey = y; %assigns the propOfGrey to variable y
                threeDObj.propOfRed = r; %assigns the propOfRed to variable r
                threeDObj.propOfGreen = g; %assigns the propOfGreen to variable g
                threeDObj.propOfBlue = b; %assigns the propOfBlue to variable b
            end %Terminates block of code
	        
	        function createGraph(threeDObj) % function created to create a graph
                firstClust = 5*[randn(round(threeDObj.propOfWhite),1) + 5, randn(round(threeDObj.propOfWhite),1) + 5, randn(round(threeDObj.propOfWhite),1) + 5]; %generates an array of random points on a 3D Plot within a specific area of the plot. That way, not all of the dots overlap, as they represent different colors; one point is generated every percent proportion of each color; for example, if the image is 75% white, then 75 points are generated in this general area of the graph; this is true for all of the following
                secClust = 5*[randn(round(threeDObj.propOfBlack),1) + 5, randn(round(threeDObj.propOfBlack),1) - 5, randn(round(threeDObj.propOfBlack),1) - 5];
                thirdClust = 5*[randn(round(threeDObj.propOfGrey),1) - 5, randn(round(threeDObj.propOfGrey),1) + 5, randn(round(threeDObj.propOfGrey),1) + 5];
                fourthClust = 5*[randn(round(threeDObj.propOfRed),1) - 5, randn(round(threeDObj.propOfRed),1) - 5, randn(round(threeDObj.propOfRed),1) - 5];
                fifthClust = 5*[randn(round(threeDObj.propOfGreen),1) + 5, randn(round(threeDObj.propOfGreen),1), randn(round(threeDObj.propOfGreen),1)];
                sixthClust = 5*[randn(round(threeDObj.propOfBlue),1), randn(round(threeDObj.propOfBlue),1), randn(round(threeDObj.propOfBlue),1)];
                
                plot3(firstClust(:,1),firstClust(:,2),firstClust(:,3), 'white.','LineWidth', 3,'MarkerEdgeColor', 'white', 'MarkerSize', 12); hold on %plots the random points onto the 3D plot; these points only represent the white proportion; the points are manipulated to be visible and to be white so that it properly looks like the color proportion it is representing; "hold on" allows us to plot more clusters onto the same plot, that way there isn't a new plot made EVERY time; this is all true for the following
                plot3(secClust(:,1),secClust(:,2),secClust(:,3), 'black.','LineWidth', 3,'MarkerEdgeColor', 'black', 'MarkerSize', 12);
                plot3(thirdClust(:,1),thirdClust(:,2),thirdClust(:,3), 'yellow.','LineWidth', 3,'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerSize', 12);
                plot3(fourthClust(:,1),fourthClust(:,2),fourthClust(:,3), 'r.','LineWidth', 3,'MarkerEdgeColor', 'red', 'MarkerSize', 12);
                plot3(fifthClust(:,1),fifthClust(:,2),fifthClust(:,3), 'g.','LineWidth', 3,'MarkerEdgeColor', 'green', 'MarkerSize', 12);
                plot3(sixthClust(:,1),sixthClust(:,2),sixthClust(:,3), 'blue.','LineWidth', 3,'MarkerEdgeColor', 'blue', 'MarkerSize', 12);
                grid on %turns the grid on, makes 3D plot more visible
                set(gca, 'Color', [0.3 0.9 1]); title(threeDObj.Title); %sets background color of the plot to cyan so that it is easier to see the dots
                
            end %Terminates block of code
	      
        end %Terminates block of code
end %Terminate block of code