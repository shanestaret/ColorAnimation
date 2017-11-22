classdef ThreeDCluster < GraphInterface %implements the interface "GraphInterface"; creates a 3D plot
	    
	    properties
            zLabel %zLabel property meant for labeling z axis of the 3D plot
        end % Terminates block of code
	    
	    methods
	        function threeDObj = ThreeDCluster(d,c,t)% variables being passed into the parameter 
              %of the ThreeDCluster class. We are storing all of this in
              %the threeDObj
                                                            
	            threeDObj.Data = d; %assigns the Data to variable d
	            threeDObj.Title = t; %assigns the Title to variable t
                threeDObj.Color = c;
                threeDObj.xLabel = 'x';
                threeDObj.yLabel = 'y';
                threeDObj.zLabel = 'z';
            end %Terminates block of code
	        
	        function createGraph(threeDObj) % function created to create a graph
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

                fifteenthClust = 5*[randn(round(threeDObj.Data(15)),1) - 20, randn(round(threeDObj.Data(20)),1) - 20, randn(round(threeDObj.Data(15)),1) + 20]; 

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

                cla reset;
                scatter3(firstClust(:,1),firstClust(:,2),firstClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.Color(1,:)); hold on %plots the random points onto the 3D plot; these points only represent the white proportion; the points are manipulated to be visible and to be white so that it properly looks like the color proportion it is representing; "hold on" allows us to plot more clusters onto the same plot, that way there isn't a new plot made EVERY time; this is all true for the following
                scatter3(secondClust(:,1),secondClust(:,2),secondClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.Color(2,:));
                scatter3(thirdClust(:,1),thirdClust(:,2),thirdClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.Color(3,:));
                scatter3(fourthClust(:,1),fourthClust(:,2),fourthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.Color(4,:));
                scatter3(fifthClust(:,1),fifthClust(:,2),fifthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.Color(5,:));
                scatter3(sixthClust(:,1),sixthClust(:,2),sixthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.Color(6,:));
                scatter3(seventhClust(:,1),seventhClust(:,2),seventhClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.Color(7,:));
                scatter3(eigthClust(:,1),eigthClust(:,2),eigthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.Color(8,:));
                scatter3(ninthClust(:,1),ninthClust(:,2),ninthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.Color(9,:));
                scatter3(tenthClust(:,1),tenthClust(:,2),tenthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.Color(10,:));
                scatter3(eleventhClust(:,1),eleventhClust(:,2),eleventhClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.Color(11,:));
                scatter3(twelfthClust(:,1),twelfthClust(:,2),twelfthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.Color(12,:));
                scatter3(thirteenthClust(:,1),thirteenthClust(:,2),thirteenthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.Color(13,:));
                scatter3(fourteenthClust(:,1),fourteenthClust(:,2),fourteenthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.Color(14,:));
                scatter3(fifteenthClust(:,1),fifteenthClust(:,2),fifteenthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.Color(15,:));
                scatter3(sixteenthClust(:,1),sixteenthClust(:,2),sixteenthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.Color(16,:));
                scatter3(seventeenthClust(:,1),seventeenthClust(:,2),seventeenthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.Color(17,:));
                scatter3(eighteenthClust(:,1),eighteenthClust(:,2),eighteenthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.Color(18,:));
                scatter3(ninteenthClust(:,1),ninteenthClust(:,2),ninteenthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.Color(19,:));
                scatter3(twentythClust(:,1),twentythClust(:,2),twentythClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.Color(20,:));
                scatter3(twentyfirstClust(:,1),twentyfirstClust(:,2),twentyfirstClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.Color(21,:));
                scatter3(twentysecondClust(:,1),twentysecondClust(:,2),twentysecondClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.Color(22,:));
                scatter3(twentythirdClust(:,1),twentythirdClust(:,2),twentythirdClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.Color(23,:));
                scatter3(twentyfourthClust(:,1),twentyfourthClust(:,2),twentyfourthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.Color(24,:));
                scatter3(twentyfifthClust(:,1),twentyfifthClust(:,2),twentyfifthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.Color(25,:));
                scatter3(twentysixthClust(:,1),twentysixthClust(:,2),twentysixthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.Color(26,:));
                scatter3(twentyseventhClust(:,1),twentyseventhClust(:,2),twentyseventhClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.Color(27,:));
                scatter3(twentyeigthClust(:,1),twentyeigthClust(:,2),twentyeigthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.Color(28,:));
                scatter3(twentyninthClust(:,1),twentyninthClust(:,2),twentyninthClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.Color(29,:));
                scatter3(thirtythClust(:,1),thirtythClust(:,2),thirtythClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.Color(30,:));
                scatter3(thirtyfirstClust(:,1),thirtyfirstClust(:,2),thirtyfirstClust(:,3), 20, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', threeDObj.Color(31,:));
                scatter3(thirtysecondClust(:,1),thirtysecondClust(:,2),thirtysecondClust(:,3), 20, 'MarkerEdgeColor', 'white', 'MarkerFaceColor', threeDObj.Color(32,:));
                hold off
                grid on %turns the grid on, makes 3D plot more visible
                set(gca, 'Color', [0.3 0.9 1]); title(threeDObj.Title, 'FontSize', 16); xlabel(threeDObj.xLabel); ylabel(threeDObj.yLabel); zlabel(threeDObj.zLabel); axis([-250 125 -250 250 -250 250]); %sets background color of the plot to cyan so that it is easier to see the dots
            end
        end
end