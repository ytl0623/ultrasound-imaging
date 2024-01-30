# Global image threshold using Otsu's method
https://www.mathworks.com/help/images/ref/graythresh.html

clc ; clear

I = imread('C:\Users\ytlWin\Desktop\1.jpg');
gray = rgb2gray(I);
level = graythresh(I)
BW = imbinarize(I,level);
imshowpair(I,BW,'montage')