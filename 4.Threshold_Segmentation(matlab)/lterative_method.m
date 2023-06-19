% 采用迭代式阈值进行图像分割
close all;
clear;
clc;
I=imread('example.png');
I = rgb2gray(I);
I=im2double(I);
% 设置参数T0,并选择一个初始的估计阈值T1
T0=0.01;
T1=(min(I(:))+max(I(:)))/2;
% 用阈值T1分割图像
r1=find(I>T1);
r2=find(I<=T1);
% 计算平均灰度值h1和h2及新的阈值T2
T2=(mean(I(r1))+mean(I(r2)))/2;
% 获取最优阈值
if abs(T2-T1)<T0
    J=imbinarize(I,T2);
else
    while abs(T2-T1)>=T0
        T1=T2;
        r1=find(I>T1);
        r2=find(I<=T1);
        T2=(mean(I(r1))+mean(I(r2)))/2;
    end
    J=imbinarize(I,T2);
end
figure
subplot(121),imshow(I);
subplot(122),imshow(J);