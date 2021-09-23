%Author: Karla Negrete
%UMBC ID: MQ31578
%Course: ENME 303
%Description: Lab Assignment 4 Solutions
clc, clear, close all 

%% Exercise 1: Array Comp
 a= [1 8 9];
 b = [2 6 7];
 x= []
 y= []
 N= length(a);
 
 for i=1:N
     z(i)=a(i)*b(i);
     for j=1:N
         x(i,j)=a(i)*b(j)
         y(i,j)=a(i)/b(j)
     end
 end
  z = sum(z);
  fprintf('z = %d\n', z')
  fprintf('x = \n')
  disp(x)
  fprintf('y = \n')
  disp(y)
  
%% Exercise 2: Prime Number
% For a # to be prime it must have two factors-itself and one

for i=2:100 %Numbers from 2 to 100. 1 is NOT prime
 for j=2:100 %This for loops checks all the j vectors in each element of i vector until moving on
     %Condition 1
    if(~mod(i,j))%Checks if 'n #' in 1st row vector is divisible by 'n #' in 2nd row vector
        %if(~mod(i,j))executes statement when logical operator is not false
        %but mod(i,j) has no remainder
        %mod(2,2) returns false(0)
        %mod(3,2) returns true (1)
        break; % if factor found, not prime  
    end
 end
 %Condition 2
 if(j > (i/j)) %Checks cases when i and j are same and ends outer loop. Moves onto next i row vector element
    fprintf('%d is prime\n', i);
 end
end

%% Exercise Guessing Game

%Generates a random number for user to guess out of 20
answer= randi(20);

%Counter to store the # of user guesses
numGuess=0;

% Guessing here
guess = -1;

while (guess ~= answer)
    
    % increment number of guesses
    numGuess= numGuess + 1; 

    % ask user to make a guess
    guess = input('Guess a number between 1 and 20: ');
    
    % tell user if their guess was too low, too high, or right
    if guess < answer
        fprintf('Your guess %i was too low\n', guess);
    elseif guess > answer
        fprintf('Your guess %i was too high\n', guess);
    else
        fprintf('Nice! Your guess %i was correct\n', guess);
        fprintf('It took you %i guesses\n', numGuess);
        
    end 
end