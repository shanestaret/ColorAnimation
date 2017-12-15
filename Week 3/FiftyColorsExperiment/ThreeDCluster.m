classdef ThreeDCluster < GraphInterface %implements the interface "GraphInterface"; creates a 3D plot
	    
	    properties
	        Title % Title property meant for the title of title of 3D plot
	        xLabel % xLabel property meant for labeling x axis of the 3D plot
	        yLabel % yLabel property meant for labeling y axis of the 3D plot
            zLabel %zLabel property meant for labeling z axis of the 3D plot
         
            propOfGrey 
            propOfGreySilver
            propOfDarkSlateGrey
            propOfAliceBlue
            propOfCadetBlue1
            propOfCadetBlue4
            propOfCornFlowerBlue
            propOfLightCornflowerBlue
            propOfDarkTurquoise
            propOfDeepSkyBlue
            propOfDodgerBlue
            propOfLightSkyBlue2
            propOfLightSlateBlue
            propOfAquamarine
            propOfMediumBlue
            propOfRosyBrown1
            propOfSaddleBrown
            propOfSandyBrown
            propOfbrown
            propOfdarkbrown
            propOfburlywood
            propOfbakerschocolate
            propOfchocolate
            propOfTan
            propOfgreen
            propOfbisque
            propOfcoral 
            propOforange 
            propOfOrangeNeutral
            propOfOrangeRed 
            propOfHotPink 
            propOfRRed 
            propOflightpink
            propOfred
            propOftomato
            propOfPink
            propOfSalmon
            propOfScarlet
            propOfDarkViolet
            propOfmagenta
            propOfmaroon
            propOfpurple
            propOfTurquoise
            propOfViolet
            propOfVioletRed
            propOfWhite
            propOfBlack

            
            
            
            
            
            
            
        end % Terminates block of code
	    
	    methods
	        function threeDObj = ThreeDCluster(d,t,a,b,c,dDD,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,u,v,w,x,y,z,Bb,Cc,Dd,Ee,Ff,Gg,Hh,Ii,Jj,Kk,Ll,Mm,Nn,Oo,Pp,Qq,Rr,Ss,Tt,Uu,Vv,Xx,Yy)

                 
                threeDObj.Data = d;
                threeDObj.Title = t;
                threeDObj.propOfGrey = b; 
                threeDObj.propOfGreySilver = c; 
                threeDObj.propOfDarkSlateGrey = dDD; 
                threeDObj.propOfAliceBlue = e; 
                threeDObj.propOfCadetBlue1 = f;
                threeDObj.propOfCadetBlue4 = g; 
                threeDObj.propOfCornFlowerBlue = h;
                threeDObj.propOfLightCornflowerBlue = i; 
                threeDObj.propOfDarkTurquoise = j; 
                threeDObj.propOfDeepSkyBlue = k; 
                threeDObj.propOfDodgerBlue = l; 
                threeDObj.propOfLightSkyBlue2 = m;
                threeDObj.propOfLightSlateBlue = n; 
                threeDObj.propOfAquamarine = o; 
                threeDObj.propOfMediumBlue = p;
                threeDObj.propOflightaquamarine = q; 
                threeDObj.propOfRosyBrown1 = r; 
                threeDObj.propOfSaddleBrown = s; 
                threeDObj.propOfSandyBrown = u;
                threeDObj.propOfbrown = v;
                threeDObj.propOfdarkbrown = w; 
                threeDObj.propOfburlywood = x; 
                threeDObj.propOfbakerschocolate = y; 
                threeDObj.propOfchocolate = z;  
                threeDObj.propOfTan = a; 
                threeDObj.propOfgreen = Bb; 
                threeDObj.propOfbisque = Cc; 
                threeDObj.propOfcoral = Dd; 
                threeDObj.propOforange  = Ee; 
                threeDObj.propOfOrangeNeutral = Ff; 
                threeDObj.propOfOrangeRed = Gg; 
                threeDObj.propOfHotPink = Hh; 
                threeDObj.propOfOrangeRRed = Ii;
                threeDObj.propOflightpink = Jj; 
                threeDObj.propOfred = Kk; 
                threeDObj.propOftomato = Ll;
                threeDObj.propOfPink = Mm; 
                threeDObj.propOfSalmon = Nn; 
                threeDObj.propOfScarlet = Oo; 
                threeDObj.propOfDarkViolet = Pp; 
                threeDObj.propOfmagenta = Qq; 
                threeDObj.propOfmaroon = Rr; 
                threeDObj.propOfpurple = Ss; 
                threeDObj.propOfTurquoise = Tt; 
                threeDObj.propOfViolet = Uu; 
                threeDObj.propOfVioletRed = Vv;
                threeDObj.propOfWhite = Xx;
                threeDObj.propOfBlack = Yy;


            end %Terminates block of code
	        
	        function createGraph(threeDObj) % function created to create a graph
                


                firstClust = 5*[randn(round(threeDObj.propOfWhite),1) + 5, randn(round(threeDObj.propOfWhite),1) + 5, randn(round(threeDObj.propOfWhite),1) + 5]; 

                secClust = 5*[randn(round(threeDObj.propOfBlack),1) + 5, randn(round(threeDObj.propOfBlack),1) - 5, randn(round(threeDObj.propOfBlack),1) - 5];

                thirdClust = 5*[randn(round(threeDObj.propOfGrey),1) - 5, randn(round(threeDObj.propOfGrey),1) + 5, randn(round(threeDObj.propOfGrey),1) + 5];

                fourthClust = 5*[randn(round(threeDObj.propOfRed),1) - 5, randn(round(threeDObj.propOfRed),1) - 5, randn(round(threeDObj.propOfRed),1) - 5];

                fifthClust = 5*[randn(round(threeDObj.propOfGreen),1) + 5, randn(round(threeDObj.propOfGreen),1), randn(round(threeDObj.propOfGreen),1)];

                sixthClust = 5*[randn(round(threeDObj.propOfGreySilver),1) + 5, randn(round(threeDObj.propOfGreySilver),1), randn(round(threeDObj.propOfGreySilver),1)];

                seventhClust = 5*[randn(round(threeDObj.propOfDarkSlateGrey),1), randn(round(threeDObj.propOfDarkSlateGrey),1), randn(round(threeDObj.propOfDarkSlateGrey),1)];

                eigthClust = 5*[randn(round(threeDObj.propOfAliceBlue),1) + 5, randn(round(threeDObj.propOfAliceBlue),1) + 5, randn(round(threeDObj.propOfAliceBlue),1) + 5]; 

                ninethClust = 5*[randn(round(threeDObj.propOfCadetBlue1),1) + 5, randn(round(threeDObj.propOfCadetBlue1),1) + 5, randn(round(threeDObj.propOfCadetBlue1),1) + 5]; 

                tenthClust = 5*[randn(round(threeDObj.propOfCadetBlue4),1) + 5, randn(round(threeDObj.propOfCadetBlue4),1) + 5, randn(round(threeDObj.propOfCadetBlue4),1) + 5];

                eleventhClust = 5*[randn(round(threeDObj.propOfCornFlowerBlue),1) + 5, randn(round(threeDObj.propOfCornFlowerBlue),1) + 5, randn(round(threeDObj.propOfCornFlowerBlue),1) + 5]; 

                twelthClust = 5*[randn(round(threeDObj.propOfLightCornflowerBlue),1) + 5, randn(round(threeDObj.propOfLightCornflowerBlue),1) + 5, randn(round(threeDObj.propOfLightCornflowerBlue),1) + 5]; 

                thirteenthClust = 5*[randn(round(threeDObj.propOfDarkTurquoise),1) + 5, randn(round(threeDObj.propOfDarkTurquoise),1) + 5, randn(round(threeDObj.propOfDarkTurquoise),1) + 5]; 

                fourteenthClust = 5*[randn(round(threeDObj.propOfHotPink),1) + 5, randn(round(threeDObj.propOfHotPink),1) + 5, randn(round(threeDObj.propOfLightCornflowerBlue),1) + 5]; 

                fifteenthClust = 5*[randn(round(threeDObj.propOfOrangeRed),1) + 5, randn(round(threeDObj.propOfOrangeRed),1) + 5, randn(round(threeDObj.propOf		),1) + 5]; 

                sixteenthClust = 5*[randn(round(threeDObj.propOfDeepSkyBlue),1) + 5, randn(round(threeDObj.propOfDeepSkyBlue),1) + 5, randn(round(threeDObj.propOfDeepSkyBlue),1) + 5]; 

                seventeenthClust = 5*[randn(round(threeDObj.propOfDodgerBlue),1) + 5, randn(round(threeDObj.propOfDodgerBlue),1), randn(round(threeDObj.propOfDodgerBlue),1)];

                eigthtenthClust = 5*[randn(round(threeDObj.propOfLightSkyBlue2),1) + 5, randn(round(threeDObj.propOfLightSkyBlue2),1) + 5, randn(round(threeDObj.propOfLightSkyBlue2),1) + 5]; 

                nineteethfirstClust = 5*[randn(round(threeDObj.propOfLightSlateBlue),1) + 5, randn(round(threeDObj.propOfLightSlateBlue),1) + 5, randn(round(threeDObj.propOfLightSlateBlue),1) + 5]; 

                twentythClust = 5*[randn(round(threeDObj.propOfAquamarine),1) + 5, randn(round(threeDObj.propOfAquamarine),1) + 5, randn(round(threeDObj.propOfAquamarine),1) + 5]; 

                twentyfirstClust = 5*[randn(round(threeDObj.propOfMediumBlue),1) + 5, randn(round(threeDObj.propOfMediumBlue),1) + 5, randn(round(threeDObj.propOfMediumBlue),1) + 5]; 

                twentysecondClust = 5*[randn(round(threeDObj.propOflightaquamarine),1) + 5, randn(round(threeDObj.propOflightaquamarine),1) + 5, randn(round(threeDObj.propOflightaquamarine),1) + 5]; 

                twentythirdClust = 5*[randn(round(threeDObj.propOfRosyBrown1),1) + 5, randn(round(threeDObj.propOfRosyBrown1),1) + 5, randn(round(threeDObj.propOfRosyBrown1),1) + 5]; 

                twentyfourthClust = 5*[randn(round(threeDObj.propOfSaddleBrown),1) + 5, randn(round(threeDObj.propOfSaddleBrown),1) + 5, randn(round(threeDObj.propOfSaddleBrown),1) + 5]; 

                twentyfifthClust = 5*[randn(round(threeDObj.propOfSandyBrown),1) + 5, randn(round(threeDObj.propOfSandyBrown),1) + 5, randn(round(threeDObj.propOfSandyBrown),1) + 5]; 

                twentysixthClust = 5*[randn(round(threeDObj.propOfbrown),1) + 5, randn(round(threeDObj.propOfbrown),1) + 5, randn(round(threeDObj.propOfbrown),1) + 5]; 

                twentyseventhClust = 5*[randn(round(threeDObj.propOfdarkbrown),1) + 5, randn(round(threeDObj.propOfdarkbrown),1) + 5, randn(round(threeDObj.propOfdarkbrown),1) + 5];

                twentyeigthClust = 5*[randn(round(threeDObj.propOfburlywood),1) + 5, randn(round(threeDObj.propOfburlywood),1) + 5, randn(round(threeDObj.propOfburlywood),1) + 5]; 

                twentyninethClust = 5*[randn(round(threeDObj.propOfbakerschocolate),1) + 5, randn(round(threeDObj.propOfbakerschocolate),1), randn(round(threeDObj.propOfbaker's chocolate),1)];

                thirtythClust = 5*[randn(round(threeDObj.propOfchocolate),1) + 5, randn(round(threeDObj.propOfchocolate),1), randn(round(threeDObj.propOfchocolate),1)];

                thirtyfirstClust = 5*[randn(round(threeDObj.propOfbisque),1) + 5, randn(round(threeDObj.propOfbisque),1), randn(round(threeDObj.propOfbisque),1)];

                thirtysecondClust = 5*[randn(round(threeDObj.propOfcoral),1) + 5, randn(round(threeDObj.propOfcoral),1), randn(round(threeDObj.propOfcoral),1)];

                thirtythirdClust = 5*[randn(round(threeDObj.propOforange),1) + 5, randn(round(threeDObj.propOforange),1), randn(round(threeDObj.propOforange),1)];

                thirtyfouthClust = 5*[randn(round(threeDObj.propOfOrangeNeutral),1) + 5, randn(round(threeDObj.propOfOrangeNeutral),1), randn(round(threeDObj.propOfOrangeNeutral),1)];

                thirtyfithClust = 5*[randn(round(threeDObj.propOfOrangeRed),1) + 5, randn(round(threeDObj.propOfOrangeRed),1), randn(round(threeDObj.propOfOrangeRed),1)];

                thirtysixthClust = 5*[randn(round(threeDObj.propOfHotPink),1) + 5, randn(round(threeDObj.propOfHotPink),1), randn(round(threeDObj.propOfHotPink),1)];

                thirtyseventhClust = 5*[randn(round(threeDObj.propOfLightOrangeRed),1) + 5, randn(round(threeDObj.propOfLightOrangeRed),1), randn(round(threeDObj.propOfLightOrangeRed),1)];

                thirtyeigthClust = 5*[randn(round(threeDObj.propOflightpink),1) + 5, randn(round(threeDObj.propOflightpink),1), randn(round(threeDObj.propOflightpink),1)];

                thirtyninethClust = 5*[randn(round(threeDObj.propOftomato),1) + 5, randn(round(threeDObj.propOftomato),1), randn(round(threeDObj.propOftomato),1)];

                fourtyethClust = 5*[randn(round(threeDObj.propOfPink),1) + 5, randn(round(threeDObj.propOfPink),1), randn(round(threeDObj.propOfPink),1)];

                fourtyfirstClust = 5*[randn(round(threeDObj.propOfSalmon),1) + 5, randn(round(threeDObj.propOfSalmon),1), randn(round(threeDObj.propOfSalmon),1)];

                fourtysecondClust = 5*[randn(round(threeDObj.propOfScarlet),1) + 5, randn(round(threeDObj.propOfScarlet),1), randn(round(threeDObj.propOfScarlet),1)];

                fourtythirdClust = 5*[randn(round(threeDObj.propOfDarkViolet),1) + 5, randn(round(threeDObj.propOfDarkViolet),1), randn(round(threeDObj.propOfDarkViolet),1)];

                fourtyfouthClust = 5*[randn(round(threeDObj.propOfmagenta),1) + 5, randn(round(threeDObj.propOfmagenta),1), randn(round(threeDObj.propOfmagenta),1)];

                fourtyfithClust = 5*[randn(round(threeDObj.propOfmaroon),1) + 5, randn(round(threeDObj.propOfmaroon),1), randn(round(threeDObj.propOfmaroon),1)];

                fourtysixthClust = 5*[randn(round(threeDObj.propOfpurple),1) + 5, randn(round(threeDObj.propOfpurple),1), randn(round(threeDObj.propOfpurple),1)];

                fourtyseventhClust = 5*[randn(round(threeDObj.propOfTurquoise),1) + 5, randn(round(threeDObj.propOfTurquoise),1), randn(round(threeDObj.propOfTurquoise),1)];

                fourtyeigthClust = 5*[randn(round(threeDObj.propOfViolet),1) + 5, randn(round(threeDObj.propOfViolet),1), randn(round(threeDObj.propOfViolet),1)];

                fourtyninethClust = 5*[randn(round(threeDObj.propOfVioletRed),1) + 5, randn(round(threeDObj.propOfVioletRed),1), randn(round(threeDObj.propOfVioletRed),1)];

                fiftythClust = 5*[randn(round(threeDObj.propOfTan),1) + 5, randn(round(threeDObj.propOfTan),1), randn(round(threeDObj.propOfTan),1)];

                
                
                
                
                







            plot3(firstClust(:,1),firstClust(:,2),firstClust(:,3), 'White.','LineWidth', 3,'MarkerEdgeColor', 'White', 'MarkerSize', 12); hold on

            plot3(secClust(:,1),secClust(:,2),secClust(:,3), ' Black..','LineWidth', 3,'MarkerEdgeColor', 'Black', 'MarkerSize', 12);

            plot3(thirdClust(:,1),thirdClust(:,2),thirdClust(:,3), 'Grey.','LineWidth', 3,'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerSize', 12);

            plot3(fourthClust(:,1),fourthClust(:,2),fourthClust(:,3), 'Red.','LineWidth', 3,'MarkerEdgeColor', 'Red', 'MarkerSize', 12);

            plot3(fifthClust(:,1),fifthClust(:,2),fifthClust(:,3), 'Green.','LineWidth', 3,'MarkerEdgeColor', 'Green', 'MarkerSize', 12);

            plot3(sixthClust(:,1),sixthClust(:,2),sixthClust(:,3), ' Grey Silver.','LineWidth', 3,'GreySilver', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(seventhClust(:,1),seventhClust(:,2),seventhClust(:,3), 'DarkSlateGrey.','LineWidth', 3,'DarkSlateGrey', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(eightClust(:,1),eightClust(:,2),eightClust(:,3), 'Alice Blue.','LineWidth',3,'Alice Blue', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(ninethClust(:,1), ninethClust(:,2), ninethClust (:,3), 'CadetBlue1.','LineWidth' ,3,'CadetBlue1', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(tenthClust(:,1),tenthClust(:,2),tenthClust(:,3), ' CadetBlue4.','LineWidth' ,3, 'CadetBlue4', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(eleventhClust(:,1),eleventhClust(:,2),eleventhClust(:,3), ' CornflowerBlue.','LineWidth' ,3,'CornflowerBlue?, MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(twelthClust(:,1),twelthClust(:,2),twelthClust(:,3), 'LightCornflowerBlue.','LineWidth'  ,3, 'LightCornflowerBlue', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(thirteenthClust(:,1),thirteenthClust(:,2),thirteenthClust(:,3), 'DarkTurquoise.', 'LineWidth' ,3,'DarkTurquoise','MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(fourteenthClust(:,1),fourteenthClust(:,2),fourteenthClust(:,3), 'HotPink.','LineWidth'  ,3, 'HotPink', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(fitheenthClust(:,1),fitheenthClust (:,2),fitheenthClust (:,3), ' Orange Red.','LineWidth'  ,3, 'OrangeRed', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(sixteenthClust(:,1),sixteenthClust(:,2),sixteenthClust(:,3), 'DeepSkyBlue.', 'LineWidth'  ,3, 'DeepSkyBlue', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(seventeenthClust(:,1),seventeenthClust(:,2),seventeenthClust(:,3), 'DodgerBlue.','LineWidth'  ,3, 'DodgerBlue', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(eighteenthClust(:,1),eighteenthClust(:,2),eighteenthClust(:,3), 'LightSkyBlue2.','LineWidth'  ,3,'LightSkyBlue2', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(nineteethClust(:,1),nineteethClust(:,2),nineteethClust(:,3), ' LightSlateBlue.','LineWidth'  ,3, 'LightSlateBlue', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(twentiethClust(:,1),twentiethClust(:,2),twentiethClust(:,3), ' Aquamarine.','LineWidth'  ,3, 'Aquamarine', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(twentyfirstClust(:,1), twentyfirst(:,2), twentyfirst(:,3), 'MediumBlue.','LineWidth'  ,3, 'MediumBlue', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(twentysecondClust(:,1),twentysecondClust(:,2),twentysecondClust(:,3), 'lightaquamarine.','LineWidth'  ,3, 'lightaquamarine', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(twentythirdClust (:,1),sithClust(:,2), twentythirdClust(:,3), ' RosyBrown1.','LineWidth'  ,3,'RosyBrown1', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(twentyfourthClust(:,1), twentyfourthClust(:,2), twentyfourthClust(:,3), 'SaddleBrown.','LineWidth'  ,3, 'SaddleBrown', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(twentyfifthClust(:,1), twentyfifthClust(:,2), twentyfifthClust(:,3), 'SandyBrown.','LineWidth'  ,3, 'SandyBrown', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(twentysixthClust(:,1), twentysixthClust(:,2), twentysixthClust(:,3), 'brown.','LineWidth'  ,3,'brown ', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(twentyseventhClust(:,1), twentysventhClust (:,2), twentyseventhClust(:,3), 'dark brown.','LineWidth'  ,3,'darkbrown', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(twentyeigthClust(:,1), twentyeigthClust(:,2), twentyeigthClust(:,3), 'burly wood.','LineWidth'  ,3,'burlywood', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(twentyninethClust(:,1), twentyninethClust(:,2), twentyninethClust(:,3), 'bakerschocolate.','LineWidth'  ,3,'bakerschocolate', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(thirtythClust(:,1), thirtythClust(:,2), thirtythClust(:,3), ' chocolate. ','LineWidth'  ,3, 'chocolate', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(thirtyfirstClust(:,1), thirtyfirstClust(:,2), thirtyfirstClust(:,3), 'bisque.','LineWidth'  ,3, 'bisque', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(thirtysecondClust(:,1), thirtysecondClust(:,2), thirtysecondClust(:,3), 'coral.','LineWidth'  ,3,'coral', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(thirtythirdClust(:,1), thirtythirdClust(:,2), thirtythirdClust(:,3), 'orange.','LineWidth'  ,3,'orange', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(thirtyfouthClust(:,1), thirtyfouthClust(:,2), thirtyfouthClust(:,3), ' OrangeNeutral.','LineWidth'  ,3, 'OrangeNeutral', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(thirtyfithClust(:,1), thirtyfithClust(:,2), thirtyfithClust(:,3), ' Orange Red.','LineWidth'  ,3,'OrangeRed', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(thirtysixthClust(:,1), thirtysixthClust(:,2), thirtysixthClust(:,3), 'Hot Pink.','LineWidth'  ,3,'HotPink', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(thirtyseventhClust(:,1), thirtyseventhClust(:,2), thirtyseventhClust(:,3), ' Light Orange Red.','LineWidth'  ,3, 'LightOrangeRed', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(thirtyeigthClust(:,1), thirtyeigthClust(:,2), thirtyeigthClust(:,3), ' light pink.','LineWidth'  ,3, 'lightpink', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(thirtyninethClust(:,1), thirtyninethClust(:,2), thirtyninethClust(:,3), ' tomato.','LineWidth'  ,3, 'tomato', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(fourtyethClust(:,1), fourtyethClust(:,2), fourtyethClust(:,3), 'Pink.','LineWidth'  ,3, 'Pink', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(fourtyfirstClust(:,1), fourtyfirstClust(:,2), fourtyfirstClust(:,3), ' Salmon.','LineWidth'  ,3,'Salmon', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(fourtysecondClust(:,1), fourtysecondClust(:,2), fourtysecondClust(:,3), ' Scarlet.','LineWidth'  ,3,'Scarlet', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(fourtythirdClust(:,1), fourtythirdClust(:,2), fourtythirdClust(:,3), ' Dark Violet.','LineWidth'  ,3,'DarkViolet', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(fourtyfouthClust(:,1), fourtyfouthClust(:,2), fourtyfouthClust(:,3), ' magenta.','LineWidth'  ,3, 'magenta', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(fourtyfithClust(:,1), fourtyfithClust(:,2), fourtyfithClust(:,3), ' maroon.','LineWidth'  ,3,'maroon', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(fourtysixthClust(:,1), fourtysixthClust(:,2), fourtysixthClust(:,3), ' purple.','LineWidth'  ,3,'purple', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(fourtyseventhClust(:,1), fourtyseventhClust(:,2), fourtyseventhClust(:,3), ' Turquoise.','LineWidth'  ,3,'Turquoise', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(fourtyeigthClust(:,1), fourtyeigthClust(:,2), fourtyeigthClust(:,3), ' Violet.','LineWidth'  ,3,'Violet', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(fourtyninethClust(:,1), fourtyninethClust(:,2), fourtyninethClust(:,3), ' Violet Red.','LineWidth'  ,3,'VioletRed', 'MarkerEdgeColor', 'MarkerSize', 12);    

            plot3(fiftythClust(:,1), fiftythClust(:,2), fiftythClust(:,3), 'Tan.','LineWidth'  ,3,'Tan', 'MarkerEdgeColor', 'MarkerSize', 12);    
                                
                grid on %turns the grid on, makes 3D plot more visible
                set(gca, 'Color', [0.3 0.9 1]); title(threeDObj.Title); %sets background color of the plot to cyan so that it is easier to see the dots
                
            end %Terminates block of code
	      
        end %Terminates block of code
end %Terminate block of code
