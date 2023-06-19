% Ostu法阈值分割
close all;
clear;
clc;
I = imread('example.png');
I = rgb2gray(I);
I = im2double(I);
T = graythresh(I);
J = imbinarize(I,T);
figure
subplot(121),imshow(I);
subplot(122),imshow(J);