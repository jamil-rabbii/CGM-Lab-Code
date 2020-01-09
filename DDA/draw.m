function draw(points1,points2,points3,points4)

    aa=max(points1);
    bb=max(points2);
    cc=max(points3);
    dd=max(points4);
    ee=[aa,bb,cc,dd];
    
    CSZ=max(ee)+10;
    
    cnvs=ones(CSZ);
    
    for i=1:size(points1,1)
        X=points1(i,1);
        Y=points1(i,2);
        cnvs(X,Y)=0;
    end
    
    for i=1:size(points2,1)
        X=points2(i,1);
        Y=points2(i,2);
        cnvs(X,Y)=0;
    end
    
    for i=1:size(points3,1)
        X=points3(i,1);
        Y=points3(i,2);
        cnvs(X,Y)=0;
    end
    
    for i=1:size(points4,1)
        X=points4(i,1);
        Y=points4(i,2);
        cnvs(X,Y)=0;
    end
    
    imshow(cnvs);
end