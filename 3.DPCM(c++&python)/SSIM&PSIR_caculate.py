# SSIM & PSNR计算
from skimage.metrics import structural_similarity as SSIM
from skimage.metrics import peak_signal_noise_ratio as PSNR
import cv2
import numpy as np

img_origin = cv2.imread('origin.jpg')
img_8bit = cv2.imread('reconstruction_8bit.jpg')
img_4bit = cv2.imread('reconstruction_4bit.jpg')
img_2bit = cv2.imread('reconstruction_2bit.jpg')
img_1bit = cv2.imread('reconstruction_1bit.jpg')

img_8bit = np.resize(img_8bit, (img_origin.shape[0], img_origin.shape[1], img_origin.shape[2]))
img_4bit = np.resize(img_4bit, (img_origin.shape[0], img_origin.shape[1], img_origin.shape[2]))
img_2bit = np.resize(img_2bit, (img_origin.shape[0], img_origin.shape[1], img_origin.shape[2]))
img_1bit = np.resize(img_1bit, (img_origin.shape[0], img_origin.shape[1], img_origin.shape[2]))

ssim_8bit = SSIM(img_origin, img_8bit, multichannel=True)
psnr_8bit = PSNR(img_origin, img_8bit)
print(f'ssim_8bit={ssim_8bit} , psnr_8bit={psnr_8bit}')
ssim_4bit = SSIM(img_origin, img_4bit, multichannel=True)
psnr_4bit = PSNR(img_origin, img_4bit)
print(f'ssim_4bit={ssim_4bit} , psnr_4bit={psnr_4bit}')
ssim_2bit = SSIM(img_origin, img_2bit, multichannel=True)
psnr_2bit = PSNR(img_origin, img_2bit)
print(f'ssim_2bit={ssim_2bit} , psnr_2bit={psnr_2bit}')
ssim_1bit = SSIM(img_origin, img_1bit, multichannel=True)
psnr_1bit = PSNR(img_origin, img_1bit)
print(f'ssim_1bit={ssim_1bit} , psnr_1bit={psnr_1bit}')