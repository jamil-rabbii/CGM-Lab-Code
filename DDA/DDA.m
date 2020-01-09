function [points]=DDA(x1,y1,x2,y2)
    %clc
    i=1; points=zeros(1000,2); %For saving coordinates
    x=x1;y=y1;
    m=(y2-y1)/(x2-x1)
    points(i,:) = [x y]; i=i+1; %Setting pixel at points array
    while m<=1 & x<x2
        x=x+1;
        y=y+m;
        points(i,:)=[x y]; i=i+1; %Setting pixel
    end
    while m>1 & y<y2
        y=y+1;
        x=x+(1/m);
        points(i,:)=[x y]; i=i+1; %Setting pixel
    end
    points=points(1:i-1,:);
end  