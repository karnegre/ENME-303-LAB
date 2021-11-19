%Author: Karla Negrete
%UMBC ID: MQ31578
%Course: ENME 303
%Description: Lab Assignment 6 Solutions...
%Refer to Week 6_ Assignment.pdf for Exercise details
%Assignment location: Lab 6 folder in Google Drive
%Updated: 2021.11.19 (KN)
clc, clear, close all 

%% Exercise 1: System of Equations
 
    A = input('Enter your matrix A (in brackets): \n');
    B = input('Enter your matrix B (in brackets): \n');
    
    X = A\B
    Verify= A*X
    
    if isequal(B,Verify)
        fprintf("Correct\n")
    else
        fprintf("Oops.Wrong\n")
    end

%% Exercise 2

    n= input('Input a value for n \n');
    Matrix = eye(n).*n;
    
    for i = 1:n-1
        Matrix(1:n-i,i+1:end)= Matrix(1:n-i,i+1:end)+eye(n-i).*(n-i);
        Matrix(i+1:end,1:n-i)=Matrix(i+1:end,1:n-i)+eye(n-i).*(n-i);
    end
    
    disp(Matrix)
