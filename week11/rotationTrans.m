%* ========== ========== ==========
%* Author: 　　　Roy Wu
%* Description: rotation transformation sample code, lab example
%* History:     10/26/2021 initial version 
%*              10/31/2021 handling MATLAB's image coordinate system
%* ========== ========== ==========
%% Prepare to work on the image
%* read the image
img = imread('e46.png');
% img = imread('retriever.png');

% get the dimensions of the image
[x, y, z] = size(img);
fprintf('dimension: %i, %i, %i\n', x, y, z);

%* zerom matrices for 3 different layers
R = zeros(x,y, 'uint8'); %* 0 to 255
G = zeros(x,y, 'uint8');
B = zeros(x,y, 'uint8');

%% Rotation Transformation
th = 180; %* angle of rotation

for c=1:y     %* column index
    for r=1:x %* row index
        pxVal_1 = img(r, c, 1);
        pxVal_2 = img(r, c, 2);
        pxVal_3 = img(r, c, 3);
        
        before = [c; r];
        Rot    = [cosd(th) -sind(th); sind(th) cosd(th)];
        after  = Rot* before; %* coordinate transformation
        
        %* shift indices to match MATLAB's image coordinate system 
        col = after(1)+x+1;
        row = after(2)+x+1;
%          display(row);
        
        %* assign the pixel value to the new pixel indices
        R(row, col) = pxVal_1; 
        G(row, col) = pxVal_2; 
        B(row, col) = pxVal_3; 
    end
end

%*concatenate 3 channels together
A = cat(3, R, G, B); 

%* write the image to file
imwrite(A, 'myImg.png')