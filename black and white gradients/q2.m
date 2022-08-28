% make a 2d array of values.
imageData=[]; % set up an empty array
imSize=100;
numRows=imSize;
numCols=imSize;

%populate using a nested loop
for row=[numRows:-1:1] % white to black, reverses
    imageRow=[]; %empty vector for row
    for col=[1:numCols]
        pixelVal=uint8((row)/(imSize*1.1)* 255); % make a pixel val in 0..255
        imageRow=[imageRow pixelVal];  %add value for  pixel
    end
    imageData=[imageData; imageRow]; % add row of pixels
end


% display as an image
imshow(imageData);

% save as an image
imwrite(imageData,'test2.png');

% load an image
newImageData=imread('test2.png');

% print information about what is stored in the variable
whos newImageData;