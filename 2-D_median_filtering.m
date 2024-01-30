# 2-D median filtering
https://www.mathworks.com/help/images/ref/medfilt2.html

clc ; clear ;

# Read image into workspace.
I = imread('C:\Users\ytlWin\Desktop\1.jpg');

# Convert RGB image to grayscale image.
I = rgb2gray(I);

# Use a median filter to filter out the noise.
K = medfilt2(I);

# Display results, side-by-side.
imshowpair(I,K,'montage')

