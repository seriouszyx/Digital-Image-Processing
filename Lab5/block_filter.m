clc;close all;clear all;
img2=imread('lenazhouqizaosheng.jpg');
figure,subplot(1,2,1),imshow(img2),title('实验人：赵奕翔'),xlabel('(a)lena周期噪声');
[M,N]=size(img2);
PF=fftshift(fft2(img2));
freq=95;
width=20;
ff=ones(M,N);
for i=1:M
    for j=1:N
        a=sqrt((i-M/2)^2+(j-N/2)^2)*width+eps;
        b=(i-M/2)^2+(j-N/2)^2-freq^2;
        ff(i,j)=1-exp(-0.5*(b/a)^2);
    end
end
out=PF.*ff;
out=ifftshift(out);
out=ifft2(out);
out=abs(out);
out=out/max(out(:));
subplot(1,2,2),imshow(out,[]),title('实验人：赵奕翔'),xlabel('(b)高斯带阻滤波效果图');
