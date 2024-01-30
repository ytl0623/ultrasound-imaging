# 2-D box filtering of images
https://www.mathworks.com/help/images/ref/imboxfilt.html

clc ; clear ;

# Read image into workspace.
I = imread('C:\Users\ytlWin\Desktop\1.jpg');

# Convert RGB image to grayscale image.
I = rgb2gray(I);

# Perform the mean filtering using an 11-by-11 filter.
localMean = imboxfilt(I,11);

# Display the original image and the filtered image, side-by-side.
imshowpair(I,localMean,'montage')
