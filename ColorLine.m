classdef ColorLine %class to create color variation line
    
    properties
       
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
    end
    
    methods
        function lineObj = ColorLine(d,t,a,b,c,dDD,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,u,v,w,x,y,z,Bb,Cc,Dd,Ee,Ff,Gg,Hh,Ii,Jj,Kk,Ll,Mm,Nn,Oo,Pp,Qq,Rr,Ss,Tt,Uu,Vv,Xx,Yy)
            
            
                lineOBJ.Data = d;
                lineOBJ.Title = t;
                lineOBJ.propOfGrey = b; 
                lineOBJ.propOfGreySilver = c; 
                lineOBJ.propOfDarkSlateGrey = dDD; 
                lineOBJ.propOfAliceBlue = e; 
                lineOBJ.propOfCadetBlue1 = f;
                lineOBJ.propOfCadetBlue4 = g; 
                lineOBJ.propOfCornFlowerBlue = h;
                lineOBJ.propOfLightCornflowerBlue = i; 
                lineOBJ.propOfDarkTurquoise = j; 
                lineOBJ.propOfDeepSkyBlue = k; 
                lineOBJ.propOfDodgerBlue = l; 
                lineOBJ.propOfLightSkyBlue2 = m;
                lineOBJ.propOfLightSlateBlue = n; 
                lineOBJ.propOfAquamarine = o; 
                lineOBJ.propOfMediumBlue = p;
                lineOBJ.propOflightaquamarine = q; 
                lineOBJ.propOfRosyBrown1 = r; 
                lineOBJ.propOfSaddleBrown = s; 
                lineOBJ.propOfSandyBrown = u;
                lineOBJ.propOfbrown = v;
                lineOBJ.propOfdarkbrown = w; 
                lineOBJ.propOfburlywood = x; 
                lineOBJ.propOfbakerschocolate = y; 
                lineOBJ.propOfchocolate = z;  
                lineOBJ.propOfTan = a; 
                lineOBJ.propOfgreen = Bb; 
                lineOBJ.propOfbisque = Cc; 
                lineOBJ.propOfcoral = Dd; 
                lineOBJ.propOforange  = Ee; 
                lineOBJ.propOfOrangeNeutral = Ff; 
                lineOBJ.propOfOrangeRed = Gg; 
                lineOBJ.propOfHotPink = Hh; 
                lineOBJ.propOfOrangeRRed = Ii;
                lineOBJ.propOflightpink = Jj; 
                lineOBJ.propOfred = Kk; 
                lineOBJ.propOftomato = Ll;
                lineOBJ.propOfPink = Mm; 
                lineOBJ.propOfSalmon = Nn; 
                lineOBJ.propOfScarlet = Oo; 
                lineOBJ.propOfDarkViolet = Pp; 
                lineOBJ.propOfmagenta = Qq; 
                lineOBJ.propOfmaroon = Rr; 
                lineOBJ.propOfpurple = Ss; 
                lineOBJ.propOfTurquoise = Tt; 
                lineOBJ.propOfViolet = Uu; 
                lineOBJ.propOfVioletRed = Vv;
                lineOBJ.propOfWhite = Xx;
                lineOBJ.propOfBlack = Yy;
            
        end
        
        function drawLine = drawLine(lineObj)
            x = [10 10]; %Says that the X coordinate is strictly 10
            y = [0 lineObj.propOfWhite];  %the initial line coordinate stops at 0, then goes to whatever the proportion of white is; for example, if propOfWhite is 75, then this indicates that a line needs to be drawn from y = 0 to y = 75
            bottom = line(x,y, 'Color', 'white'); set(bottom, 'LineWidth', 5); %draws the first line, since we are looking at the propOfWhite, we make the line white; we change the width as well to make it more visible
            y = [lineObj.propOfWhite (lineObj.propOfWhite + lineObj.propOfBlack)]; %sets the y-coordinates for the second line; the second line coordinates go from the top of the propOfWhite line, all the way to another coordinate based on propOfBlack; for example, propOfWhite = 75, propOfBlack = 3, then this indicates that a line must be drawn from y = 75 to y = 78; this is similar for all the following
            second = line(x,y, 'Color', 'black'); set(second, 'LineWidth', 5); %draws the second line, directly above the first
            y = [(lineObj.propOfWhite + lineObj.propOfBlack) (lineObj.propOfWhite + lineObj.propOfBlack + lineObj.propOfGrey)];
            third = line(x,y, 'Color', [0.5 0.5 0.5]); set(third, 'LineWidth', 5);
            y = [(lineObj.propOfWhite + lineObj.propOfBlack + lineObj.propOfGrey) (lineObj.propOfWhite + lineObj.propOfBlack + lineObj.propOfGrey + lineObj.propOfRed)];
            fourth = line(x,y, 'Color', 'red'); set(fourth, 'LineWidth', 5);
            y = [(lineObj.propOfWhite + lineObj.propOfBlack + lineObj.propOfGrey + lineObj.propOfRed) (lineObj.propOfWhite + lineObj.propOfBlack + lineObj.propOfGrey + lineObj.propOfRed + lineObj.propOfGreen)];
            fifth = line(x,y, 'Color', 'green'); set(fifth, 'LineWidth', 5);
            y = [(lineObj.propOfWhite + lineObj.propOfBlack + lineObj.propOfGrey + lineObj.propOfRed + lineObj.propOfGreen) (lineObj.propOfWhite + lineObj.propOfBlack + lineObj.propOfGrey + lineObj.propOfRed + lineObj.propOfGreen + lineObj.propOfBlue)];
            sixth = line(x,y, 'Color', 'blue'); set(sixth, 'LineWidth', 5); %draws the sixth and final line
            axis off %turns off the axis because we do not need to see them unless we are debugging to ensure proportions are correct
        end
    end
end

