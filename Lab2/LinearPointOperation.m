clc;
close all;
clear all;
I=imread('lenagray.jpg');
I=im2double(I);
figure(1);subplot(1, 4, 1);
imshow(I); title('ʵ���ˣ�������');xlabel('ԭͼ');
a=1.5; b=50;    % ���ӶԱȶ�
O = a .* I + b/255;
figure(1);subplot(1, 4, 2);
imshow(O);title('ʵ���ˣ�������');xlabel('a=1.5,b=50');
a=0.3;b=50;     %��С�Աȶ�
O = a .* I + b/255;
figure(1);subplot(1, 4, 3);imshow(O);
title('ʵ���ˣ�������');xlabel('a=0.3,b=50');
a=-1;b=50;      % ������������
O = a .* I + b/255;
figure(1);subplot(1, 4, 4);imshow(mat2gray(O));
title('ʵ���ˣ�������');xlabel('a=-1,b=50');