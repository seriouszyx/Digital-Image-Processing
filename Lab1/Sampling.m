clc; %���������%
close all; %�ر�ͼ��ͼ��%
clear all; %����������еı���%
I=imread('face.jpg'); %��ȡͼƬ%
%����%
I2=I(1:2:end,1:2:end); %ÿ2λ����1λ%
I3=I(1:4:end,1:4:end); %ÿ4λ����1λ%
I4=I(1:8:end,1:8:end); %ÿ8λ����1λ%
%��ʾͼ��%
figure;
subplot(2,2,1),imshow(I),title('ʵ���ˣ�������'),xlabel('(a) 512��512');
subplot(2,2,2),imshow(I2),title('ʵ���ˣ�������'),xlabel('(b) 256��256');
subplot(2,2,3),imshow(I3),title('ʵ���ˣ�������'),xlabel('(c) 128��128');
subplot(2,2,4),imshow(I4),title('ʵ���ˣ�������'),xlabel('(d) 64��64');