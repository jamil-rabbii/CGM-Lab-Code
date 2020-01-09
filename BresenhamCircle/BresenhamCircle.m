function [points]=BresenhamCircle(r)
    clc
    i=1; points=zeros(1000,2); %For saving coordinates
    x=0;y=r;
    d=3-2*r;
    while x<=y
        %[x,y]
        points(i,:) = [x y]; i=i+1; %Setting pixel at points array
        if d<0
            d=d+4*x+6;
        else
            d=d+4*(x-y)+10;
            y=y-1;
        end
        x=x+1;
    end
    points=points(1:i-1,:);
end  