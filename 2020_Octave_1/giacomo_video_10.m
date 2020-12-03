# Materia 6:          	Lezione 10           	16/04/2020
# Immagini    		      Gabriele Simone

# 022 - Image Processing Fundamentals_4.pdf
# 023 - Octave IPT 5

clear all
close all
clc
display('Image Processing Script 5');
pkg load image


image = imread('LENA_Grey.bmp');
figure; imshow(image)
title('Original Image')

[height width] = size(image)
image_large = imresize(image, [height .* 2
width .* 2], 'linear');
figure; imshow(image_large)
title('Image x2')

w_smooth= (1 ./ 81) .* ones(9, 9)
image_smooth = conv2(image_large,w_smooth, 'same');
figure; imshow(uint8(image_smooth));
title('Image Smooth')

w_gauss = (1 ./ 12) .* [1 1 1; 1 4 1; 1 1 1]
image_gauss = conv2(image_large, w_gauss, 'same');
figure; imshow(uint8(image_gauss));
title('Image Gauss')

w_laplace = [0 1 0; 1 -4 1; 0 1 0];
image_laplace = conv2(image_large, w_laplace,'same');
figure; imshow(image_laplace);
title('Image Laplace on Original')

image_smooth_laplace = conv2(image_smooth,
w_laplace, 'same');
figure; imshow(image_smooth_laplace);
title('Image Laplace on Image Smooth')

image_gauss_laplace = conv2(image_gauss, w_laplace, 'same');
figure; imshow(image_gauss_laplace);
title('Image Laplace on Image Gauss')

w_log = [
  0 0 -1 0 0;
  0 -1 -2 -1 0;
  -1 -2 16 -2 -1;
  0 -1 -2 -1 0;
  0 0 -1 0 0
  ]

image_log = conv2(image_large, w_log, 'same');
figure; imshow(image_log);
title('Image LoG on Original')

image_original_smooth = image_large - image_smooth;
figure; imshow(uint8(image_original_smooth));
title('Image Original - Smooth')


########## ########## ########## ##########
########## ########## ########## ##########

# Pag.2
# Create a new script IPT_5.m
clear all
close all
display('Image Processing Script 5');
% load Octave-forge Image package
pkg load image
% Load BMP Image
image = imread(ëLENA_Grey.bmp');

# Pag.3
% Display the image
figure; imshow(image)
title('Original Image')
% Retrieve size of the image
[height width] = size(image)

# Pag.4
% Resize up to double with bilinear filtering
image_large = imresize(image, [height .* 2
width .* 2], 'linear');
figure; imshow(image_large)
title('Image x2')

# Pag.5
% Smoothing the image
% w_smooth= (1 ./ 9) .* [1 1 1; 1 1 1; 1 1 1]
w_smooth= (1 ./ 81) .* ones(9, 9)
image_smooth = conv2(image_large,
w_smooth, 'same');
figure; imshow(uint8(image_smooth));
title('Image Smooth')

# Pag.6
% Gauss filtering
w_gauss = (1 ./ 12) .* [1 1 1; 1 4 1; 1 1 1]
%w_gauss = (1 ./ 18) .* [1 1 1; 1 1 1; 2 8 2]
image_gauss = conv2(image_large, w_gauss, 'same');
figure; imshow(uint8(image_gauss));
title('Image Gauss')

# Pag.7
% Laplace filtering on original image
w_laplace = [0 1 0; 1 -4 1; 0 1 0];
image_laplace = conv2(image_large, w_laplace,'same');
figure; imshow(image_laplace);
title('Image Laplace on Original')

# Pag.8
% Laplace filtering on smooth image
image_smooth_laplace = conv2(image_smooth,
w_laplace, 'same');
figure; imshow(image_smooth_laplace);
title('Image Laplace on Image Smooth')

# Pag.9 
% Laplace filtering on Gauss image
image_gauss_laplace = conv2(image_gauss, w_laplace, 'same');
figure; imshow(image_gauss_laplace);
title('Image Laplace on Image Gauss')

# Pag.10
% LoG filtering on original image
w_log = [
  0 0 -1 0 0;
  0 -1 -2 -1 0;
  -1 -2 16 -2 -1;
  0 -1 -2 -1 0;
  0 0 -1 0 0
  ]
image_log = conv2(image_large, w_log, 'same');
figure; imshow(image_log);
title('Image LoG on Original')

# Pag.11
% Original Image minus Image Smooth
image_original_smooth = image_large - image_smooth;
figure; imshow(uint8(image_original_smooth));
title('Image Original - Smooth')

########## ########## ########## ##########
########## ########## ########## ##########

# 
# RECORDING
# Compressione e qualit‡† dell'immagine 
# in rappresentazione i vari software NxMxL
# DATASTORAGE = Va a salvere un 'file' su un Medium 'storage'.
# 
# FILE FORMAT = Circa 30
# bmp (windows)
# gif
# png
# jpeg
# jpeg2000
# 
# Sono tra i pi˘ conosciuti e i pi˘ utilizzati, GIF
# Lossless - Mantenere i dati
# Lossy - A perdita di dati
# 
# Vogliamo comprimere le dimensioni di un file.
# 1) Image Compression - Connessione Dati
# 2) RLE Run Lenght Encoding 
# )
# )
# 
# 
# Se voglio Comprire un immagine o un file ho bisogno di un:
# ALGORIMO ENCODER, ALGORITMO DECODER = ALGORITMO CODEC
# 
# [12|6|...|93|32]
# [0|6|93|X] 
# => // Passa a una tabella (22 4 00) 
# [22|43|17|32|48|49|] = 
# [04|02|01|01|01|01|] = Frequency
# [00|01|100|101|110|111|]
# 
# N√® esistono altri  Shannon-Fano (zip_tar) 
# 
# 
# BMP
# BitMap
# .bmp
# Header File = Header rappresenta le caratteristiche dell'immagine.
# 
# 
# 
# 1) a. File Header
#     b. BitMap File Header
#     c. Identifier
# 
# 2) a. Info Header
#     b.
# 
# GIF risultato da
# img1 + img2 = img1, img2, img1, img2...
# √© nato perch√® il GIF aveva il copy right
# 
# DCT 2D DISCCRATE COSINE TRANSFORM
# Un qualsiasi segnale, 
# pu√≤ essere rappresenta da una sinusodie.
# I picchi di uguale ampiezza 
# come sinusoidi di dimensioni diverse.
# 
# # = La somma di pi˘ segnale
# * = Somma di #++ 
# 
# JPG = √® a perdita di informazioni.
# Anche se 
# 
# 1) Converted RGB to YUV (YCbCr) 
# 1)
# 1)
# 1)
# 
# Y/Q = 214 / 16 = 
# Y/Q = 13  
# Y/Q = 49 / 11 = 
# Y/Q = 4.4 = 4   
# 
# Z = Blocco 
# Zij = round(Yii/Qjj)
# 
# JP2000 - JP2
# Usa la DWT non pi√π la DCT
# 
# BLOKING
# RINGING
# BLURRINESS
# 
# IT intelligenza artificiale sono tecniche basate su esempi.
