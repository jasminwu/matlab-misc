% make a 2d array of values.
imageData=[]; % set up an empty array
imSize=100;
numRows=imSize;
numCols=imSize;

%populate using a nested loop
for row=[1:numRows]
    imageRow=[]; %empty vector for row
    for col=[1:numCols]
        % using col as var creates vertical gradient
        pixelVal=uint8((col)/(imSize*1.1)* 255); % make a pixel val in 0..255, 
        imageRow=[imageRow pixelVal];  %add value for  pixel
    end
    imageData=[imageData; imageRow]; % add row of pixels
end


% display as an image
imshow(imageData);

% save as an image
imwrite(imageData,'test3.png');

% load an image
newImageData=imread('test3.png');

% print information about what is stored in the variable
whos newImageData;