%三种情况维纳滤波 (matlab)
close all;
clear;
clc;

f=checkerboard(8);
f=im2double(f); 
imshow(pixeldup(f,8),[ ]);

PSF=fspecial('motion',7,45); %参数len=7 theta=-45度
gb=imfilter(f,PSF,'circular');
gb=im2double(gb);
imshow(pixeldup(gb,8),[ ]);

noise=imnoise(zeros(size(f)),'gaussian',0,0.001); %噪声
imshow(pixeldup(noise,8),[ ]);

g=gb+noise;
imshow(pixeldup(g,8),[ ]); %得到模糊噪声图像

fr1=deconvwnr(g,PSF);
figure;
imshow(pixeldup(fr1,8),[ ]); %(一)信噪比未知

Sn=abs(fft2(noise)).^2;
nA=sum(Sn(:))/numel(noise);
Sf=abs(fft2(f)).^2;
fA=sum(Sf(:))/numel(f); 
R=nA/fA; 
fr2=deconvwnr(g,PSF,R); 
figure;
imshow(pixeldup(fr2,8),[ ]); %(二)信噪比已知

NCORR=fftshift(real(ifft2(Sn)));
ICORR=fftshift(real(ifft2(Sf)));
fr3=deconvwnr(g,PSF,NCORR,ICORR);
figure;
imshow(pixeldup(fr3,8),[ ]); %(三)自相关函数已知

