
Original = double(imresize(imread('.jpg'),[512 512])); %Input your original histogram image here
Target = double(imresize(rgb2gray(imread('.jpg')),[512 512])); %Input your target histogram image here
[r1,c1] = size(Original);
[r2,c2] = size(Target);
subplot(1,3,1)
imhist(uint8(Original))
title('Original histogram')
subplot(1,3,2)
imhist(uint8(Target))
title('Target histogram')
[counts1,bin1]=imhist(uint8(Original));
f1 = counts1/(r1*c1);
trans1 = zeros(256,1);
for j=1:1:256
    trans1(j)= round((255*sum(f1(1:j))));
 end

[counts2,bin2]=imhist(uint8(Target));
f2 = counts2/(r2*c2);
trans2 = zeros(256,1);
    for j=1:1:256
        trans2(j)= round((255*sum(f2(1:j))));
    end
    
for a=1:1:256
    for b=0:1:255
         if trans1(a,1)==trans2(b+1,1)
            trans1(a,1)= b;
            break;
         end
    end
end

for i=1:1:r1
    for j=1:1:c1
        for a=0:1:255
            if (Original(i,j)== a) 
                Original(i,j)= trans1(a+1,1);
                break
            end
        end
    end
end               
subplot(1,3,3)
imhist(uint8(Original))                   
title('Matched histogram')
