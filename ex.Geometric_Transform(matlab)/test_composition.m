% 图像复合操作测试
close all;
clear;
clc;
I=imread('example.png');
a=50;b=50;
II=move(I,a,b);
III=mirror(II,1); % 水平镜像
IIII=imrotate(III,30); % 逆时针30度
set(0,'defaultFigureColor', [1 1 1]) % 修改图形背景颜色的设置
figure,
imshow(IIII);