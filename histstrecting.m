h= imread('f1.jpg');
[r,c]=size(h);
subplot(1,2,1)
imhist(h)
title('Original histogram')
[counts,bin]=imhist(h);
Max = max(h(:));
Min = min(h(:));
mid = (Max+Min)/2;
fourth = (Min+mid)/2;
threef = (Max+mid)/2;
for i=1:1:r
    for j=1:1:c
        if h(i,j)== Min
            h(i,j)= 0;
        elseif h(i,j)==Max
            h(i,j)=255;
        elseif (h(i,j)<=fourth)&&(h(i,j)>Min)
            h(i,j)=round(h(i,j)*2)-140;
        elseif (h(i,j)>threef)&&(h(i,j)<Max)
            h(i,j) = round(h(i,j)*1.5);
        else
            h(i,j) = (h(i,j)*2)-90;
        end
    end
end
subplot(1,2,2)
imhist(h)
title('Stretched histogram')
            
            