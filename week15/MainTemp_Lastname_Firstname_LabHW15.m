%Author: YOUR NAME
%UMBC ID: YOUR UMBC ID
%Course: ENME 303
%Description: Lab Assignment 15:Gauss-Seidel method 
%Refer to ENME303 WK15 for Exercise details
%Assignment location: COURSE MATERIALS

clc, clear, close all 
format rational
%% Problem 1: Divergence
%-------------------------------
%Matrix preparation:

%Coefficient matrix
A=[];
%RHS of the system
b=[];
%Combine LHS and RHS to form an augmented matrix
augA = [A b];
%-------------------------------
%Gauss Seidel Method

%Number of iterations for our approximation
itr = ;

%Sigfigs
sDigit = 4;

%Calling our user-defined function
%'out' is the actual output argument
%'itr' and 'augA' are the actual input arguments
out = gSeidel(itr, augA,sDigit);

fprintf('Iteration output table is:\n');
disp(out);

%out_altered= out(:,[10,50,200,400,700]);

