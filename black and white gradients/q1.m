% make a 2d array of values.
imageData=[]; % set up an empty array
imSize=100;
numRows=imSize;
numCols=imSize;

%populate using a nested loop
for row=[1:numRows] % black to white
    imageRow=[]; %empty vector for row
    for col=[1:numCols]
        pixelVal=uint8((row)/(imSize*1.1)* 255); % imSize*1.1 creates horizontal gradient
        imageRow=[imageRow pixelVal];  %add value for  pixel
    end
    imageData=[imageData; imageRow]; % add row of pixels
end


% display as an image
imshow(imageData);

% save as an image
imwrite(imageData,'test1.png');

% load an image
newImageData=imread('test1.png');

% print information about what is stored in the variable
whos newImageData;