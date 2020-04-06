clc;close all;clear all;
I=imread('lena.jpg');
I1 = fftshift(fft2(I));
[M,N] = size(I1);
n = 2;d1 = 100;d2 =  400 ; d3 = 1600;
n1 = floor(M/2);n2 = floor(N/2);
for i = 1:M
    for j = 1 :N
        d = sqrt((i-n1)^2 + (j-n2)^2);
        H1 = 1/(1+(d/d1)^(2*n));
        H2 = 1/(1+(d/d2)^(2*n));
        H3 = 1/(1+(d/d3)^(2*n));
        I2(i,j) = H1*I1(i,j);
        I3(i,j) = H2*I1(i,j);
        I4(i,j) = H3*I1(i,j);
    end
end
I2 = ifftshift(I2);
I3 = ifftshift(I3);
I4 = ifftshift(I4);
I22 =  real(ifft2(I2));
I33 = real(ifft2(I3));
I44 = real(ifft2(I4));
figure;
subplot(2,2,1),imshow(I),title('实验人：赵奕翔'),xlabel('原图像');  
subplot(2,2,2),imshow(I22,[]),title('实验人：赵奕翔'),xlabel('巴特沃斯低通滤波器平滑 sig^2 = 100');
subplot(2,2,3),imshow(I33,[]),title('实验人：赵奕翔'),xlabel('巴特沃斯低通滤波器平滑 sig^2 = 400');
subplot(2,2,4),imshow(I44,[]),title('实验人：赵奕翔'),xlabel('巴特沃斯低通滤波器平滑 sig^2 = 1600');
