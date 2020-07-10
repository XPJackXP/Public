# Materia 6:            Lezione 9_b           	14/01/2020
# Immagini              Gabriele Simone

# 019 - Octave IPT 3.pdf
# 020 - Octave IPT 4.pdf

# Create a new script IPT_4.m
clear all
close all
clc
display('Image Processing Script 4');
pkg load image
image = imread('LENA.bmp');
figure; imshow(image)
title('Original Image')
red_ch = image(:,:,1);
green_ch = image(:,:,2);
blue_ch = image(:,:,3);
figure; imhist(red_ch)
title('RED Original Histogram')
figure; imhist(green_ch)
title('GREEN Original Histogram')
figure; imhist(blue_ch)
title('BLUE Original Histogram')
image_opt = zeros(size(image));
figure; imshow(image_opt);
image_opt(:,:,1) = histeq(red_ch);
image_opt(:,:,2) = histeq(green_ch);
image_opt(:,:,3) = histeq(blue_ch);
figure; imshow(image_opt);
title('Equalized Image')

########## ########## ########## ##########
########## ########## ########## ##########

# 4Create a new script IPT_4.m
# Pag.2
clear all
close all
clc
display('Image Processing Script 4');
% load Octave-forge Image package
pkg load image
% Load BMP Image
image = imread('LENA.bmp');

# Pag.3
figure; imshow(image)
title('Original Image')
%Extract Red, Green and Blue channels
red_ch = image(:,:,1);
green_ch = image(:,:,2);
blue_ch = image(:,:,3);

# Pag.4
figure; imhist(red_ch)
title('RED Original Histogram')
figure; imhist(green_ch)
title('GREEN Original Histogram')
figure; imhist(blue_ch)
title('BLUE Original Histogram')

# Pag.5
% Create empty output image with same of original image
image_opt = zeros(size(image));
figure; imshow(image_opt);

# Pag.6
% Equalize each channel separately
image_opt(:,:,1) = histeq(red_ch);
image_opt(:,:,2) = histeq(green_ch);
image_opt(:,:,3) = histeq(blue_ch);

# Pag.7
% Display equalized image
figure; imshow(image_opt);
title('Equalized Image')
