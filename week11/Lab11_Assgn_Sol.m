%Author: Karla Negrete
%UMBC ID: MQ31578
%Course: ENME 303
%Description: Lab Assignment 11 Solutions
clc, clear, close all

%% Prepare to work on the image
%* read the image
img = imread('e46.png');
% img = imread('retriever.png');

% get the dimensions of the image
[x, y, z] = size(img);
fprintf('dimension: %i, %i, %i\n\n', x, y, z);

R=zeros(x,y, 'uint8');
G=zeros(x,y, 'uint8');
B=zeros(x,y, 'uint8');

%% Shear transformation
%* shear transformation matrix
x_factor = 0;
y_factor = 1;
shear = [1 x_factor; y_factor 1]; 

for c=1:y     %* column index
    for r=1:x %* row index
        pxVal_1 =img(r, c, 1); 
        pxVal_2 =img(r, c, 2);
        pxVal_3 =img(r, c, 3);

        before =[c;r]
        after = shear * before
        col = after(1)
        row = after(2)
        break
%         display(row);
        R(row, col) = pxVal_1; %* 0 to 255
        G(row, col) = pxVal_2; %* 0 to 255
        B(row, col) = pxVal_3; %* 0 to 255
    end
end
A = cat(3, R, G, B); %*concatenate 3 channels together

imwrite(A, 'myImg.png')

