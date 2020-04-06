clc;close all;clear all;
I = imread('lena.jpg');
Q = imnoise(I,'gaussian',0,0.05);
w1 = imfilter(I,fspecial('average',3),'replicate');
w2 = imfilter(I,fspecial('average',5),'replicate');
figure;
subplot(2,2,1),imshow(I),title('ʵ���ˣ�������'),xlabel('ԭͼ��');  
subplot(2,2,2),imshow(Q),title('ʵ���ˣ�������'),xlabel('���Ӹ�˹����');
subplot(2,2,3),imshow(w1),title('ʵ���ˣ�������'),xlabel('3 x 3 �����˲�');
subplot(2,2,4),imshow(w2),title('ʵ���ˣ�������'),xlabel('5 x 5 �����˲�');

