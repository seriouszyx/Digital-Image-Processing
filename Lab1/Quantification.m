clc;
close all;
clear all;
I=imread('face.jpg');
%量化%
I64=histeq(I,64);
I32=histeq(I,32);
I8=histeq(I,8);
%显示图像%
figure;
subplot(2,2,1),imshow(I),title('实验人：赵奕翔'),xlabel('(a) 512×512');
subplot(2,2,2),imshow(I64),title('实验人：赵奕翔'),xlabel('(b) 64×64');
subplot(2,2,3),imshow(I32),title('实验人：赵奕翔'),xlabel('(c) 32×32');
subplot(2,2,4),imshow(I8),title('实验人：赵奕翔'),xlabel('(d) 8×8');