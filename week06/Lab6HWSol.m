%ENME 303 Lab Lecture 6 Examples
%Home->layout->default
%Author: Karla Negrete
%Lab HW6 Solutions
clc, clear all

%% Exercise 1: System of Equations

%col of mat A = row of mat B

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

