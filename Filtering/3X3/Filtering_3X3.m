img = imread('C:\Users\Moeez Ahmad\Pictures\Saved Pictures\backiee-112898.jpg');
gray_img = rgb2gray(img);
gray_double = double(gray_img);

[row, col] = size(gray_double);

filtered_img = zeros(row, col);

for x = 2: row -1
    for y = 2: col-1
        
        sample_img = gray_double(x-1: x+1, y-1: y+1);
        value = sum(sum(sample_img))/9;
        filtered_img(x, y)= value;
        
    end
end

imshow(filtered_img, []);