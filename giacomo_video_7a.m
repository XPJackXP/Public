# Materia 6:          Lezione 7a          5/02/2020
# Immagini            Gabriele Simone

# 017 - Octave IPT 1.pdf

clear all
close all
clc
display('Image Processing Script 1');
image = imread('LENA_Grey.bmp');
figure; imshow(image)
figure; 
imshow(image)
function [Out] = Brightness_Scaling(Imm, bright)
  display('Brightness Scaling')
  Out = Imm .* bright;
endfunction
D = Brightness_Scaling(image, 0.33);
figure; imshow(D)

########################################
########################################

# Pag.2
clear all
close all
display('Image Processing Script 1');
% Load BMP Image
image = imread('LENA_Grey.bmp');

# Pag.3
% Display the image
figure; imshow(image)

# Pag.4 
function [Out] = Brightness_Scaling(Imm, bright)
  display('Brightness Scaling')
  Out = Imm .* bright;
endfunction

# Pag.5
% Change brightness
D = Brightness_Scaling(image, 0.33);
figure; imshow(D)


