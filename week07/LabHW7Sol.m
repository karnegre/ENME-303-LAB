%ENME 303 
%Home->layout->default
%Author: Karla Negrete
%Lab HW7 Solutions
clc, clear all

%% Exercise 1: Matrix Transpose
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

%% Exercise: Matrix Determinant Checker
    X = input('Enter your matrix X (in brackets): \n')
    %[1 4 5; 9 9 3; 1 8 1]
    [num_row, num_col]=size(X);
    
    if (isequal(num_row,num_col))
        if isequal(num_col,1)
            Detmath=X;
            fprintf('The determinant of matrix X is:\n')
            disp(Detmath)
        elseif isequal(num_col,2)
            Detmath=(X(1,1)*X(2,2))-(X(1,2)*X(2,1));
            fprintf('The determinant of matrix X is:\n')
            disp(Detmath)
        elseif isequal(num_col,3)
            Detmath=(X(1,1)*X(2,2)*X(3,3))+(X(1,2)*X(2,3)*X(3,1))+(X(1,3)*X(2,1)*X(3,2))-(X(1,3)*X(2,2)*X(3,1))-(X(1,2)*X(2,1)*X(3,3))-(X(1,1)*X(2,3)*X(3,2));
            fprintf('The determinant of matrix X is:\n')
            disp(Detmath)
        end
        if isequal(round(det(X)),Detmath)
            fprintf('Your determinant math is correct\n')
        else
            fprintf('Check your equations\n')
        end
    else
            fprintf("Matrix must be square\n")
    end
