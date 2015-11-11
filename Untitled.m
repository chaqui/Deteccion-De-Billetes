clc,clear all;
video= videoinput('winvideo',1);
preview(video);
pause(5);
img=getsnapshot(video);
closepreview(video);
delete(video);
img=imread('diezquetzales.jpg');
imshow(img)
%%eescala de grises 
I = rgb2gray(img);
threshold = graythresh(I);
bw = im2bw(I,threshold);
imshow(bw)
bw = bwareaopen(bw,30);
se = strel('disk',2);
bw = imclose(bw,se);
bw = imfill(bw,'holes');

imshow(bw)
[B,L] = bwboundaries(bw,'noholes');
imshow(label2rgb(L, @jet, [.5 .5 .5]))
hold on
for k = 1:length(B)
  boundary = B{k};
  plot(boundary(:,2), boundary(:,1), 'w', 'LineWidth', 2)
end