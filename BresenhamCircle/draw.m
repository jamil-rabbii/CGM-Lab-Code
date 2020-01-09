function draw(points)
    CSZ=max(points)+100;
    cnvs=ones(CSZ);
    
    for i=1:size(points,1)
        X=points(i,1);
        Y=points(i,2);
        cnvs(X+20,Y+20)=0;
    end
    imshow(cnvs);
end