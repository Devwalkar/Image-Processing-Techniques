R = input('Enter the graylevel region');
h = uint8(rgb2gray(imread('D3.jpg')));
[r,c] = size(h);
subplot(1,2,1)
imshow(h)
title('Original image')
for i = 1:1:r
    for j =1:1:c
        if (h(i,j)>=R(1))&&(h(i,j)<=R(2))
            h(i,j)= 255;
        else
            h(i,j)=0;
        end
    end
end
subplot(1,2,2)
imshow(h)
title('Graylevel Sliced image')