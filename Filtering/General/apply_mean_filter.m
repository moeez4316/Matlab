% Read and convert image to grayscale double
myimg = double(rgb2gray(imread('C:\Users\Moeez Ahmad\Pictures\Saved Pictures\backiee-120488.jpg'))); % Replace with your image

% Get the filter size from the user
filter_size = input('Enter the size of the filter (e.g., 3, 5, 7): ');
half_size = (filter_size - 1) / 2;

% Get image dimensions
[Rows, Cols] = size(myimg);

% Apply mean filter
for i = half_size + 1 : Rows - half_size
    for j = half_size + 1 : Cols - half_size
        temp = myimg(i - half_size : i + half_size, j - half_size : j + half_size);
        stemp = reshape(temp, 1, []); % Convert to a 1D array
        myValue = sum(stemp) / (filter_size^2); % Calculate the average
        myimg(i, j) = myValue;
    end
end

% Convert back to uint8 and display
myimg = uint8(myimg);
imshow(myimg);
