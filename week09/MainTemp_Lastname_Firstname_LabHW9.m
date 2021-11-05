   
%ENME 303 
%Author: 
%Lab HW9 Template Main

%This is your template main. Please fill it with your work. You should be
%completing the Part 1s' and 2s' 
%Name this template file: MainTemp_Lastname_Firstname_LabHW9.m
clc, clear all
%% Exercise 1: Matrix Transpose
%User input work
Grader_input=input('Grading Part 1 or Part 2\n', 's');

if isequal(Grader_input,'1')
    %Part 1 work
elseif isequal(Grader_input,'2')
    %Im giving you how to call the function! Yay!
    X_out = matTran(X,NewX,num_col,num_row); %1 output and 4 inputs 
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

%% Function Library- Put your Part 2s' in here 

%function for exercise 1

%funcion for exercise 2