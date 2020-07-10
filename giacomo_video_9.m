# Materia 6:          	Lezione 9           	14/01/2020
# Immagini    		Gabriele Simone

# 019 - Octave IPT 3.pdf
# 020 - Octave IPT 4.pdf

clear all
close all
clc
display('Image Processing Script 3');
pkg load image
image = imread('eight.bmp');

figure; imshow(image)
title('Original Image')
figure; imhist(image)
title('Original Histogram')

image_opt = histeq(image);

figure; imshow(image_opt)
title('Equalized Image')

figure; imhist(image_opt)
title('Equalized Histogram')

mythreshold = 0.33;
binim = im2bw(image_opt, mythreshold);
figure; imshow(binim)
title('mythreshold')
two test methods)
level1 = graythresh (image_opt, 'Otsu');
level2 = graythresh (image_opt, 'minimum');
binim_otsu = im2bw(image_opt, level1);
binim_minimum = im2bw(image_opt, level2);
figure; imshow(binim_otsu)
title('Otsu')
figure; imshow(binim_minimum)
title('minimum')
binim_white = imcomplement(binim);
figure; imshow(binim_white)
title('mythrehsold white')

SE = strel('square', 5)

image_dilate = imdilate(binim_white, SE);
figure; imshow(image_dilate)
title('Image Dilate')

image_coins = image .* image_dilate;
figure; imshow(image_coins)
title('Coins')

########## ########## ##########
########## ########## ##########

# Pag.1 Gabriele Simone
# Pag.2
# Create a new script IPT_3.m
clear all
close all
display('Image Processing Script 3');
% load Octave-forge Image package
pkg load image
% Load BMP Image
image = imread('eight.bmp');

# Pag.3
% Display the image and the histogram
figure; imshow(image)
title('Original Image')
figure; imhist(image)
title('Original Histogram')

# Pag.4
% Apply histogram equalization
image_opt = histeq(image);
% Display the equalized image and the
equalized histogram
figure; imshow(image_opt)
title('Equalized Image')
figure; imhist(image_opt)
title('Equalized Histogram')

# Pag.5
# Octave Image Processing Exercise 2
# [0/255] & [0/1]

# Pag.6
% Calculate binary image with Octave built-in function
mythreshold = 0.33;
binim = im2bw(image_opt, mythreshold);
figure; imshow(binim)
title('mythreshold')

# Pag.7
% Retrieve automatically the threshold ( with
two test methods)
% Nobuyuki Otsu (1979)
level1 = graythresh (image_opt, 'Otsu');
% J. M. S. Prewitt, and M. L. Mendelsohn (1966)
level2 = graythresh (image_opt, 'minimum');
# Pag.8
binim_otsu = im2bw(image_opt, level1);
binim_minimum = im2bw(image_opt, level2);
figure; imshow(binim_otsu)
title('Otsu')
figure; imshow(binim_minimum)
title('minimum')
# Pag.9
% Create complementary image (invert black and white)
binim_white = imcomplement(binim);
figure; imshow(binim_white)
title('mythrehsold white')
# Pag.10
% Morphlogical Dilatation
% Create structure element
SE = strel('square', 5)
% Dilate the image
image_dilate = imdilate(binim_white, SE);
figure; imshow(image_dilate)
title('Image Dilate')
# Pag.11
% Extract coins from original image
image_coins = image .* image_dilate;
figure; imshow(image_coins)
title('Coins')
  
  
  