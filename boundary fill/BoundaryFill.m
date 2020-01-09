function BoundaryFill(x,y,fill_color,boundary_color)
    global img
    global cnt
    %cnt=cnt+1
    if cnt>500
        %do nothing
    elseif x<=2 || x>=8 || y<=2 || y>=8
        %do nothing
    elseif img(x,y)==boundary_color
        %do nothing
    elseif img(x,y)==fill_color
        %do nothing
    else
        x
        y
        img(x,y)
        fill_color
        img(x,y)=fill_color;
        %figure, imshow(img);
        BoundaryFill(x+1,y,fill_color,boundary_color);
        BoundaryFill(x,y+1,fill_color,boundary_color);
        BoundaryFill(x-1,y,fill_color,boundary_color);
        BoundaryFill(x,y-1,fill_color,boundary_color);
    end
end