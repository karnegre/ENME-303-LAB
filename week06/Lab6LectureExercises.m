%Author: Karla Negrete
%UMBC ID: MQ31578
%Course: ENME 303
%Description: Lab Lecture 6 Exercises...
%Refer to Lab 6_ Matrices.pdf for Exercise details
%Assignment location: Lab 6 folder in Google Drive
%Updated: 2021.11.19 (KN)
clc, clear, close all 

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

% To reference an element in a matrix
  A = [1 2 3; 4 5 6];
  element = A(2,3) % element in row 2 column 3

%To reference all elements in j columns of matrix use: A(:,j)
  A = [1 2 3; 4 5 6];
  col3= A(:,3)

%To reference all elements in i rows of matrix use: A(i,:)
  A = [1 2 3; 4 5 6];
  row2= A(2,:)

%Create a smaller matrix from OG matrix
  Abig=[1:6;7:12;14:19]
%Were saying create a matrix taking all elements from 2nd to 3rd column
  Asmall=Abig(:,2:3) 

%% Matrix Addition and Subtration
% Matrices must have the same dimensions to add or subtract
% Operation occurs elementally 

  A= [1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16]
  B= ones(4)

  C_add=A+B
  C_sub=A-B

%% Scalar Multiplication: Multiplying a scalar value by a Matrix

  A = [6:2:12;14:2:20;22:2:28]
  A_1= 2*A
  A_2= pi*A

%% Playing with order of operations

  Mat1= [6:2:12;14:2:20;22:2:28]
  Mat2= [6:9;14:17;18:21]
  % Operation inside parenthesis on 2*Mat2 first, then addition/subtraction, and then
  % outer multiplication
  Mat= (2)*(Mat1+Mat2-2*Mat2)

%% Matrix Multiplication

a=[3 5; 1 7];
  b=[1 2; 2 9];

  %Matrix multplication
  c= a*b
  %Matrix elementwise multiplication. multiplies element by element rather
  %than follow typical matrix mult.
  c_ = a.*b

%% AB does not equal BA

  A=[3 5; 1 7];
  B=[1 2; 2 9];

  AB= A*B
  BA= B*A

%% Identity Matrix

  I = eye(5)
  I5= eye(5)*5

%% Hint for HW Exercise 2

  n= 5;
  Matrix = eye(n).*n

  % %Portion of upper triangle were adding to Matrix.
  Matrix(1:4,2:end)=Matrix(1:4,2:end)+eye(4).*4
  Matrix(1:3,3:end)=Matrix(1:3,3:end)+eye(3).*3
  Matrix(1:2,4:end)=Matrix(1:2,4:end)+eye(2).*2

  %Portion of lower triangle were adding to Matrix.
  Matrix(2:end,1:4)=Matrix(2:end,1:4)+eye(4).*4
  Matrix(3:end,1:3)=Matrix(3:end,1:3)+eye(3).*3

  %We want to index it in loops. Look for pattern
  % how does n relate to the for loop? what is n? n is 5. 
  %In order to fill the upper triangle, we have to do n-1 steps
