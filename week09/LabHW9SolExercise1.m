%ENME 303 
%Home->layout->default
%Author: Karla Negrete
%Lab HW9 Solutions. Exercise 1
clc, clear all

%% Exercise 1: Matrix Transpose-Part 1

%The transpose of a matrix is the swap of row and col

X = input('Enter your matrix X (in brackets): \n')
%[1 4; 9 3; 8 1]

[num_row, num_col]=size(X);
NewX=zeros(num_col,num_row);

for i=1:num_col
    for j=1:num_row
        NewX(i,j)=X(j,i);
    end
end
fprintf('Transposed matrix is\n')
disp(NewX)

%% Exercise 1: Matrix Transpose-Part 2
%The transpose of a matrix is the swap of row and col
%Putting script into user-defined function

X = input('Enter your matrix X (in brackets): \n')
%[1 4; 9 3; 8 1]
[num_row, num_col]=size(X);
NewX=zeros(num_col,num_row);

X_out = matTran(X,NewX,num_col,num_row); %1 output and 3 inputs
fprintf('Transposed matrix is\n')
disp(X_out)

function [dumb_out_X] = matTran(dumb_in_X,dumb_in_NewX,col,row)
for i=1:col
    for j=1:row
        dumb_in_NewX(i,j)=dumb_in_X(j,i);
    end
end
dumb_out_X= dumb_in_NewX;
end

