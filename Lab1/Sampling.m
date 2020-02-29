clc; %清楚命令行%
close all; %关闭图形图像%
clear all; %清楚工作区中的变量%
I=imread('face.jpg'); %读取图片%
%采样%
I2=I(1:2:end,1:2:end); %每2位采样1位%
I3=I(1:4:end,1:4:end); %每4位采样1位%
I4=I(1:8:end,1:8:end); %每8位采样1位%
%显示图像%
figure;
subplot(2,2,1),imshow(I),title('实验人：赵奕翔'),xlabel('(a) 512×512');
subplot(2,2,2),imshow(I2),title('实验人：赵奕翔'),xlabel('(b) 256×256');
subplot(2,2,3),imshow(I3),title('实验人：赵奕翔'),xlabel('(c) 128×128');
subplot(2,2,4),imshow(I4),title('实验人：赵奕翔'),xlabel('(d) 64×64');