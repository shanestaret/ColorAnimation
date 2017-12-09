classdef ThreeDCluster < GraphInterface %implements the interface "GraphInterface"; creates a 3D plot
	    
	    properties
            zLabel %zLabel property meant for labeling z axis of the 3D plot
        end % Terminates block of code
	    
	    methods
	        function threeDObj = ThreeDCluster(d,c,t);      
	            threeDObj.Data = d; %the color proportions of the image
	            threeDObj.Title = t; %title of Graph
                threeDObj.ColorValues = c; %the actual RGB values of every color represented
                threeDObj.xLabel = 'x'; %x-axis label
                threeDObj.yLabel = 'y'; %y-axis label
                threeDObj.zLabel = 'z'; %z-axis label
            end %Terminates block of code
	        
	        function createGraph(threeDObj) % function created to create a graph
                %-----------------------------------------------------------------
                firstClust = 5*[randn(round(threeDObj.Data(1)),1) + 10, randn(round(threeDObj.Data(1)),1) + 10, randn(round(threeDObj.Data(1)),1) + 10]; 

                secondClust = 5*[randn(round(threeDObj.Data(2)),1) + 10, randn(round(threeDObj.Data(2)),1) + 10, randn(round(threeDObj.Data(2)),1) - 10];

                thirdClust = 5*[randn(round(threeDObj.Data(3)),1) + 10, randn(round(threeDObj.Data(3)),1) - 10, randn(round(threeDObj.Data(3)),1) + 10];

                fourthClust = 5*[randn(round(threeDObj.Data(4)),1) + 10, randn(round(threeDObj.Data(4)),1) - 10, randn(round(threeDObj.Data(4)),1) - 10];

                fifthClust = 5*[randn(round(threeDObj.Data(5)),1) - 10, randn(round(threeDObj.Data(5)),1) + 10, randn(round(threeDObj.Data(5)),1) + 10];

                sixthClust = 5*[randn(round(threeDObj.Data(6)),1) - 10, randn(round(threeDObj.Data(6)),1) + 10, randn(round(threeDObj.Data(6)),1) - 10];

                seventhClust = 5*[randn(round(threeDObj.Data(7)),1) - 10, randn(round(threeDObj.Data(7)),1) - 10, randn(round(threeDObj.Data(7)),1) + 10];

                eigthClust = 5*[randn(round(threeDObj.Data(8)),1) - 10, randn(round(threeDObj.Data(8)),1) - 10, randn(round(threeDObj.Data(8)),1) - 10]; 

                ninthClust = 5*[randn(round(threeDObj.Data(9)),1) + 20, randn(round(threeDObj.Data(9)),1) + 20, randn(round(threeDObj.Data(9)),1) + 20]; 

                tenthClust = 5*[randn(round(threeDObj.Data(10)),1) + 20, randn(round(threeDObj.Data(10)),1) + 20, randn(round(threeDObj.Data(10)),1) - 20];

                eleventhClust = 5*[randn(round(threeDObj.Data(11)),1) + 20, randn(round(threeDObj.Data(11)),1) - 20, randn(round(threeDObj.Data(11)),1) + 20]; 

                twelfthClust = 5*[randn(round(threeDObj.Data(12)),1) + 20, randn(round(threeDObj.Data(12)),1) - 20, randn(round(threeDObj.Data(12)),1) - 20]; 

                thirteenthClust = 5*[randn(round(threeDObj.Data(13)),1) - 20, randn(round(threeDObj.Data(13)),1) + 20, randn(round(threeDObj.Data(13)),1) + 20]; 

                fourteenthClust = 5*[randn(round(threeDObj.Data(14)),1) - 20, randn(round(threeDObj.Data(14)),1) + 20, randn(round(threeDObj.Data(14)),1) - 20]; 

                fifteenthClust = 5*[randn(round(threeDObj.Data(15)),1) - 20, randn(round(threeDObj.Data(15)),1) - 20, randn(round(threeDObj.Data(15)),1) + 20]; 

                sixteenthClust = 5*[randn(round(threeDObj.Data(16)),1) - 20, randn(round(threeDObj.Data(16)),1) - 20, randn(round(threeDObj.Data(16)),1) - 20]; 

                seventeenthClust = 5*[randn(round(threeDObj.Data(17)),1) + 30, randn(round(threeDObj.Data(17)),1) + 30, randn(round(threeDObj.Data(17)),1) + 30];

                eighteenthClust = 5*[randn(round(threeDObj.Data(18)),1) + 30, randn(round(threeDObj.Data(18)),1) + 30, randn(round(threeDObj.Data(18)),1) - 30]; 

                ninteenthClust = 5*[randn(round(threeDObj.Data(19)),1) + 30, randn(round(threeDObj.Data(19)),1) - 30, randn(round(threeDObj.Data(19)),1) + 30]; 

                twentythClust = 5*[randn(round(threeDObj.Data(20)),1) + 30, randn(round(threeDObj.Data(20)),1) - 30, randn(round(threeDObj.Data(20)),1) - 30]; 

                twentyfirstClust = 5*[randn(round(threeDObj.Data(21)),1) - 30, randn(round(threeDObj.Data(21)),1) + 30, randn(round(threeDObj.Data(21)),1) + 30]; 

                twentysecondClust = 5*[randn(round(threeDObj.Data(22)),1) - 30, randn(round(threeDObj.Data(22)),1) + 30, randn(round(threeDObj.Data(22)),1) - 30]; 

                twentythirdClust = 5*[randn(round(threeDObj.Data(23)),1) - 30, randn(round(threeDObj.Data(23)),1) - 30, randn(round(threeDObj.Data(23)),1) + 30]; 

                twentyfourthClust = 5*[randn(round(threeDObj.Data(24)),1) - 30, randn(round(threeDObj.Data(24)),1) - 30, randn(round(threeDObj.Data(24)),1) - 30]; 

                twentyfifthClust = 5*[randn(round(threeDObj.Data(25)),1) + 40, randn(round(threeDObj.Data(25)),1) + 40, randn(round(threeDObj.Data(25)),1) + 40]; 

                twentysixthClust = 5*[randn(round(threeDObj.Data(26)),1) + 40, randn(round(threeDObj.Data(26)),1) + 40, randn(round(threeDObj.Data(26)),1) - 40]; 

                twentyseventhClust = 5*[randn(round(threeDObj.Data(27)),1) + 40, randn(round(threeDObj.Data(27)),1) - 40, randn(round(threeDObj.Data(27)),1) + 40];

                twentyeigthClust = 5*[randn(round(threeDObj.Data(28)),1) + 40, randn(round(threeDObj.Data(28)),1) - 40, randn(round(threeDObj.Data(28)),1) - 40]; 

                twentyninthClust = 5*[randn(round(threeDObj.Data(29)),1) - 40, randn(round(threeDObj.Data(29)),1) + 40, randn(round(threeDObj.Data(29)),1) + 40];

                thirtythClust = 5*[randn(round(threeDObj.Data(30)),1) - 40, randn(round(threeDObj.Data(30)),1) + 40, randn(round(threeDObj.Data(30)),1) - 40];

                thirtyfirstClust = 5*[randn(round(threeDObj.Data(31)),1) - 40, randn(round(threeDObj.Data(31)),1) - 40, randn(round(threeDObj.Data(31)),1) + 40];

                thirtysecondClust = 5*[randn(round(threeDObj.Data(32)),1) - 40, randn(round(threeDObj.Data(32)),1) - 40, randn(round(threeDObj.Data(32)),1) - 40];
                %EXPLANATION OF CODE UP TO HYPHENATED LINE
                %Each variable is a matrix whose size is determined by the
                %proportion of each color, so "firstClust" is a cluster of
                %"white" pixels. For every percent that a color takes up of
                %an image, another dot is added. For example, if the image
                %is 10% "Dark Grey" then there will be 10 dots on the 3D
                %Cluster that are also "Dark Grey". The places the dots are
                %put on the graph are uniformally distrbuted but are
                %random. So the x, y, and z positions are pretty much
                %random, but centered around a centroid. Since there are 32
                %possible colors, there are 32 clusters.
                %The reason these aren't in loops is due to the fact that
                %MatLab cannot store a full array/matrix within a SINGLE
                %element of another array/matrix. This is unfortunate
                %because otherwise, we could loop through with only three
                %lines of code.

                cla reset; %resets the scatter plot every time so that it is empty every time we look at a new frame
                %-----------------------------------------------------------------
                scatter3(firstClust(:,1),firstClust(:,2),firstClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.ColorValues(1,:)); hold on %plots the random points onto the 3D plot; these points only represent the white proportion; the points are manipulated to be visible and to be white so that it properly looks like the color proportion it is representing; "hold on" allows us to plot more clusters onto the same plot, that way there isn't a new plot made EVERY time; this is all true for the following
                scatter3(secondClust(:,1),secondClust(:,2),secondClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.ColorValues(2,:));
                scatter3(thirdClust(:,1),thirdClust(:,2),thirdClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.ColorValues(3,:));
                scatter3(fourthClust(:,1),fourthClust(:,2),fourthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.ColorValues(4,:));
                scatter3(fifthClust(:,1),fifthClust(:,2),fifthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.ColorValues(5,:));
                scatter3(sixthClust(:,1),sixthClust(:,2),sixthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.ColorValues(6,:));
                scatter3(seventhClust(:,1),seventhClust(:,2),seventhClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.ColorValues(7,:));
                scatter3(eigthClust(:,1),eigthClust(:,2),eigthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.ColorValues(8,:));
                scatter3(ninthClust(:,1),ninthClust(:,2),ninthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.ColorValues(9,:));
                scatter3(tenthClust(:,1),tenthClust(:,2),tenthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.ColorValues(10,:));
                scatter3(eleventhClust(:,1),eleventhClust(:,2),eleventhClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.ColorValues(11,:));
                scatter3(twelfthClust(:,1),twelfthClust(:,2),twelfthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.ColorValues(12,:));
                scatter3(thirteenthClust(:,1),thirteenthClust(:,2),thirteenthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.ColorValues(13,:));
                scatter3(fourteenthClust(:,1),fourteenthClust(:,2),fourteenthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.ColorValues(14,:));
                scatter3(fifteenthClust(:,1),fifteenthClust(:,2),fifteenthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.ColorValues(15,:));
                scatter3(sixteenthClust(:,1),sixteenthClust(:,2),sixteenthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.ColorValues(16,:));
                scatter3(seventeenthClust(:,1),seventeenthClust(:,2),seventeenthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.ColorValues(17,:));
                scatter3(eighteenthClust(:,1),eighteenthClust(:,2),eighteenthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.ColorValues(18,:));
                scatter3(ninteenthClust(:,1),ninteenthClust(:,2),ninteenthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.ColorValues(19,:));
                scatter3(twentythClust(:,1),twentythClust(:,2),twentythClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.ColorValues(20,:));
                scatter3(twentyfirstClust(:,1),twentyfirstClust(:,2),twentyfirstClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.ColorValues(21,:));
                scatter3(twentysecondClust(:,1),twentysecondClust(:,2),twentysecondClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.ColorValues(22,:));
                scatter3(twentythirdClust(:,1),twentythirdClust(:,2),twentythirdClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.ColorValues(23,:));
                scatter3(twentyfourthClust(:,1),twentyfourthClust(:,2),twentyfourthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.ColorValues(24,:));
                scatter3(twentyfifthClust(:,1),twentyfifthClust(:,2),twentyfifthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.ColorValues(25,:));
                scatter3(twentysixthClust(:,1),twentysixthClust(:,2),twentysixthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.ColorValues(26,:));
                scatter3(twentyseventhClust(:,1),twentyseventhClust(:,2),twentyseventhClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.ColorValues(27,:));
                scatter3(twentyeigthClust(:,1),twentyeigthClust(:,2),twentyeigthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.ColorValues(28,:));
                scatter3(twentyninthClust(:,1),twentyninthClust(:,2),twentyninthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.ColorValues(29,:));
                scatter3(thirtythClust(:,1),thirtythClust(:,2),thirtythClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.ColorValues(30,:));
                scatter3(thirtyfirstClust(:,1),thirtyfirstClust(:,2),thirtyfirstClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.ColorValues(31,:));
                scatter3(thirtysecondClust(:,1),thirtysecondClust(:,2),thirtysecondClust(:,3), 20, 'MarkerEdgeColor', 'white', 'MarkerFaceColor', threeDObj.ColorValues(32,:));
                %EXPLANATION OF CODE UP TO HYPHENATED LINE
                %The clusters are actually being scattered about the plot
                %on the lines above. The size of each dot is changed with
                %"MarkerFaceColor" and a black outline of each pixel is
                %made with "MarkerEdgeColor". Except the black dots have a
                %white outline for better visibility. Again, this cannot be
                %in a for loop because we are dealing with
                %three-dimensional arrays, and it is impossible (in MatLab)
                %to put those within a single element of another array. If
                %that were possible a for loop could be used. Important to
                %note that the centroids are purposely at different values,
                %so all 32 can be visible at any given moment.
                hold off %now the scatter plot should reset when another cluster is plotted; doesn't always work so "cla reset" is above this code
                grid on %turns the grid on, makes 3D plot more visible
                set(gca, 'Color', [0.3 0.9 1]); title(threeDObj.Title, 'FontSize', 16); xlabel(threeDObj.xLabel); ylabel(threeDObj.yLabel); zlabel(threeDObj.zLabel);  %sets background color of the plot to cyan so that it is easier to see the dots, while also labelling the axes, creating a title, and setting the limits of the axes
            end
        end
end