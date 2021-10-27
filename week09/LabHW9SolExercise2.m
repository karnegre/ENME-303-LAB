%ENME 303 
%Home->layout->default
%Author: Karla Negrete
%Lab HW9 Solutions. Exercise 2
clc, clear all

%% Exercise 2: Matrix Determinant Checker- Part 1
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
%% Exercise 2: Matrix Determinant Checker- Part 2
%Putting script into user-defined function

X = input('Enter your matrix X (in brackets): \n')
%[1 4 5; 9 9 3; 1 8 1]
[num_row, num_col]=size(X);

detfunc(X,num_row, num_col) %no output, just 3 inputs

function [dumb_out_X]= detfunc(dumb_in_X, row, col)
if (isequal(row,col))
    if isequal(col,1)
        Detmath=dumb_in_X;
        fprintf('The determinant of matrix X is:\n')
        disp(Detmath)
    elseif isequal(col,2)
        Detmath=(dumb_in_X(1,1)*dumb_in_X(2,2))-(dumb_in_X(1,2)*dumb_in_X(2,1));
        fprintf('The determinant of matrix X is:\n')
        disp(Detmath)
    elseif isequal(col,3)
        Detmath=(dumb_in_X(1,1)*dumb_in_X(2,2)*dumb_in_X(3,3))+(dumb_in_X(1,2)*dumb_in_X(2,3)*dumb_in_X(3,1))+(dumb_in_X(1,3)*dumb_in_X(2,1)*dumb_in_X(3,2))-(dumb_in_X(1,3)*dumb_in_X(2,2)*dumb_in_X(3,1))-(dumb_in_X(1,2)*dumb_in_X(2,1)*dumb_in_X(3,3))-(dumb_in_X(1,1)*dumb_in_X(2,3)*dumb_in_X(3,2));
        fprintf('The determinant of matrix X is:\n')
        disp(Detmath)
    end
    if isequal(round(det(dumb_in_X)),Detmath)
        fprintf('Your determinant math is correct\n')
    else
        fprintf('Check your equations\n')
    end
else
        fprintf("Matrix must be square\n")
end
end