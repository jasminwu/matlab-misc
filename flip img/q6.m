% import kand img
kand = imread('Kand.png');
% find dimensions of kand & store
[numRows numCols] = size(kand);

% initalise empty matrix
kandFlipped = [];

% flip using a nested loop
for row = [numRows:-1:1] 
    kandFlipRow = []; %empty vector for row
    for col = [numCols:-1:1]
        pixelFlip = kand(row, col);
        kandFlipRow = [kandFlipRow pixelFlip];  %flip each pixel
    end
    kandFlipped = [kandFlipped; kandFlipRow]; % add row of pixels
end

% display as an image
imshow(kandFlipped);

% save as an image
imwrite(kandFlipped,'KandFlipped.png');

% load an image
newImageData=imread('KandFlipped.png');