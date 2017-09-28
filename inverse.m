h = uint8(rgb2gray(imread('.jpg'))); %Input your image here
[r,c]= size(h);
subplot(1,2,1)
imshow(h)
title('original image')
h = max(max(h))-h;
subplot(1,2,2)
imshow(h)
title('Inverse image')