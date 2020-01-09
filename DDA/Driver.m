 clc
Ax=5;Ay=5;
Bx=100;By=100;
Cx=max(Ax,Bx) 
Cy=min(Ay,By)
Dx=min(Ax,Bx)
Dy=max(Ay,By)

L1=DDA(Ax,Ay,Dx,Dy);
L2=DDA(Ax,Ay,Cx,Cy);
L3=DDA(Dx,Dy,Bx,By);
L4=DDA(Cx,Cy,Bx,By);


draw(L1,L2,L3,L4);