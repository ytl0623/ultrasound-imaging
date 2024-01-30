# Image Binarization
https://yuchungchuang.wordpress.com/2021/01/21/matlab-%E5%BD%B1%E5%83%8F%E8%99%95%E7%90%86-image-segmentation/

clc ; clear ;

# Read image into workspace.
I = imread('C:\Users\ytlWin\Desktop\1.jpg');
imshow(I)
row = 250;
hold on
h = plot([0 size(I,2)],[row, row],'r-');

figure
hold on
plot(I(row,:,1),'r-')
plot(I(row,:,2),'g-')
plot(I(row,:,3),'b-')

threshold = 100;
binary = I(:,:,1) > threshold;
imshow(binary)