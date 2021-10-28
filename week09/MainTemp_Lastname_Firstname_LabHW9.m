%ENME 303 
%Author: 
%Lab HW9 Template
clc, clear all
%% Exercise 1: Matrix Transpose
%User input work
Grader_input=input('Grading Part 1 or Part 2\n', 's');

if isequal(Grader_input,'1')
    %Part 1 work
elseif isequal(Grader_input,'2')
    %Im giving you most of this! yay!
    X_out = matTran(X,NewX,num_col,num_row); %1 output and 3 inputs 
    fprintf('Transposed matrix is\n')
    disp(X_out)
end 

%% Exercise 2: Matrix Determinant Checker
%User input work
Grader_input=input('Grading Part 1 or Part 2\n', 's');

if isequal(Grader_input,'1')
    %Part 1 work
elseif isequal(Grader_input,'2')
    %Part 2 work
end 
