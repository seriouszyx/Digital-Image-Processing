clc;
close all;
clear all;
I=imread('lena.jpg');
I=im2double(I);
[m,n]=size(I);
T=dctmtx(8);
B=blkproc(I,[8 8],'P1*x*P2',T,T');
mask1= [1 1 1 1 1 0 0 0
        1 1 1 1 0 0 0 0
        1 1 1 0 0 0 0 0
        1 1 0 0 0 0 0 0
        1 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0];
mask2= [1 1 1 1 0 0 0 0
        1 1 1 1 0 0 0 0
        1 1 0 0 0 0 0 0
        1 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0];
mask3= [1 1 1 0 0 0 0 0
        1 1 1 0 0 0 0 0
        1 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0];
B1=blkproc(B,[8 8],'P1.*x',mask1);
I1=blkproc(B1,[8 8],'P1*x*P2',T',T);
B2=blkproc(B,[8 8],'P1.*x',mask2);
I2=blkproc(B2,[8 8],'P1*x*P2',T',T);
B3=blkproc(B,[8 8],'P1.*x',mask3);
I3=blkproc(B3,[8 8],'P1*x*P2',T',T);
f1=sum(sum((I1-I).^2))/(m*n);
f2=sum(sum((I2-I).^2))/(m*n);
f3=sum(sum((I3-I).^2))/(m*n);
disp(f1);disp(f2);disp(f3);
figure;
subplot(2,2,1),imshow(I,[]),title('实验人：赵奕翔'),xlabel('原图像');  
subplot(2,2,2),imshow(I1,[]),title('实验人：赵奕翔'),xlabel('用模板矩阵mark1经过压缩解压后的图像');  
subplot(2,2,3),imshow(I2,[]),title('实验人：赵奕翔'),xlabel('用模板矩阵mark2经过压缩解压后的图像');  
subplot(2,2,4),imshow(I3,[]),title('实验人：赵奕翔'),xlabel('用模板矩阵mark3经过压缩解压后的图像');
