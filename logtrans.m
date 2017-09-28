h = double(imresize(rgb2gray(imread('.jpg')),[500 400])); %Input your image here
[r,c]=size(h);
subplot(1,2,1)
imshow(uint8(h))
title('original image')
for i = 1:1:r
    for j =1:1:c
        h(i,j)= 40*log(1+h(i,j));
    end
end
h = round((255/max(max(h))).*h);
subplot(1,2,2)
imshow(uint8(h))
title('Transformed image')