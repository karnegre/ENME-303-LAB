%ENME 303 Lab Lecture 4 Examples Pt 1
%Home->layout->default
%Author: Karla Negrete
clc, clear all

%% Exercise Nested For Loop 2D Matrix
%The following example shows how to work with a 2-D matrix using two nested
%for loops:

Matrix = [6 3 5; 8 4 6; 2 1 9; 7 5 2] %Initializes and prints the matrix
[Num_rows Num_cols] = size(Matrix) %Counts the size for two variables, Num_rows and Num_cols

for Row = 1:Num_rows %iterates from 1 → 4. 
     for Col = 1:Num_cols %iterates from 1 → 3.
      	fprintf('Element (%d,%d) = %d.\n', Row, Col, Matrix(Row, Col)) %Prints the element in the index
     end
end
%% Break Statement

y = [-2 -4 0 -4 3 7]; % An array that you want to explore
ylength = length(y)%Prints array length

for i = 1 : ylength % You're gonna test each element for a special condition
   if y(i) > 0 % Test for a greater-than-zero value
      break % terminate loop execution
   end
   z = y(i) + 6; % If it does not meet your condition, you can follow with your code
   fprintf('z = %d\n', z')
end

%The result is that the operation affects only the first four elements of the array; the fifth element makes the for-loop end.
