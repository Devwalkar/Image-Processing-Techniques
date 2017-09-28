threshold = input('Enter the threshold value');
h = uint8(rgb2gray(imread('D12.jpg')));
[r,c] = size(h);
subplot(1,2,1)
imshow(h)
title('original image')
for i = 1:1:r
    for j =1:1:c
        if (h(i,j)>threshold)
            h(i,j)= 255;
        else
            h(i,j,:)=0;
        end
    end
end
subplot(1,2,2)
imshow(h)
title('Thresholded image')