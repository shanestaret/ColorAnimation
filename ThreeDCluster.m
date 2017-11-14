classdef ThreeDCluster < GraphInterface
	    
	    properties
	        Title
	        xLabel
	        yLabel
            zLabel
            propOfWhite
            propOfBlack
            propOfGrey
            propOfRed
            propOfGreen
            propOfBlue
	    end
	    
	    methods
	        function threeDObj = ThreeDCluster(d,t,w,z,y,r,g,b)
	            threeDObj.Data = d;
	            threeDObj.Title = t;
                threeDObj.propOfWhite = w;
                threeDObj.propOfBlack = z;
                threeDObj.propOfGrey = y;
                threeDObj.propOfRed = r;
                threeDObj.propOfGreen = g;
                threeDObj.propOfBlue = b;
	        end
	        
	        function createGraph(threeDObj)
                firstClust = 5*[randn(round(threeDObj.propOfWhite),1) + 5, randn(round(threeDObj.propOfWhite),1) + 5, randn(round(threeDObj.propOfWhite),1) + 5];
                secClust = 5*[randn(round(threeDObj.propOfBlack),1) + 5, randn(round(threeDObj.propOfBlack),1) - 5, randn(round(threeDObj.propOfBlack),1) - 5];
                thirdClust = 5*[randn(round(threeDObj.propOfGrey),1) - 5, randn(round(threeDObj.propOfGrey),1) + 5, randn(round(threeDObj.propOfGrey),1) + 5];
                fourthClust = 5*[randn(round(threeDObj.propOfRed),1) - 5, randn(round(threeDObj.propOfRed),1) - 5, randn(round(threeDObj.propOfRed),1) - 5];
                fifthClust = 5*[randn(round(threeDObj.propOfGreen),1) + 5, randn(round(threeDObj.propOfGreen),1), randn(round(threeDObj.propOfGreen),1)];
                sixthClust = 5*[randn(round(threeDObj.propOfBlue),1), randn(round(threeDObj.propOfBlue),1), randn(round(threeDObj.propOfBlue),1)];
                
                all_data = [firstClust;secClust;thirdClust;fourthClust;fifthClust;sixthClust];
                
                plot3(firstClust(:,1),firstClust(:,2),firstClust(:,3), 'white.','LineWidth', 3,'MarkerEdgeColor', 'white', 'MarkerSize', 12); hold on
                plot3(secClust(:,1),secClust(:,2),secClust(:,3), 'black.','LineWidth', 3,'MarkerEdgeColor', 'black', 'MarkerSize', 12);
                plot3(thirdClust(:,1),thirdClust(:,2),thirdClust(:,3), 'yellow.','LineWidth', 3,'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerSize', 12);
                plot3(fourthClust(:,1),fourthClust(:,2),fourthClust(:,3), 'r.','LineWidth', 3,'MarkerEdgeColor', 'red', 'MarkerSize', 12);
                plot3(fifthClust(:,1),fifthClust(:,2),fifthClust(:,3), 'g.','LineWidth', 3,'MarkerEdgeColor', 'green', 'MarkerSize', 12);
                plot3(sixthClust(:,1),sixthClust(:,2),sixthClust(:,3), 'blue.','LineWidth', 3,'MarkerEdgeColor', 'blue', 'MarkerSize', 12);
                grid on
                set(gca, 'Color', [0.3 0.9 1]); title(threeDObj.Title);
                
	                end
	      
	            end
end
