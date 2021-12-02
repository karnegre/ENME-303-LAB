%Author: Karla Negrete
%UMBC ID: MQ31578
%Course: ENME 303
%Description: Lab Assignment 14 Solutions...
%Refer to Week 14_ Assignment.pdf for Exercise details
%Assignment location: Lab 14 folder in Google Drive
%Updated: 2021.12.02 (KN)
clc, clear, close all 

%% Problem 1: 
A = [1 0 0 0; 0 1 5 -10; 1 0 2 0; 1 0 0 3];
%Find the eigenvalue and eigenvectors
[V,D] = eig (A);
eigvals=diag(D);
fprintf('These are the eigenvalues of matrix A:\n');
disp(eigvals)

for i = 1 : length(eigvals) 
    eval= eigvals(i);
    fprintf('For eigenvalue %d the eigenvector is:\n',eval);
    evec= V(:,i);
    disp(evec)
end

%Find Characteristic Eq Symbolically
syms x 
Asym=sym(A);
poly=charpoly(Asym,x);
fprintf('This is the characteristic polynomial in terms of x:\n');
disp(poly)

%Use roots to find roots of Characteristic eq
coeff=charpoly(A);
r = roots(coeff);
fprintf('These are the eigenvalues:\n');
disp(r)

%% Problem 2: 
A = [-1 3 0 ; 3 5 2; 0 2 -4];
%Find the eigenvalues
[V,D] = eig (A);
eigvals=diag(D);
fprintf('These are the eigenvalues of matrix A:\n');
disp(eigvals)

%Find Characteristic Eq Symbolically
syms x 
Asym=sym(A);
poly=charpoly(Asym,x);
fprintf('This is the characteristic polynomial in terms of x:\n');
disp(poly)

%Find eigenvectors
for i = 1 : length(eigvals) 
    eval= eigvals(i);
    fprintf('For eigenvalue %d the eigenvector is:\n',eval);
    evec= V(:,i);
    disp(evec)
end

%% Problem 3: 
A = [2 1 0 ; 0 2 0; 0 0 2];

%Find the eigenvalues and eigenvectors
[V,D] = eig (A);
eigvals=diag(D);
fprintf('These are the eigenvalues of matrix A:\n');
disp(eigvals)

for i = 1 : length(eigvals) 
    eval= eigvals(i);
    fprintf('For eigenvalue %d the eigenvector is:\n',eval);
    evec= V(:,i);
    disp(evec)
end

%Find A inverse
Ainv=inv(A);
fprintf('This is the inverse of A:\n');
disp(Ainv)

