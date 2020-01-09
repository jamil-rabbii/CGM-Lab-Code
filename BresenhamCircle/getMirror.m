function [points] = Untitled1( ps )
    points=ps;
    sz=size(ps,1);
    k=sz+1;
    for i=1:sz
        x=ps(i,1);
        y=ps(i,2);
        points(k,:) = [x -y]; k=k+1;
        points(k,:) = [-x y]; k=k+1;
        points(k,:) = [-x -y]; k=k+1;
        points(k,:) = [y x]; k=k+1;
        points(k,:) = [y -x]; k=k+1;
        points(k,:) = [-y x]; k=k+1;
        points(k,:) = [-y -x]; k=k+1;
    end
end       