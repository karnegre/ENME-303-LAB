%ENME 303 Lab Lecture 4 Examples Pt 2
%Home->layout->default
%Author: Karla Negrete
clc, clear all
%% Exercise Simple For

%The statement sandwiched between "for k = 1:5" and "end" is repeated 5 times,
%with the "k" index going from 1 to 5 step 1.

b = 3;
for k = 1:5 %5 iterations
 b 
end

%% Exercise Simple For with Dummy index

%In this one the outputs are 3^1, 3^2, 3^3, 3^4, and 3^5. the value of "k" keeps changing as
% we go through the loop

b = 3;
for k = 1:5 %5 iterations
 b^k
end

%% Exercise Another Dummy

% this program performs the summation of 1+2+3+4+5+6+7+8+9 (= 45)

sum1 = 0;
for k = 1:9 %9 iterations
 sum1 = sum1+k; %Takes the last sum value and adds k (changing dummy)
end
sum1

%% Exercise Another Dummy but with a step

%this program performs the summation of 1+3+5+7+9 (= 25). 
%The command "for k = 1:2:9" means we go through the loop only 5 times. 
%First time with k = 1, second time with k = 1+2 (=3), third time with k = 1+2+2 (=5), and so on. 
%The looping stops once k reaches 9

sum1 = 0;
for k = 1:2:9 %5 iterations
 sum1 = sum1+k; %Takes the last sum value and adds k (changing dummy)
end
sum1

%% Exercise Nested-Sum 
%this program performs the summation of
%Sum1 = 1*1+1*2+1*3 +2*1+2*2+2*3 = 18

sum1 = 0;
for n = 1:2 %2 iterations
 for m = 1:3 %3 iterations 
 sum1 = sum1+n*m;
 end
end
sum1

%% Exercise Nested-Print
%this program prints out each iteration of the nested for 

for n = 1:2
 for m = 1:3
 fprintf('n = %3u m = %3u \r', n, m)
 end
end
