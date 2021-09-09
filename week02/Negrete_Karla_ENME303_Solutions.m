%Author: Karla Negrete
%UMBC ID: MQ31578
%Course: ENME 303
%Description: Lab Assignment 2 Solutions
clc, clear, close all 

%% Exercise 1: System of Equations
clc, clear, close all 
    %This program will ask the user for two matrix elements from a system
    %of eqs and solve for the third
    
    CM = input('Enter your coefficient matrix (In brackets and seperated by ;): '); %This is the coefficient matrix. Should look like CM = [5 2 7; 6 -4 9; 8 -12 -7]
    SM = input('Enter your results matrix (In brackets and seperated by ;): '); %This is the RHS col vector
    XM = inv(CM) * SM;
   
    fprintf ('The calculated values for the system of equations are \n');
    disp(XM)
    
    ChM = CM * XM;
    ChM= round(ChM);
    
    if ChM == SM
        fprintf ('The calculated values for the system of equations have been verified and are correct')
    else
        fprintf ('The calculated values for the system of equations have been verified and are NOT correct')
    end    
%% Exercise 2: Logical Operations

    A= true;
    B= false;
    C= true;
    
    q1 = fprintf ('The logical AND of A and B is %d \n', (A & B));
    q2 = fprintf ('The logical AND of A and B combined with the logical OR of C %d \n', ((A & B)|C));
    q1 = fprintf ('The logical not of A is %d \n', (~A));
    
%% Exercise 3: If-statement 1

    x = input('Enter x: ');
    y = input('Enter y: ');
    
    if x > y
        fprintf('x is greater than y \n')
    elseif x < y
        fprintf('x is less than y \n')
    else 
        fprintf('x is equal to y \n')
    end
%% Exercise 4: Leap year

    year = input('Enter a year: ');

    if (mod(year, 400) == 0)
        fprintf('%d is a leap year \n', year)
    elseif (mod(year, 4) == 0) & (mod(year, 100)~=0)
        fprintf('%d is a leap year \n', year)
    else
        fprintf('%d is not a leap year \n', year)
    end