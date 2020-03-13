clc;
close all;
clear all;
I = imread('cameraman.tif');
figure,subplot(2,3,1),imshow(I),title('实验人：赵奕翔'),xlabel('原图');
I1 = imrotate(I,30,'bilinear');
I2 = imrotate(I,60,'bilinear');
I3 = imrotate(I,90,'bilinear');
I4 = imrotate(I,135,'bilinear');
I5 = imrotate(I,180,'bilinear');
subplot(2,3,2),imshow(I1),title('实验人：赵奕翔'),xlabel('30度');
subplot(2,3,3),imshow(I2),title('实验人：赵奕翔'),xlabel('60度');
subplot(2,3,4),imshow(I3),title('实验人：赵奕翔'),xlabel('90度');
subplot(2,3,5),imshow(I4),title('实验人：赵奕翔'),xlabel('135度');
subplot(2,3,6),imshow(I5),title('实验人：赵奕翔'),xlabel('180度');
