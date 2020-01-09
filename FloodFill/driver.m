clc
global img;
img=zeros(10,10);
img(2,:)=1;
img(:,2)=1;
img(:,8)=1;
img(8,:)=1;
%img=mat2gray(img);
%[fn fp id]=uigetfile();
%img=imread(strcat(fp,fn));
figure, imshow(img);
global cnt;
cnt=1;
set(0,'RecursionLimit',50000);
FloodFill(3,3,1,0);
figure, imshow(img);
