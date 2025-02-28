arr = [10 11 12 13; 14 15 16 17; 18 19 20 21];
arr (1:2:3, 3);
arr (1:1:3, 3:-1:1);

% Read the image
img = imread('C:\Users\Moeez Ahmad\Pictures\Saved Pictures\backiee-36257.jpg');

% Convert 8-bit values to decimal (It's already in decimal in MATLAB)
decimal_img = double(img);

% Convert to grayscale
gray_img = rgb2gray(img);

% Display the grayscale image
imshow(gray_img);
title('Grayscale Image');

