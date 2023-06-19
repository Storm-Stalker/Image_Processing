% 图像旋转测试
close all;
clear;
clc;
I=imread('example.png');
J1=imrotate(I,30); % 设置旋转角度,大于0是逆时针,小于0是顺时针。
J2=imrotate(I,-60);
J3=imrotate(I,30,'bicubic','crop'); % 设置输出图像大小，双线性插值
J4=imrotate(I,45,'bicubic','loose'); % 图像足够大，包括旋转图像
set(0,'defaultFigurePosition',[100,100,1000,500]);    % 修改图形图像位置的默认设置
set(0,'defaultFigureColor', [1 1 1])                  % 修改图形背景颜色的设置
figure,
subplot(221),imshow(J1);
subplot(222),imshow(J2);
subplot(223),imshow(J3);
subplot(224),imshow(J4);