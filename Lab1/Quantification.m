clc;
close all;
clear all;
I=imread('face.jpg');
%����%
I64=histeq(I,64);
I32=histeq(I,32);
I8=histeq(I,8);
%��ʾͼ��%
figure;
subplot(2,2,1),imshow(I),title('ʵ���ˣ�������'),xlabel('(a) 512��512');
subplot(2,2,2),imshow(I64),title('ʵ���ˣ�������'),xlabel('(b) 64��64');
subplot(2,2,3),imshow(I32),title('ʵ���ˣ�������'),xlabel('(c) 32��32');
subplot(2,2,4),imshow(I8),title('ʵ���ˣ�������'),xlabel('(d) 8��8');