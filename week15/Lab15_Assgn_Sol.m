%Author: YOUR NAME
%UMBC ID: YOUR UMBC ID
%Course: ENME 303
%Description: Lab Assignment 15:Gauss-Seidel method 
%Refer to ENME303 WK15 for Exercise details
%Assignment location: COURSE MATERIALS

clc, clear, close all 

%% Problem 1: Divergence
clc, clear, close all
format rational
%-------------------------------
%Matrix preparation:

%Coefficient matrix
A=[2 -3 0; 1 3 -10; 3 0 1];
%RHS of the system
b=[-7; 9; 13];
%Combine LHS and RHS to form an augmented matrix
augA = [A b];
%-------------------------------
%Gauss Seidel Method

%Number of iterations for our approximation
itr = 15;

%Sigfigs
sDigit = 4;

%Calling our user-defined function
%'out' is the actual output argument
%'itr' and 'augA' are the actual input arguments
out = gSeidel(itr, augA,sDigit);
fprintf('Iteration output table is:\n');
disp(out);
%-------------------------------
%% Problem 2: Convergence
clc, clear, close all
format rational
%-------------------------------
%Matrix preparation:

%Coefficient matrix
A=[2 -3 0; 1 3 -10; 3 0 1];
%RHS of the system
b=[-7; 9; 13];
%Combine LHS and RHS to form an augmented matrix
augA = [A b];
%-------------------------------
%Gauss Seidel Method

%Number of iterations for our approximation
itr = 15;

%Sigfigs
sDigit = 4;

%Calling our user-defined function
%'out' is the actual output argument
%'itr' and 'augA' are the actual input arguments
out = gSeidel(itr, augA,sDigit);
fprintf('Iteration output table is:\n');
disp(out);
%-------------------------------
%% Problem 3: Convergence
clc, clear, close all
format rational
%-------------------------------
%Matrix preparation:

%Coefficient matrix
A=[11.2 -4.30 -0.605; -1.31 0.911 1.99; 0.143 0.357 2.01];
%RHS of the system
b=[4.415; -5.458; -5.173];
%Combine LHS and RHS to form an augmented matrix
augA = [A b];
%-------------------------------
%Gauss Seidel Method

%Number of iterations for our approximation
itr = 1000;

%Sigfigs
sDigit = 4;

%Calling our user-defined function
%'out' is the actual output argument
%'itr' and 'augA' are the actual input arguments
out = gSeidel(itr, augA,sDigit);
out_altered= out(:,[10,50,200,400,700]);
fprintf('Iteration output table is:\n');
disp(out_altered);
%-------------------------------