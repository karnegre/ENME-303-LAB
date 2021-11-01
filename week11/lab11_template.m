%* ========== ========== ==========
%* Author: 　　　Roy Wu
%* Description: shear transformation
%* History:     11/01/2021 initial version 
%* Instruction: This m file is NOT runnable
%*              It serves as a cornerstone of the lab11
%*              Contact Dr. Wu if you have any questions 
%*                             
%* ========== ========== ==========

%% Prepare to work on the image
%* read the image
img = 

% get the dimensions of the image
[x, y, z] = size(img);
fprintf('dimension: %i, %i, %i\n\n', x, y, z);

R=zeros(x,y, 'uint8');
G=zeros(x,y, 'uint8');
B=zeros(x,y, 'uint8');

%% Shear transformation
%* shear transformation matrix
x_factor =
y_factor =
shear = 

for c=1:y     %* column index
    for r=1:x %* row index
        pxVal_1 =img(r, c, 1); 
        pxVal_2 =img(r, c, 2);
        pxVal_3 =img(r, c, 3);

        R(row, col) = pxVal_1; %* 0 to 255
        G(row, col) = pxVal_2; %* 0 to 255
        B(row, col) = pxVal_3; %* 0 to 255
    end
end

%*concatenate 3 channels together
A = cat(3, R, G, B); 

%* Update the file name with your real name
imwrite(A, 'file_name.png')

