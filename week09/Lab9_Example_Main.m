%ENME 303 
%Author: 
%Lab HW9 Template Example using Lab HW7 
clc, clear all
%% Matrix Inverse
% For matrix to be invertible, it must:
%1.Be square
%2.det ~= 0

X = input('Enter your matrix X (in brackets): \n')
%[1 4 5; 9 9 3; 1 8 1]
[num_row, num_col]=size(X);

Grader_input=input('Grading Part 1 or Part 2\n', 's');

if isequal(Grader_input,'1')
    if (isequal(num_row,num_col) && det(X)~=0)
        InvX=inv(X);
        fprintf('The inverse of X is:\n')
        disp(InvX)
        if isequal(round(X*InvX),eye(num_row))
            fprintf('Correct\n')
        end
    end
elseif isequal(Grader_input,'2')
    xInv = matxInverse(X, num_row, num_col);
    fprintf('The inverse of X is:\n')
    disp(xInv)
end 
