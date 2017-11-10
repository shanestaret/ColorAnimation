clear all
clc
img = imread('DisneyColorfulLogo.jpg');
frame_size = size(img);
allpixels = reshape(img, frame_size(1)*frame_size(2), frame_size(3))
[row,col] = size(allpixels);
totalPixels = 0;
count = 0;
white = 0;
black = 0;
red = 0;
green = 0;
blue = 0;
grey = 0;
purplepink = 0;
yelloworange = 0;
for row = 1:row
    count = 0;
    for col = 1:col
        if count == 0
            R = allpixels(row,col);
            count = count + 1;
        elseif count == 1
            G = allpixels(row,col);
            count = count + 1;
        elseif count == 2
            B = allpixels(row,col);
            count = count + 1;
        end
        totalPixels = totalPixels + 1;
    end
        if R > 230 && G > 230 && B > 230
            white = white + 1;
        elseif R < 70 && G < 70 && B < 70
            black = black + 1;
        elseif abs(R - G) <= 5 && abs(G - B) <= 5 && abs(R - B) <= 5
            grey = grey + 1;
        elseif R > B && R > G
            red = red + 1;
        elseif G > B && G >= R
            green = green + 1;
        elseif B >= R && B >= G
            blue = blue + 1;
        end
end

totalPixels = totalPixels/3;
totalPixels
white
black
grey
red
green
blue
white + black + grey + red + green + blue

PercentOfWhite = (white/totalPixels)* 100
PercentOfBlack = (black/totalPixels) * 100
PercentOfGrey = (grey/totalPixels)* 100
PercentOfRed = (red/totalPixels)* 100
PercentOfGreen = (green/totalPixels) * 100
PercentOfBlue = (blue/totalPixels) * 100
PercentOfPurplePink = (purplepink/totalPixels) * 100
PercentOfYellowOrange = (yelloworange/totalPixels) * 100