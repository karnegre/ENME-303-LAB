%Author: Karla Negrete
%UMBC ID: MQ31578
%Course: ENME 303
%Description: In lab examples lab 2
clc, clear, close all 

%% Exercise: Logical Operations

    A= true;
    B= false;
    C= true;
    
    q1 = fprintf ('The logical AND of A and B is %d \n', (A & B));
    q2 = fprintf ('The logical AND of A and B combined with the logical OR of C %d \n', ((A & B)|C));
    q1 = fprintf ('The logical not of A is %d \n', (~A));
    
%% Exercise: If-statement 1

    x = input('Enter x: ');
    y = input('Enter y: ');
    
    if x > y
        fprintf('x is greater than y \n')
    elseif x < y
        fprintf('x is less than y \n')
    else 
        fprintf('x is equal to y \n')
    end