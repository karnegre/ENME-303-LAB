%Author: Karla Negrete
%UMBC ID: MQ31578
%Course: ENME 303
%Description: Lab Assignment 7 Solutions
clc, clear, close all 

%% Matrix Inverse
% For matrix to be invertible, it must:
%1.Be square
%2.det ~= 0
    
    X = input('Enter your matrix X (in brackets): \n')
    %[1 4 5; 9 9 3; 1 8 1]
    [num_row, num_col]=size(X);
    
    if (isequal(num_row,num_col) && det(X)~=0)
        InvX=inv(X);
        fprintf('The inverse of X is:\n')
        disp(InvX)
    end
    
    %Check if InvX is correct
    
    if isequal(round(X*InvX),eye(num_row))
        fprintf('Correct\n')
    end

