%Author: Karla Negrete
%UMBC ID: MQ31578
%Course: ENME 303
%Description: Lab Assignment 9 Solutions
clc, clear, close all 

%% Exercise 1: Matrix Transpose
%The transpose of a matrix is the swap of row and col

    X = input('Enter your matrix X (in brackets): \n')
    %[1 4; 9 3; 8 1]
    
    [num_row, num_col]=size(X);
    NewX=zeros(num_col,num_row);
    
    Grader_input=input('Grading Part 1 or Part 2\n', 's');
    
    if isequal(Grader_input,'1')
        for i=1:num_col
            for j=1:num_row
                NewX(i,j)=X(j,i);
            end
        end
        fprintf('Transposed matrix is\n')
        disp(NewX)
    elseif isequal(Grader_input,'2')
        X_out = matTran(X,NewX,num_col,num_row); %1 output and 3 inputs
        fprintf('Transposed matrix is\n')
        disp(X_out)
    end

%% Exercise 2: Matrix Determinant Checker

    X = input('Enter your matrix X (in brackets): \n')
    %[1 4 5; 9 9 3; 1 8 1]
    [num_row, num_col]=size(X);
    
    Grader_input=input('Grading Part 1 or Part 2\n', 's');
    
    if isequal(Grader_input,'1')
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
                Detmath=(X(1,1)*X(2,2)*X(3,3))+(X(1,2)*X(2,3)*X(3,1))...
                       +(X(1,3)*X(2,1)*X(3,2))-(X(1,3)*X(2,2)*X(3,1))...
                       -(X(1,2)*X(2,1)*X(3,3))-(X(1,1)*X(2,3)*X(3,2));
                fprintf('The determinant of matrix X is:\n')
                disp(Detmath)
            end
            if isequal(round(det(X)),Detmath)
                fprintf('Your determinant math is correct\n')
            else
                fprintf('Check your equations\n')
            end
        else
                fprintf('Matrix must be square\n')
        end
    elseif isequal(Grader_input,'2')
        detFunc(X,num_row, num_col) %no output, just 3 inputs
    end 

%% Func Lib
    %Exercise 1: Matrix Transpose-Part 2
    function [out_X] = matTran(in_X,in_NewX,col_X,row_X)
        for i=1:col_X
            for j=1:row_X
                in_NewX(i,j)=in_X(j,i);
            end
        end
    out_X= in_NewX;
    end
    
    %Exercise 2: Matrix Determinant Checker- Part 2
    function detFunc(in_X, row_X, col_X)
    if (isequal(row_X,col_X))
        if isequal(col_X,1)
            Detmath=in_X;
            fprintf('The determinant of matrix X is:\n')
            disp(Detmath)
        elseif isequal(col_X,2)
            Detmath=(in_X(1,1)*in_X(2,2))-(in_X(1,2)*in_X(2,1));
            fprintf('The determinant of matrix X is:\n')
            disp(Detmath)
        elseif isequal(col_X,3)
            Detmath=(in_X(1,1)*in_X(2,2)*in_X(3,3))+(in_X(1,2)*in_X(2,3)*in_X(3,1))+(in_X(1,3)*in_X(2,1)*in_X(3,2))-(in_X(1,3)*in_X(2,2)*in_X(3,1))-(in_X(1,2)*in_X(2,1)*in_X(3,3))-(in_X(1,1)*in_X(2,3)*in_X(3,2));
            fprintf('The determinant of matrix X is:\n')
            disp(Detmath)
        end
        if isequal(round(det(in_X)),Detmath)
            fprintf('Your determinant math is correct\n')
        else
            fprintf('Check your equations\n')
        end
    else
            fprintf('Matrix must be square\n')
    end
    end