%ENME 303 Lab Lecture 3 Examples
%Home->layout->default
%Author: Karla Negrete
clc, clear all
%% Exercise While Intro

Y = [];
X = 0;                   % initialize loop control variable (X)
while X <= 5           % test loop control variable
     Y(end+1) = X^2;
     X = X + 1;          % modify loop control variable
end

disp(Y)
%% Watch X
x = 10;
fprintf('At start of loop: x = %d \n' ,x);
while x > 0
x = x - 3;
fprintf('x= %d \n',x);
end
fprintf('At end of loop: x= %d \n',x);

%% Squareroot Approximation
Error_tolerance = 0.001; %Enter tolerance. Dictates the interations of our while loop
New_guess = 1; % creates an initial valid entry for the loop
N = input('Enter a positive number: '); %This the value you want to square root

Old_guess = N; %LOOP CONTROL VARIABLE
while abs(New_guess - Old_guess) > Error_tolerance %LOOP CONTROL VARIABLE TESTED
    disp(abs(New_guess-Old_guess)) %displayed value shows you how the relational operand changes each iteration
 	Old_guess = New_guess; % LOOP CONTROL MODIFIED
 	New_guess = (Old_guess + N/Old_guess)/2; %Approximation calculation using previous apprx. value
end

fprintf('The square root of %f is approximately %f.\n', N, New_guess)

