clc;
close all;
clear all;
I=imread('lenagray.jpg');
I=im2double(I);
figure(1);subplot(1, 4, 1);
imshow(I); title('实验人：赵奕翔');xlabel('原图');
a=1.5; b=50;    % 增加对比度
O = a .* I + b/255;
figure(1);subplot(1, 4, 2);
imshow(O);title('实验人：赵奕翔');xlabel('a=1.5,b=50');
a=0.3;b=50;     %减小对比度
O = a .* I + b/255;
figure(1);subplot(1, 4, 3);imshow(O);
title('实验人：赵奕翔');xlabel('a=0.3,b=50');
a=-1;b=50;      % 线性增加亮度
O = a .* I + b/255;
figure(1);subplot(1, 4, 4);imshow(mat2gray(O));
title('实验人：赵奕翔');xlabel('a=-1,b=50');