clc
Ax=5;Ay=6;
Bx=11;By=9;
Cx=max(Ax,Bx); Cy=min(Ay,By);
Dx=min(Ax,Bx); Dy=max(Ay,By);

L1=BresenhamLine(Ax,Ay,Cx,Cy);
L2=BresenhamLine(Ax,Ay,Dx,Dy);
L3=BresenhamLine(Bx,By,Cx,Cy);
L4=BresenhamLine(Bx,By,Dx,Dy);


draw(L1,L2,L3,L4);