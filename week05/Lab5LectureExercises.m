%Author: Karla Negrete
%UMBC ID: MQ31578
%Course: ENME 303
%Description: Lab Assignment 5 Solutions...
%Refer to Week 5_ Assignment.pdf for Exercise details
%Assignment location: Lab 5 folder in Google Drive
%Updated: 2021.11.19 (KN)
clc, clear, close all 

%% Exercise: Defining Vectors
  %Row vector
  rvec = [1 2 3 4 5];

  fprintf('This is a row vector: \n')
  disp(rvec)

  %Column vector
  cvec = [6; 7; 8; 9; 10];

  fprintf('This is a column vector: \n')
  disp(cvec)

  %Another way to create a column vector is to take the transpose of a row vector
  cvec2= rvec';
  fprintf('This is a column vector made by transposing a row vector: \n')
  disp(cvec2)

%You can also define vectors by stating ranges of values
%In this case, row vector 2 is the range from 11 to 15
rvec2 = [11:15];
fprintf('This is row vector 2, which ranges from 11 to 15: \n')
disp(rvec2)

%% Exercise: Defining Matrices
%A matrix is an array of values, so yes vectors are also matrices
%Row vectors are one row matrices 
%Column vectors are 3 row matrices

  %Define a matrix by enumerating values
  mat1=[14, 15, 16; 17, 18, 19]; % 2x3 matrix
  fprintf('This is 2x3 matrix, defined by enumerating values: \n')
  disp(mat1)

  %Define matrix using ranges
  mat2=[31:33;34:36];
  fprintf('This is 2x3 matrix, defined using ranges: \n')
  disp(mat2)

  %To discover the size of your matrix, i.e dimensions i.e # of rows and cols
  mat2size=size(mat2);
  fprintf('This tells you the size of Mat2, 2 rows and 3 columns: \n')
  disp(mat2size)

%% Exercise Dot Product of Vectors

  A=[3 5 8 9];
  B=[5 2 1 7];
  Btranspose = B';

  dotproduct=dot(A,B);
  fprintf('The dot product of vectors A and B is: %d \n', dotproduct)

  %Multiplication of two vectors using transpose
  C=A*Btranspose;
  fprintf('The vector multiplication of vectors A and B using transpose is: %d \n', C)

%% Exercise Cross Product of Vectors
%Vectors A and B must be length of 3
%Vectors A and B must have the same size

  A=[2 2 7];
  B=[8 3 6];

  C = cross(A,B);
  fprintf('The cross product of vectors A and B is vector C:\n')
  disp(C)

%% Magnitude of a Vector 
  v= [1 4 -3 6];

  mag= norm(v);
  fprintf('The magnitude of vector v is: %g \n', mag)

%% Exercise Proof that Norm is Magnitude Calculation
%Proof that norm is the magnitude of vector v
  syms x y z %creates a symbolic object that is automatically assigned to a MATLAB® variable with the same name
  v_proof = [x y z];
  proof= norm(v_proof);

  fprintf('This is the equation for calculating the magntiude of a vector:\n')
  disp(proof)

%% Exercise Normalize a Vector aka Find its Unit Vector
  v=[4 5 5];

  v_mag=norm(v);
  unit_v=v/v_mag;

  fprintf('The unit vector for v is:\n')
  disp(unit_v)

%% Exercise Reduce Row Echelon Form
%M = magic(n) returns an n-by-n matrix constructed from the integers 1 through n^2 with equal row and column sums
%The sum of the elements in each column and the sum of the elements in each row are the same.
  matrix= magic (3) 

  RRE= rref(matrix);
  fprintf('The reduced row echelon for the matrix is:\n')
  disp(RRE)

%% Exercise System of Equations
%Solve a simple system of linear equations A*X = B
  A = magic(3)
  B = [15; 15; 15;]
  X=A\B;
  fprintf('The solution for X is:\n')
  disp(X)
