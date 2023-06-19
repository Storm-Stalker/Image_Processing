% 分段灰度变换
close all;
clear;
clc;
I = imread('example.png');
I = rgb2gray(I);
[M,N] = size(I);
J = zeros(M,N);
% 设定分段点坐标
x1=130;
y1=50;
x2=150;
y2=200;

for x=1:M
	for y=1:N
		if(I(x,y)<=x1)
			J(x,y) = y1/x1*I(x,y);
        end
		if(I(x,y)>x1 && I(x,y)<=x2)
			J(x,y) = (y2-y1)*(I(x,y)-x1)/(x2-x1)+y1;
        end
        if(I(x,y)>x2)
			J(x,y) = (255-y2)*(I(x,y)-x2)/(255-x2)+y2;
        end
	end
end
J = uint8(J);
figure
subplot(121),imshow(I);
subplot(122),imshow(J);
