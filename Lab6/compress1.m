clc;
close all;
clear all;
I=imread('lena.jpg');
BW1=im2bw(I,0.2);
BW2=im2bw(I,0.4);
BW3=im2bw(I,0.6);
[zipped1,info1]=RLEencode(BW1);
unzipped1=RLEdecode(zipped1,info1);
disp(info1.ratio);
[zipped2,info2]=RLEencode(BW2);
unzipped2=RLEdecode(zipped2,info2);
disp(info2.ratio);
[zipped3,info3]=RLEencode(BW3);
unzipped3=RLEdecode(zipped3,info3);
disp(info3.ratio);
figure;
subplot(3,3,1),imshow(I,[]),title('ʵ���ˣ�������'),xlabel('ԭͼ��');  
subplot(3,3,2),imshow(BW1,[]),title('ʵ���ˣ�������'),xlabel('��1����ֵΪ0.2��ֵ�����ͼ��');  
subplot(3,3,3),imshow(uint8(unzipped1)*255,[]),title('ʵ���ˣ�������'),xlabel('�ԣ�1�������γ̱��������ͼ��');  
subplot(3,3,4),imshow(I,[]),title('ʵ���ˣ�������'),xlabel('ԭͼ��');  
subplot(3,3,5),imshow(BW2,[]),title('ʵ���ˣ�������'),xlabel('��2����ֵΪ0.4��ֵ�����ͼ��');  
subplot(3,3,6),imshow(uint8(unzipped2)*255,[]),title('ʵ���ˣ�������'),xlabel('�ԣ�2�������γ̱��������ͼ��');  
subplot(3,3,7),imshow(I,[]),title('ʵ���ˣ�������'),xlabel('ԭͼ��');  
subplot(3,3,8),imshow(BW3,[]),title('ʵ���ˣ�������'),xlabel('��3����ֵΪ0.6��ֵ�����ͼ��');  
subplot(3,3,9),imshow(uint8(unzipped3)*255),title('ʵ���ˣ�������'),xlabel('�ԣ�3�������γ̱��������ͼ��'); 


function [zipped,info]=RLEencode(vector)
[m,n]=size(vector);
vector=uint8(vector(:));
L=length(vector);
c=vector(1);
e(1,1)=double(c);
e(1,2)=0;
t1=1;
for j=1:L
    if (vector(j)==c)
       e(t1,2)=e(t1,2)+1;
    else
       c=vector(j);
       t1=t1+1;
       e(t1,1)=double(c);
       e(t1,2)=1;
    end
end
zipped=e;
info.rows=m;
info.cols=n;
[m,n]=size(e);
info.ratio=(info.rows*info.cols)/(m*n);
end

function unzipped=RLEdecode(zip,info)
[m,n]=size(zip);
unzipped=[];
for i=1:m
    section=repmat(uint8(zip(i,1)),1,zip(i,2));
    unzipped=[unzipped section];
end
unzipped=reshape(unzipped,info.rows,info.cols);
end
