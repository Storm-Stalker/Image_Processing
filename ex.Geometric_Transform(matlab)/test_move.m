% 图像平移测试
close all;
clear;
clc;

I=imread('example.png');
a=50;b=50;
J1=move(I,a,b);
a=-50;b=50;
J2=move(I,a,b);
a=50;b=-50;
J3=move(I,a,b);
a=-50;b=-50;
J4=move(I,a,b);
set(0,'defaultFigurePosition',[100,100,1000,500]);    % 修改图形图像位置的默认设置
set(0,'defaultFigureColor', [1 1 1])                  % 修改图形背景颜色的设置
figure,
subplot(221),imshow(J1),axis on;
subplot(222),imshow(J2),axis on;
subplot(223),imshow(J3),axis on;
subplot(224),imshow(J4),axis on;