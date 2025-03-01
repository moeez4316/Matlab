% Read and convert image to grayscale double
img = double(rgb2gray(imread('C:\Users\Moeez Ahmad\Pictures\Saved Pictures\backiee-120403.jpg')));

% Get image size
[row, col] = size(img);
binary_img = zeros(row, col);

% Thresholding operation
for x = 1:row
    for y = 1:col
        if img(x, y) > 128
            binary_img(x, y) = 1; % Set pixel to white
        end
    end
end

% Display the binary image
imshow(binary_img, []);
