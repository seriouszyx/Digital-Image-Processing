clc,close all,clear all;
I3=imread('face.jpg');
[M,N]=size(I3);
figure,subplot(4,2,1),imshow(I3),title('实验人：赵奕翔'),xlabel('face原图');
I3=im2double(I3);
%生成标准DCT变化中的矩阵(8x8)
n=8;[cc,rr]=meshgrid(0:n-1);
C=sqrt(2/n)*cos(pi*(2*cc+1).*rr/(2*n));
C(1,:)=C(1,:)/sqrt(2);
%光亮度量化表
a=[16 11 10 16 24 40 51 61;
   12 12 14 19 26 58 60 55;
   14 13 16 24 40 57 69 56;
   14 17 22 29 51 87 80 62;
   18 22 37 56 68 109 103 77;
   24 35 55 64 81 104 113 92;
   49 64 78 87 103 121 120 101;
   72 92 95 98 112 100 103 99];
%分块做DCT变换(8x8)，DCT变换公式：正变换：Y=CIC';
for i=1:8:M
    for j=1:8:N
        P=I3(i:i+7,j:j+7);
        K=C*P*C';
        I4(i:i+7,j:j+7)=K;
        K5=K./a;
        K5(abs(K5)<0.01)=0;
        I5(i:i+7,j:j+7)=K5;
        K6=K./a;
        K6(abs(K6)<0.03)=0;
        I6(i:i+7,j:j+7)=K6;
        K7=K./a;
        K7(abs(K7)<0.05)=0;
        I7(i:i+7,j:j+7)=K7;
    end
end
subplot(4,2,2),imshow(I4),title('实验人：赵奕翔'),xlabel('DCT变化后的频域图像');
subplot(4,2,3),imshow(I5),title('实验人：赵奕翔'),xlabel('舍掉的变换系数小于0.01量化后的频域图像');
subplot(4,2,5),imshow(I6),title('实验人：赵奕翔'),xlabel('舍掉的变换系数小于0.03量化后的频域图像');
subplot(4,2,7),imshow(I7),title('实验人：赵奕翔'),xlabel('舍掉的变换系数小于0.05量化后的频域图像');
for i=1:8:M
    for j=1:8:N
        P=I5(i:i+7,j:j+7).*a;
        K=C'*P*C;
        I8(i:i+7,j:j+7)=K;
        P=I6(i:i+7,j:j+7).*a;
        K=C'*P*C;
        I9(i:i+7,j:j+7)=K;
        P=I7(i:i+7,j:j+7).*a;
        K=C'*P*C;
        I10(i:i+7,j:j+7)=K;
    end
end
subplot(4,2,4),imshow(I8),title('实验人：赵奕翔'),xlabel('舍掉的变换系数小于0.01复原图像');
subplot(4,2,6),imshow(I9),title('实验人：赵奕翔'),xlabel('舍掉的变换系数小于0.03复原图像');
subplot(4,2,8),imshow(I10),title('实验人：赵奕翔'),xlabel('舍掉的变换系数小于0.05复原图像');
