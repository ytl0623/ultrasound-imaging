# Adaptive Thresholding
https://yuchungchuang.wordpress.com/2021/01/21/matlab-%E5%BD%B1%E5%83%8F%E8%99%95%E7%90%86-image-segmentation/

I = imread('C:\Users\ytlWin\Desktop\1.jpg');
gray = rgb2gray(I);
adaptive = imbinarize(gray,'adaptive');
imshow(adaptive)

