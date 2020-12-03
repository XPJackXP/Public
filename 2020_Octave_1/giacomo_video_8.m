# Materia 6:          Lezione 8           	13/04/2020
# Immagini            Gabriele Simone

# 018 - Octave IPT 2.pdf

clear all
close all
clc

display('Image Processing Script 2');
pkg load image
image = imread('LENA_Grey.bmp');
figure; imshow(image)
figure; imhist(image)

image_opt = histeq(image);
figure; imshow(image_opt)
figure; imhist(image_opt)

function [out] = binarize(imm, threshold)
  [nr nc] = size(imm);
    for i_count = 1:nr
    for j_count = 1:nc
    NEXT SLIDE
    end
  end
endfunction 

if imm(i_count, j_count) < threshold
  out(i_count, j_count) = 0;
else
  out(i_count, j_count) = 1;
end

binim = binarize(image, 128);
figure; imshow(binim)

equalized image
binim_opt = binarize(image_opt .* 255, 64);
figure; imshow(binim_opt)

T = double(image);
thr = 128;
T(T < thr) = 0;
T(T >= thr) = 1;
figure; imshow(T)


########################################
########################################

# Pag.1

# Pag.2
# Create a new script IPT_2.m
clear all
close all
display('Image Processing Script 2');
% load Octave-forge Image package
pkg load image
% Load BMP Image
image = imread('LENA_Grey.bmp');


# Pag.3
% Display the image
figure; imshow(image)
% Display the histogram
figure; imhist(image)

# Pag.4
% Apply histogram equalization
image_opt = histeq(image);
figure; imshow(image_opt)
figure; imhist(image_opt)

# Pag.5
# Create a new script binarize.m
function [out] = binarize(imm, threshold)
  [nr nc] = size(imm);
  % Looping for each element of imm and set to 0 each pixel lower than threshold
    for i_count = 1:nr
    for j_count = 1:nc
    NEXT SLIDE
    end
  end
endfunction 

# Pag.6

if imm(i_count, j_count) < threshold
  out(i_count, j_count) = 0;
else
  out(i_count, j_count) = 1;
end

# Pag.7
% Calculate binary image
binim = binarize(image, 128);
figure; imshow(binim)
% Calculate binary image on histogram
equalized image
binim_opt = binarize(image_opt .* 255, 64);
figure; imshow(binim_opt)


# Pag.8
% Alternative way to binarize an image
T = double(image);
thr = 128;
T(T < thr) = 0;
T(T >= thr) = 1;
figure; imshow(T)

