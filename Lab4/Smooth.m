clc;close all;clear all;
I = imread('lena.jpg');
Q = imnoise(I,'gaussian',0,0.05);
w1 = imfilter(I,fspecial('average',3),'replicate');
w2 = imfilter(I,fspecial('average',5),'replicate');
figure;
subplot(2,2,1),imshow(I),title('实验人：赵奕翔'),xlabel('原图像');  
subplot(2,2,2),imshow(Q),title('实验人：赵奕翔'),xlabel('增加高斯噪声');
subplot(2,2,3),imshow(w1),title('实验人：赵奕翔'),xlabel('3 x 3 邻域滤波');
subplot(2,2,4),imshow(w2),title('实验人：赵奕翔'),xlabel('5 x 5 邻域滤波');

