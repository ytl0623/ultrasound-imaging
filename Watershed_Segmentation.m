# Watershed Segmentation
https://www.mathworks.com/help/images/marker-controlled-watershed-segmentation.html

clc ; clear 

# Read in the Color Image and Convert it to Grayscale
I = imread('C:\Users\ytlWin\Desktop\1.jpg');
I = rgb2gray(I);
gmag = imgradient(I);
imshowpair(I,gmag,'montage')

#  Mark the Foreground Objects
se = strel('disk',20);
Io = imopen(I,se);
imshow(Io)

# compute the opening-by-reconstruction using imerode and imreconstruct
Ie = imerode(I,se);
Iobr = imreconstruct(Ie,I);
imshow(Iobr)

# Following the opening with a closing can remove the dark spots and stem marks. Compare a regular morphological closing with a closing-by-reconstruction.
Ioc = imclose(Io,se);
imshow(Ioc)

# Now use imdilate followed by imreconstruct. Notice you must complement the image inputs and output of imreconstruct
Iobrd = imdilate(Iobr,se);
Iobrcbr = imreconstruct(imcomplement(Iobrd),imcomplement(Iobr));
Iobrcbr = imcomplement(Iobrcbr);
imshow(Iobrcbr)

# As you can see by comparing Iobrcbr with Ioc, reconstruction-based opening and closing are more effective than standard opening and closing at removing small blemishes without affecting the overall shapes of the objects. Calculate the regional maxima of Iobrcbr to obtain good foreground markers.
fgm = imregionalmax(Iobrcbr);
imshow(fgm)