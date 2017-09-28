h = double(imresize(rgb2gray(imread('.jpg')),[700 600])); %Input your image here
y = input('Enter the power law to be applied ');  
[r,c]=size(h);
subplot(1,2,1)
imshow(uint8(h))
title('original image')
h = h.^y;
h=round((255/max(max(h))).*h);
subplot(1,2,2)
imshow(uint8(h))
title('Transformed image')