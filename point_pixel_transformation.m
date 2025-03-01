img = imread ('C:/Users/Moeez Ahmad/Pictures/Saved Pictures/backiee-26335.jpg');

double_img = double(img);
gray_img = rgb2gray(img);
double_gray = double(gray_img);

% figure; imshow(img);
% figure; imshow(gray_img);

[row, col] = size(double_gray);

negative_img = zeros(row, col);
brighten_img = zeros(row, col);

for x = 1:1:row
    for y = 1:1:col
        
        negative_img(x, y) = 255 - double_gray(x, y);
        brighten_img(x, y) = min(double_gray(x, y) + 40, 255);
        
    end
end
figure; imshow(negative_img, []);
figure; imshow(brighten_img, []);

