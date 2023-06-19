% 图像镜像测试
close all;
clear;
clc;
I=imread('example.png');
J1=mirror(I,1); % 1水平、2垂直、3水平垂直
J2=mirror(I,2);
J3=mirror(I,3);
set(0,'defaultFigurePosition',[100,100,1000,500]);    % 修改图形图像位置的默认设置
set(0,'defaultFigureColor', [1 1 1])                  % 修改图形背景颜色的设置
figure,
subplot(221),imshow(I),axis on;
subplot(222),imshow(J1),axis on;
subplot(223),imshow(J2),axis on;
subplot(224),imshow(J3),axis on;