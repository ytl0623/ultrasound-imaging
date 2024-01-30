# Image Smoothing
https://yuchungchuang.wordpress.com/2021/01/21/matlab-%E5%BD%B1%E5%83%8F%E8%99%95%E7%90%86-image-segmentation/

clc ; clear

I = imread('C:\Users\ytlWin\Desktop\1.jpg');
gray = rgb2gray(I);
f = ones(3,3) / 9 ;
smooth = imfilter(gray,f);
for i = 1:5
  smooth = imfilter(smooth,f);
end
imshowpair(gray,smooth,'montage')

canny_smooth = edge(smooth,'canny');
imshowpair(gray,canny_smooth,'montage')

I = imread('C:\Users\ytlWin\Desktop\1.jpg');
gray = rgb2gray(I);
threshold = 100;
binary = I(:,:,1) > threshold;
[canny, thres] = edge(binary,'canny');
thres = thres + 0.1
[canny_smooth,thres] = edge(smooth,'canny',thres);
imshowpair(canny,canny_smooth,'montage')

I = imread('C:\Users\ytlWin\Desktop\1.jpg');
gray = rgb2gray(I);
adaptive = imbinarize(gray,'adaptive');
[canny, thres] = edge(adaptive,'canny');
thres = thres + 0.1
[canny_smooth,thres] = edge(smooth,'canny',thres);
imshowpair(canny,canny_smooth,'montage')