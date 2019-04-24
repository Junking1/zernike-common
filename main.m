clc; clear all; close all;
set(gcf,'color','white')



I = imread('jun_pic.tif');
I = im2double(I);


F=Reconstruction(I,8);

F= F./(max(max(F)));
imwrite(F,'recon_tiffany.tif');
figure(1)
imshow(F,[]);




NMSE = jun_NMSE(I ,F);
