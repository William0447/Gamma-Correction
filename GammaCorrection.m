clc
clear
close all

i = imread('1.jpg');
if size(i,3)>1
	i = rgb2gray(i);
end
subplot(1,3,1); imshow(i);

r = (0:255)/255;
gamma = 0.3;
c = 1;

T = c*r.^gamma;
subplot(1,3,2); plot(r,T); axis square;

j = double(i);
for k=1:256
	j(j==k)=T(k);
end
subplot(1,3,3); imshow(j);