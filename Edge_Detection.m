# Edge Detection
https://yuchungchuang.wordpress.com/2021/01/21/matlab-%E5%BD%B1%E5%83%8F%E8%99%95%E7%90%86-image-segmentation/

# Sobel算法
I = imread('C:\Users\ytlWin\Desktop\1.jpg');
gray = rgb2gray(I);
sobel = edge(gray);
imshow(sobel)

I = imread('C:\Users\ytlWin\Desktop\1.jpg');
gray = rgb2gray(I);
threshold = 100;
binary = I(:,:,1) > threshold;
sobel = edge(binary);
imshow(sobel)

I = imread('C:\Users\ytlWin\Desktop\1.jpg');
gray = rgb2gray(I);
adaptive = imbinarize(gray,'adaptive');
sobel = edge(adaptive);
imshow(sobel)

# Canny算法
I = imread('C:\Users\ytlWin\Desktop\1.jpg');
gray = rgb2gray(I);
[canny, thres] = edge(gray,'canny');
imshow(canny)

I = imread('C:\Users\ytlWin\Desktop\1.jpg');
gray = rgb2gray(I);
threshold = 100;
binary = I(:,:,1) > threshold;
[canny, thres] = edge(binary,'canny');
imshow(canny)

I = imread('C:\Users\ytlWin\Desktop\1.jpg');
gray = rgb2gray(I);
adaptive = imbinarize(gray,'adaptive');
[canny, thres] = edge(adaptive,'canny');
imshow(canny)