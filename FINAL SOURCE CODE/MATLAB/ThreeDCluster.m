classdef ThreeDCluster < GraphInterface %implements the interface "GraphInterface"; creates a 3D plot
        % ThreeDCluster Class that creates a 3D cluster plot for the original
        % and manipulated image
        %Essentially, this class determines a specific area where a cluster
        %of dots will reside for every color. We worked with thirty two
        %colors, therefore, there are possibly thirty clusters that could
        %display on the graph. Each dot represents 1% composition of a
        %specific color in a frame. So if an image is 10% black, then ten
        %black dots will appear in a cluster.
	    properties
            zLabel %zLabel property meant for labeling z axis of the 3D plot
        end % Terminates block of code
	    
	    methods
	        function threeDObj = ThreeDCluster(d,c,t)     
	            threeDObj.Data = d; %the color proportions of the image
	            threeDObj.Title = t; %title of Graph
                threeDObj.ColorValues = c; %the actual RGB values of every color represented
                threeDObj.xLabel = 'x'; %x-axis label
                threeDObj.yLabel = 'y'; %y-axis label
                threeDObj.zLabel = 'z'; %z-axis label
            end %Terminates block of code
	        
	        function createGraph(threeDObj) % function created to create a graph
                %-----------------------------------------------------------------
                firstClust = [randn(ceil(threeDObj.Data(1)),1) + 3, randn(ceil(threeDObj.Data(1)),1) + 6, randn(ceil(threeDObj.Data(1)),1) + 9]; 

                secondClust = [randn(round(threeDObj.Data(2)),1) + 3, randn(round(threeDObj.Data(2)),1) + 6, randn(round(threeDObj.Data(2)),1) - 9];

                thirdClust = [randn(round(threeDObj.Data(3)),1) + 3, randn(round(threeDObj.Data(3)),1) - 6, randn(round(threeDObj.Data(3)),1) + 9];

                fourthClust = [randn(round(threeDObj.Data(4)),1) + 3, randn(round(threeDObj.Data(4)),1) - 6, randn(round(threeDObj.Data(4)),1) - 9];

                fifthClust = [randn(round(threeDObj.Data(5)),1) - 3, randn(round(threeDObj.Data(5)),1) + 6, randn(round(threeDObj.Data(5)),1) + 9];

                sixthClust = [randn(round(threeDObj.Data(6)),1) - 3, randn(round(threeDObj.Data(6)),1) + 6, randn(round(threeDObj.Data(6)),1) - 9];

                seventhClust = [randn(round(threeDObj.Data(7)),1) - 3, randn(round(threeDObj.Data(7)),1) - 6, randn(round(threeDObj.Data(7)),1) + 9];

                eigthClust = [randn(round(threeDObj.Data(8)),1) - 3, randn(round(threeDObj.Data(8)),1) - 6, randn(round(threeDObj.Data(8)),1) - 9]; 

                ninthClust = [randn(round(threeDObj.Data(9)),1) + 6, randn(round(threeDObj.Data(9)),1) + 3, randn(round(threeDObj.Data(9)),1) + 9]; 

                tenthClust = [randn(round(threeDObj.Data(10)),1) + 6, randn(round(threeDObj.Data(10)),1) + 3, randn(round(threeDObj.Data(10)),1) - 9];

                eleventhClust = [randn(round(threeDObj.Data(11)),1) + 6, randn(round(threeDObj.Data(11)),1) - 3, randn(round(threeDObj.Data(11)),1) + 9]; 

                twelfthClust = [randn(round(threeDObj.Data(12)),1) + 6, randn(round(threeDObj.Data(12)),1) - 3, randn(round(threeDObj.Data(12)),1) - 9]; 

                thirteenthClust = [randn(round(threeDObj.Data(13)),1) - 6, randn(round(threeDObj.Data(13)),1) + 3, randn(round(threeDObj.Data(13)),1) + 9]; 

                fourteenthClust = [randn(round(threeDObj.Data(14)),1) - 6, randn(round(threeDObj.Data(14)),1) + 3, randn(round(threeDObj.Data(14)),1) - 9]; 

                fifteenthClust = [randn(round(threeDObj.Data(15)),1) - 6, randn(round(threeDObj.Data(15)),1) - 3, randn(round(threeDObj.Data(15)),1) + 9]; 

                sixteenthClust = [randn(round(threeDObj.Data(16)),1) - 6, randn(round(threeDObj.Data(16)),1) - 3, randn(round(threeDObj.Data(16)),1) - 9]; 

                seventeenthClust = [randn(round(threeDObj.Data(17)),1) + 9, randn(round(threeDObj.Data(17)),1) + 6, randn(round(threeDObj.Data(17)),1) + 3];

                eighteenthClust = [randn(round(threeDObj.Data(18)),1) + 9, randn(round(threeDObj.Data(18)),1) + 6, randn(round(threeDObj.Data(18)),1) - 3]; 

                ninteenthClust = [randn(round(threeDObj.Data(19)),1) + 9, randn(round(threeDObj.Data(19)),1) - 6, randn(round(threeDObj.Data(19)),1) + 3]; 

                twentythClust = [randn(round(threeDObj.Data(20)),1) + 9, randn(round(threeDObj.Data(20)),1) - 6, randn(round(threeDObj.Data(20)),1) - 3]; 

                twentyfirstClust = [randn(round(threeDObj.Data(21)),1) - 9, randn(round(threeDObj.Data(21)),1) + 6, randn(round(threeDObj.Data(21)),1) + 3]; 

                twentysecondClust = [randn(round(threeDObj.Data(22)),1) - 9, randn(round(threeDObj.Data(22)),1) + 6, randn(round(threeDObj.Data(22)),1) - 3]; 

                twentythirdClust = [randn(round(threeDObj.Data(23)),1) - 9, randn(round(threeDObj.Data(23)),1) - 6, randn(round(threeDObj.Data(23)),1) + 3]; 

                twentyfourthClust = [randn(round(threeDObj.Data(24)),1) - 9, randn(round(threeDObj.Data(24)),1) - 6, randn(round(threeDObj.Data(24)),1) - 3]; 

                twentyfifthClust = [randn(round(threeDObj.Data(25)),1) + 12, randn(round(threeDObj.Data(25)),1) + 3, randn(round(threeDObj.Data(25)),1) + 3]; 

                twentysixthClust = [randn(round(threeDObj.Data(26)),1) + 12, randn(round(threeDObj.Data(26)),1) + 3, randn(round(threeDObj.Data(26)),1) - 3]; 

                twentyseventhClust = [randn(round(threeDObj.Data(27)),1) + 12, randn(round(threeDObj.Data(27)),1) - 3, randn(round(threeDObj.Data(27)),1) + 3];

                twentyeigthClust = [randn(round(threeDObj.Data(28)),1) + 12, randn(round(threeDObj.Data(28)),1) - 3, randn(round(threeDObj.Data(28)),1) - 3]; 

                twentyninthClust = [randn(round(threeDObj.Data(29)),1) - 12, randn(round(threeDObj.Data(29)),1) + 3, randn(round(threeDObj.Data(29)),1) + 3];

                thirtythClust = [randn(round(threeDObj.Data(30)),1) - 12, randn(round(threeDObj.Data(30)),1) + 3, randn(round(threeDObj.Data(30)),1) - 3];

                thirtyfirstClust = [randn(round(threeDObj.Data(31)),1) - 12, randn(round(threeDObj.Data(31)),1) - 3, randn(round(threeDObj.Data(31)),1) + 3];

                thirtysecondClust = [randn(ceil(threeDObj.Data(32)),1) - 12, randn(ceil(threeDObj.Data(32)),1) - 3, randn(ceil(threeDObj.Data(32)),1) - 3];
                
                %EXPLANATION OF CODE UP TO HYPHENATED LINE
                %Each variable is a matrix whose size is determined by the
                %proportion of each color, so "firstClust" is a cluster of
                %"white" pixels. For every percent that a color takes up of
                %an image, another dot is added. For example, if the image
                %is 10% "Dark Grey" then there will be 10 dots on the 3D
                %Cluster that are also "Dark Grey". The places the dots are
                %put on the graph are uniformally distrbuted but are
                %random. So the x, y, and z positions are pretty much
                %random, but centered aceil a centroid. Since there are 32
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
                set(gca, 'Color', [0.3 0.9 1]); title(threeDObj.Title, 'FontSize', 16); xlabel(threeDObj.xLabel); ylabel(threeDObj.yLabel); zlabel(threeDObj.zLabel);  %sets backgceil color of the plot to cyan so that it is easier to see the dots, while also labelling the axes, creating a title, and setting the limits of the axes
            end
        end
end