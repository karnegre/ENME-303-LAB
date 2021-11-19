%Author: Karla Negrete
%UMBC ID: MQ31578
%Course: ENME 303
%Description: In lab exercises. Not an assignment...
%Exercise used in slides..
%Refer to Lab 2_ Control Flow I.pdf slides for Exercise details
%Updated: 2021.11.19 (KN)
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
