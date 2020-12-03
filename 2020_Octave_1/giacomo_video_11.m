# Materia 6:          	Lezione 11           	17/04/2020
# Immagini    		      Gabriele Simone

# 027 - Octave IPT 6.pdf

clear all
close all
clc
display('Image Processing Script 6');

pkg load image
image = imread('LENA.bmp');
figure; imshow(image)
title('Original Image')

image_hsv = rgb2hsv(image);
figure; imshow(image_hsv)
title('Original Image HSV')

# Pag.5
# • Hue = channel 1
# • Saturation = channel 2
# • Value = channel 3
# • Thus:
# identifies Hue
image_hsv(:,:,1) 
# identifies Saturation
image_hsv(:,:,2) 
# identifies Value
image_hsv(:,:,3) 


figure; imshow(image_hsv(:,:,3))
title('Image HSV Value')
figure; imagesc(image_hsv(:,:,3))
title('Image HSV Value Magnitude')
colorbar ();
figure; imhist(image_hsv(:,:,3))
title('Image HSV Value Histogram')


image_histeq = image_hsv;
image_histeq(:,:,3) = histeq(image_histeq(:,:,3));

figure; imshow(image_histeq(:,:,3))
title('Image histeq Value')
figure; imagesc(image_histeq(:,:,3))
title('Image histeq Value Magnitude')
colorbar ();
figure; imhist(image_histeq(:,:,3))
title('Image histeq Value Histogram')

image_gamma = image_hsv;
gamma = 0.67
gamma_inv = 1 ./ gamma
image_gamma(:,:,3) = image_gamma(:,:,3) .^ gamma_inv;

figure; imshow(image_gamma(:,:,3))
title('Image gamma Value')
figure; imagesc(image_gamma(:,:,3))
title('Image gamma Value Magnitude')
colorbar ();
figure; imhist(image_gamma(:,:,3))
title('Image gamma Value Histogram')

image_histeq_rgb = hsv2rgb(image_histeq);
image_gamma_rgb = hsv2rgb(image_gamma);
figure; imshow(image_histeq_rgb)
title('Image histeq RGB')
figure; imshow(image_gamma_rgb)
title('Image gamma RGB')

########## ##########  ########## ##########
########## ##########  ########## ##########

# Create a new script IPT_6.m
# pag.2
clear all
close all
display('Image Processing Script 6');
% load Octave-forge Image package
pkg load image
% Load BMP Image
image = imread(‘LENA.bmp');

# Pag.3
% Display the image
figure; imshow(image)
title('Original Image')

# Pag.4
% Convert image to HSV color space
image_hsv = rgb2hsv(image);
figure; imshow(image_hsv)
title('Original Image HSV')

# Pag.5
# • Hue = channel 1
# • Saturation = channel 2
# • Value = channel 3
# • Thus:
# 1. image_hsv(:,:,1) identifies Hue
# 2. image_hsv(:,:,2) identifies
# Saturation
# 3. image_hsv(:,:,3) identifies Value
Hue = channel 1
Saturation = channel 2
Value = channel 3
Thus:
image_hsv(:,:,1) identifies Hue
image_hsv(:,:,2) identifies
Saturation
image_hsv(:,:,3) identifies Value

# Pag.6
% Value analysis
figure; imshow(image_hsv(:,:,3))
title('Image HSV Value')
figure; imagesc(image_hsv(:,:,3))
title('Image HSV Value Magnitude')
colorbar ();
figure; imhist(image_hsv(:,:,3))
title('Image HSV Value Histogram')

# Pag.7
% Create a copy of the HSV image
image_histeq = image_hsv;
% Equalize histogram of Value channel
image_histeq(:,:,3) = histeq(image_histeq(:,:,3));

# Pag.8
figure; imshow(image_histeq(:,:,3))
title('Image histeq Value')
figure; imagesc(image_histeq(:,:,3))
title('Image histeq Value Magnitude')
colorbar ();
figure; imhist(image_histeq(:,:,3))
title('Image histeq Value Histogram')

# Pag.9
% Create a copy of the HSV image
image_gamma = image_hsv;
% Define gamma and gamma_inv
gamma = 0.67
gamma_inv = 1 ./ gamma
% Apply gamma_inv on Value channel
image_gamma(:,:,3) = image_gamma(:,:,3) .^
gamma_inv;

# Pag.10
figure; imshow(image_gamma(:,:,3))
title('Image gamma Value')
figure; imagesc(image_gamma(:,:,3))
title('Image gamma Value Magnitude')
colorbar ();
figure; imhist(image_gamma(:,:,3))
title('Image gamma Value Histogram')

# Pag.11
% Convert back to RGB and then display
image_histeq_rgb = hsv2rgb(image_histeq);
image_gamma_rgb = hsv2rgb(image_gamma);
figure; imshow(image_histeq_rgb)
title('Image histeq RGB')
figure; imshow(image_gamma_rgb)
title('Image gamma RGB')
