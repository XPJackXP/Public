# Materia 6:    Lezione 12           23/04/2020
# Immagini      Gabriele Simone

# Create IPT_7.m
# Create whitepatch.m

# Pag.1
# IPT_7.m
clear all
close all
display('Image Processing Script 7');

pkg load imag
image = imread('LENA.bmp');

figure; imshow(image)
title('Original Image')
image_hsv = rgb2hsv(image);

image_histeq = image_hsv;
image_gamma = image_hsv;

image_histeq(:,:,3) = histeq(image_histeq(:,:,3));

gamma = 0.67
gamma_inv = 1 ./ gamma
image_gamma(:,:,3) = image_gamma(:,:,3) .^ gamma_inv;

image_histeq_rgb = hsv2rgb(image_histeq);
image_gamma_rgb = hsv2rgb(image_gamma);
figure; imshow(image_histeq_rgb)
title('Image histeq RGB')
figure; imshow(image_gamma_rgb)
title('Image gamma RGB')

figure; imshow(image_hsv(:,:,2))
title('Image HSV Saturation')
figure; imagesc(image_hsv(:,:,2))
title('Image HSV Saturation Magnitude')
colorbar ();
figure; imhist(image_hsv(:,:,2))
title('Image HSV Saturation Histogram')

perc_sat = 0.30;
image
sat_add_gamma = image_gamma(:,:,2) .*
perc_sat;
image_gamma(:,:,2) = image_gamma(:,:,2) -
sat_add_gamma;

figure; imagesc(image_gamma(:,:,2))
title('Image gamma Saturation - percentage
Magnitude')
colorbar ();

image_gamma_rgb = hsv2rgb(image_gamma);
figure; imshow(image_gamma_rgb)
title('Image gamma RGB after Saturation
decrease')
# Pag.12
figure; imhist(image_gamma_rgb(:,:,1))
title('Histogram red channel')
figure; imhist(image_gamma_rgb(:,:,2))
title('Histogram green channel')
figure; imhist(image_gamma_rgb(:,:,3))
title('Histogram blue channel')

# Pag.13
function output = whitepatch(image)
  tic
  %....NEXT slide

  # Pag.14
  output = zeros(size(image));  
  max_im = max(max(image))
  max_red = max_im(1)
  max_green = max_im(2)
  max_blue = max_im(3)

  # Pag.16
  output(:,:,1) = image(:,:,1) ./ max_red;
  output(:,:,2) = image(:,:,2) ./ max_green;
  output(:,:,3) = image(:,:,3) ./ max_blue;
  
  max(max(output))

  toc
end

# Pag.15
image_whitepatch =
whitepatch(image_gamma_rgb);

# Pag.17
In IPT_7.m
figure; imshow(image_whitepatch)
title('Image gamma RGB after whitepatch')

########## ##########  ########## ##########
########## ##########  ########## ##########

# Pag.1
# Create a new script IPT_7.m

# Pag.2
clear all
close all
display('Image Processing Script 7’);
% load Octave-forge Image package
pkg load imag
% Load BMP Image
image = imread(‘LENA.bmp');

# Pag.3
% Display the image
figure; imshow(image)
title('Original Image')
% Convert image to HSV color space
image_hsv = rgb2hsv(image);

# Pag.4
% Create a copy of the HSV image
image_histeq = image_hsv;
image_gamma = image_hsv;

# Pag.5
% Equalize histogram of Value channel
image_histeq(:,:,3) = histeq(image_histeq(:,:,3));

# Pag.6
% Define gamma and gamma_inv
gamma = 0.67
gamma_inv = 1 ./ gamma
% Apply gamma_inv on Value channel
image_gamma(:,:,3) = image_gamma(:,:,3) .^
gamma_inv;

# Pag.7
% Convert back to RGB and then display
image_histeq_rgb = hsv2rgb(image_histeq);
image_gamma_rgb = hsv2rgb(image_gamma);
figure; imshow(image_histeq_rgb)
title('Image histeq RGB')
figure; imshow(image_gamma_rgb)
title('Image gamma RGB')

# Pag.8
% Saturation analysis
figure; imshow(image_hsv(:,:,2)) % No much
information
title('Image HSV Saturation')
figure; imagesc(image_hsv(:,:,2))
title('Image HSV Saturation Magnitude')
colorbar ();
figure; imhist(image_hsv(:,:,2)) % No sense, no
color information
title('Image HSV Saturation Histogram')

# Pag.9
% Choose saturation percentage
perc_sat = 0.30;
% Decrease saturation channel on gamma
image
sat_add_gamma = image_gamma(:,:,2) .*
perc_sat;
image_gamma(:,:,2) = image_gamma(:,:,2) -
sat_add_gamma;

# Pag.10
figure; imagesc(image_gamma(:,:,2))
title('Image gamma Saturation - percentage
Magnitude')
colorbar ();

# Pag.11
% Convert back to RGB and then display
image_gamma_rgb = hsv2rgb(image_gamma);
figure; imshow(image_gamma_rgb)
title('Image gamma RGB after Saturation
decrease')

# Pag.12
% Display histograms of R, G and B channels
figure; imhist(image_gamma_rgb(:,:,1))
title('Histogram red channel')
figure; imhist(image_gamma_rgb(:,:,2))
title('Histogram green channel')
figure; imhist(image_gamma_rgb(:,:,3))
title('Histogram blue channel')

# Pag.13
% Create whitepatch.m
function output = whitepatch(image)
  tic
  %....NEXT slide
  toc
end

# Pag.14
% Between tic toc, insert
% Create output image
output = zeros(size(image));

max_im = max(max(image))
max_red = max_im(1)
max_green = max_im(2)
max_blue = max_im(3)

# Pag.15
image_whitepatch =
whitepatch(image_gamma_rgb);

# Pag.16
output(:,:,1) = image(:,:,1) ./ max_red;
output(:,:,2) = image(:,:,2) ./ max_green;
output(:,:,3) = image(:,:,3) ./ max_blue;

max(max(output))

# Pag.17
figure; imshow(image_whitepatch)
title('Image gamma RGB after whitepatch')
