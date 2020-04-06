clc;close all;clear all;
I=imread('lena.jpg');

K1=imfilter(I,fspecial('prewitt'),'replicate');
K2=imfilter(I,fspecial('sobel'),'replicate');
figure;
subplot(2,2,1),imshow(I),title('实验人：赵奕翔'),xlabel('原图像');  
subplot(2,2,2),imshow(K1),title('实验人：赵奕翔'),xlabel('prewitt 锐化');
subplot(2,2,3),imshow(K2),title('实验人：赵奕翔'),xlabel('Sobel 锐化');
