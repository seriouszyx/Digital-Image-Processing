clc;close all;clear all;
I = imread('figure51.jpg');

for i=1:512
    for j = 1 : 512
        J(i,j) = I(i,j) * 0.5 - 8;
    end
end
figure;
subplot(1,2,1),imshow(I),title('ʵ���ˣ�������'),xlabel('ԭͼ��');  
subplot(1,2,2),imshow(J),title('ʵ���ˣ�������'),xlabel('�Ҷ�����');
