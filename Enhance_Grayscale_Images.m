# Enhance Grayscale Images
https://www.mathworks.com/help/images/contrast-enhancement-techniques.html

clc ; clear ;

# Read image into workspace.
pout = imread('C:\Users\ytlWin\Desktop\1.jpg');

# Convert RGB image to grayscale image.
pout = rgb2gray(pout);

# Enhance the image using the three contrast adjustment techniques with default settings.
pout_imadjust = imadjust(pout);
pout_histeq = histeq(pout);
pout_adapthisteq = adapthisteq(pout);

# Display the original image and the three contrast adjusted images as a montage.
montage({pout,pout_imadjust,pout_histeq,pout_adapthisteq},"Size",[1 4])
title("Original Image and Enhanced Images using imadjust, histeq, and adapthisteq")

figure
subplot(1,2,1)
imhist(pout)
title("Histogram of Original Image")
subplot(1,2,2)
imhist(pout_adapthisteq)
title("Enhanced Images using adapthisteq()");

# 消除邊界

clc ; clear ;

I = imread('C:\Users\ytlWin\Desktop\1.jpg');
gray = rgb2gray(I);
bw = imclearborder(gray);
imshow(bw);

# 填補空洞

clc ; clear ;

I = imread('C:\Users\ytlWin\Desktop\1.jpg');
gray = rgb2gray(I);
bw = imfill(gray,'holes');
imshow(bw);

# 消除二值圖的雜訊
clc ; clear ;

I = imread('C:\Users\ytlWin\Desktop\1.jpg');
gray = rgb2gray(I);
areaMin = 4500;
bw = bwareaopen(gray, areaMin);
imshow(bw)



















