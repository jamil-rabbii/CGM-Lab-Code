function [points]=BresenhamLine(x1,y1,x2,y2)
    clc
    i=1; points=zeros(1000,2); %For saving coordinates
    x=x1;y=y1;
    dx=x2-x1; dy=y2-y1;
    dT=2*(dy-dx); dS=2*dy;
    d=dS-dx;
    points(i,:) = [x y]; i=i+1; %Setting pixel at points array
    while x<x2
        x=x+1;
        if d<0
            d=d+dS;
        else
            y=y+1;
            d=d+dT;
        end
        points(i,:)=[x y]; i=i+1; %Setting pixel
    end
    points=points(1:i-1,:);
end  