% make a 2d array of values.
imageData=[]; % set up an empty array
imSize=100;
numRows=imSize;
numCols=imSize;

%populate using a nested loop
for row=[numRows:-1:1]
    imageRow=[]; %empty vector for row
    for col=[1:numCols]
        % use distance btwn 2 points formula to find distance from centre
        pixelVal = uint8(sqrt((col-50)^2+(row-50)^2)/(imSize*0.68)* 255); 
        imageRow=[imageRow pixelVal];  %add value for  pixel
    end
    imageData=[imageData; imageRow]; % add row of pixels
end


% display as an image
imshow(imageData);

% save as an image
imwrite(imageData,'test5.png');

% load an image
newImageData=imread('test5.png');

% print information about what is stored in the variable
whos newImageData;