function FloodFill(x,y,fill_color,original_color)
    global img
    global cnt
    %cnt=cnt+1
    if cnt>500
        %do nothing
    elseif x<1 || x>10 || y<1 || y>10
        %do nothing
    elseif img(x,y)==original_color
        x
        y
        img(x,y)
        fill_color
        img(x,y)=fill_color;
        %figure, imshow(img);
        FloodFill(x+1,y,fill_color,original_color);
        FloodFill(x,y+1,fill_color,original_color);
        FloodFill(x-1,y,fill_color,original_color);
        FloodFill(x,y-1,fill_color,original_color);
    end
end