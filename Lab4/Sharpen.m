clc;close all;clear all;
I=imread('lena.jpg');

K1=imfilter(I,fspecial('prewitt'),'replicate');
K2=imfilter(I,fspecial('sobel'),'replicate');
figure;
subplot(2,2,1),imshow(I),title('ʵ���ˣ�������'),xlabel('ԭͼ��');  
subplot(2,2,2),imshow(K1),title('ʵ���ˣ�������'),xlabel('prewitt ��');
subplot(2,2,3),imshow(K2),title('ʵ���ˣ�������'),xlabel('Sobel ��');
