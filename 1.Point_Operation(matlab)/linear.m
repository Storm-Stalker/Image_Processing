% 线性变换(imadjust函数实现)
close all;
clear;
clc;
I = imread('example.png');
I = rgb2gray(I);
J = imadjust(I,[0,1],[0.4 1],1);
figure
subplot(121),imshow(I);
subplot(122),imshow(J);
