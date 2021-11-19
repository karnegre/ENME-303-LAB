%Author: Karla Negrete
%UMBC ID: MQ31578
%Course: ENME 303
%Description: Lab 3 in lab examples...
%Refer to Lab 3_ Control Flow II.pdf 
%Assignment location: Lab 3 folder in Google Drive
%Updated: 2021.11.19 (KN)
clc, clear, close all 


%% Exercise While Intro
 %Exercise showing how a while loop works
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
% Square root approximation example
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

