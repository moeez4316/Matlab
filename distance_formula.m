
sizeX = 200;
sizeY = 200;
centerX = sizeX / 2;
centerY = sizeY / 2;
radius = 50;


euclideanShape = zeros(sizeX, sizeY);
cityblockShape = zeros(sizeX, sizeY);
chessboardShape = zeros(sizeX, sizeY);


for x = 1:sizeX
    for y = 1:sizeY
        dx = abs(x - centerX);
        dy = abs(y - centerY);
        
      
        if sqrt(dx^2 + dy^2) <= radius
            euclideanShape(x, y) = 1;
        end
        
       
        if (dx + dy) <= radius
            cityblockShape(x, y) = 1;
        end
        
     
        if max(dx, dy) <= radius
            chessboardShape(x, y) = 1;
        end
    end
end

figure;
subplot(1,3,1), imshow(euclideanShape), title('Euclidean (Circle)');
subplot(1,3,2), imshow(cityblockShape), title('City-Block (Diamond)');
subplot(1,3,3), imshow(chessboardShape), title('Chessboard (Square)');
