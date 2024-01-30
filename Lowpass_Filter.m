# Lowpass Filter
https://www.geeksforgeeks.org/matlab-ideal-lowpass-filter-in-image-processing/

clc ; clear ;

# Reading input image
input_image = imread('C:\Users\ytlWin\Desktop\1.jpg');

# Convert RGB image to grayscale image.
input_image = rgb2gray(input_image);

# Saving the size of the input_image
[M, N] = size(input_image);

# Getting Fourier Transform of the input_image
FT_img = fft2(double(input_image));

# Assign Cut-off Frequency
D0 = 30;

# Designing filter
u = 0:(M-1);
idx = find(u>M/2);
u(idx) = u(idx)-M;
v = 0:(N-1);
idy = find(v>N/2);
v(idy) = v(idy)-N;

[V, U] = meshgrid(v, u);

# Calculating Euclidean Distance
D = sqrt(U.^2+V.^2);

# Comparing with the cut-off frequency and determining the filtering mask
H = double(D <= D0);

# Convolution between the Fourier Transformed image and the mask
G = H.*FT_img;

# Getting the resultant image by Inverse Fourier Transform of the convoluted image
output_image = real(ifft2(double(G)));

# Displaying Input Image and Output Image
subplot(2, 1, 1), imshow(input_image),
subplot(2, 1, 2), imshow(output_image, [ ]);
