%Author: Karla Negrete
%UMBC ID: MQ31578
%Course: ENME 303
%Description: Lab Lecture 7 Exercises...
%Refer to Lab 7_ Matrices II.pdf 
%Assignment location: Lab 7 folder in Google Drive
%Updated: 2021.11.19 (KN)
clc, clear, close all 

%% Exercise: Matrix Transpose
    A = [1 2 3 4+4i; 5 6 7 8; 9 10+9i 11 12]

%Normal transpose
    B= transpose (A)
    C = A.'
    %Conjugate transpose
    D=ctranspose(A)
    E=A'

%% Exercise: Matrix Inverse
    A = [1 0 2; -1 5 0; 0 3 -9]

    Ainv= inv(A)

    %Check if relationship AA^(-1)=I holds

    Check = A*Ainv

%% Exercise: Matrix Determinant 

    A = [1 -2 4; -5 2 0; 1 0 3]
    det(A)

%% Exercise Determinant 

    A = [3 2 1; 1 1 5;6 7 7];
    B = [8 1 1; 6 4 2;3 2 5];

    round(det(A*B))
    det(A)*det(B)

    if isequal(round(det(A*B)),det(A)*det(B))
        fprintf("Theorem proved\n")
    end

%% Exercise Inverse 

    A = [3 2 1; 1 1 5;6 7 7];
    B = [8 1 1; 6 4 2;3 2 5];

    det(A)
    det(B)

    X = round(inv(A*B), 4)
    Y = round(inv(B)*inv(A), 4)

    if isequal(X,Y)
        fprintf("Theorem proved\n")
    end
