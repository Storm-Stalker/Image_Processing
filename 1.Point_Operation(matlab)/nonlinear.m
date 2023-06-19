% 非线性变换
close all;
clear;
clc;
I = imread('example.png');
I = rgb2gray(I);
G = double(I);
J = (log(G+1))/10;
figure
subplot(121),imshow(I);
subplot(122),imshow(J);