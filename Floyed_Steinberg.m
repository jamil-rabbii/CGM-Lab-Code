clc
%[n p i]=uigetfile('*.jpg');
%RGB=strcat(p,n);
RGB=imread('C:\Users\Public\Pictures\Sample Pictures\Koala.jpg');

IG=RGB(:,:,3);
figure, imshow(IG)
[W H]=size(IG)
a=7/16;b=3/16;c=5/16;d=1/16;
level=255;
S=IG;
for x= 1:W
    for y=1:H
        e=S(x,y)-round((level*S(x,y)/255)*255/level);
        S(x,y)=(round(level*S(x,y)/255)*255/level);
        if x<W
            S(x+1,y)=S(x+1,y) + a*e;
        end
        if  x>1 & y>1
            S(x-1,y-1)=S(x-1,y-1) +b*e;
        end
        if y>1
            S(x,y-1)=S(x,y-1)+c*e;
        end
        if x<W & y>1
            S(x+1,y-1)=S(x+1,y-1)+d*e;
        end
    end
end
figure, imshow(S)