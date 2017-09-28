
h = imread('.jpg');  %Input your image here
[r,c] = size(h);
subplot(2,2,2)
imhist(h)
title('Original histogram')
subplot(2,2,1)
imshow(h)
title('Orignal image')
[counts,bin]=imhist(h);
f = zeros(256,1);
trans = zeros(256,1);
for k=1:1:256
    f(k)= counts(k)/(r*c);
    for j=1:1:k
        trans(k)= round((255*sum(f(1:k,1))));
    end
end
for i=1:1:r
    for j=1:1:c
        for a=0:1:255
            if (h(i,j)== a) 
                h(i,j)=trans(a+1,1);
                break
            end
        end
    end
end
subplot(2,2,4)
imhist(h)
title('Equalized histogram')
subplot(2,2,3)
imshow(h)
title('Transformed image')