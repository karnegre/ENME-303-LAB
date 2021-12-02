%Author: Karla Negrete
%UMBC ID: MQ31578
%Course: ENME 303
%Description: Lab Lecture 14 Examples...
%Refer to Lab 14: Eigenvalue & Eigenvectors.pdf 
%Assignment location: Lab 14 folder in Google Drive
%Updated: 2021.12.02 (KN)
clc, clear, close all

%% Example 1: Eigenvalue
A=[3 1; 0 2];
Eigenvalues=eig(A);
fprintf('These are the eigenvalues of matrix A:\n');
disp(Eigenvalues)

%% Example 2: Eigenvalue + Eigenvectors
A=[3 1; 0 2];
[V,D] = eig (A);
eigvals=diag(D);

for i = 1 : length(eigvals) 
    eval= eigvals(i);
    fprintf('For eigenvalue %d the eigenvector is:\n',eval);
    evec= V(:,i);
    disp(evec)
end

%% Example 3: Characteristic Polynomial- Coefficients
%Returns the COEFFICIENTS of your characteristic polynomial
A=[3 1; 0 2];
coeff=charpoly(A);
fprintf('These are the coefficients of the characteristic polynomial:\n');
disp(coeff)

%% Example 4: Characteristic Polynomial
%Returns the  of your characteristic polynomial in terms of x
syms x 
A=sym([3 1; 0 2]);
poly=charpoly(A,x);
fprintf('This is the characteristic polynomial in terms of x:\n');
disp(poly)

%% Example 5: Solving for Roots of Coefficients
A=[3 1; 0 2];
coeff=charpoly(A);
fprintf('These are the coefficients of the characteristic polynomial:\n');
disp(coeff)
r = roots(coeff);
fprintf('These are the eigenvalues:\n');
disp(r)

%% Example 6: Solving for Roots of Characteristic Polynomial
%Returns the  of your characteristic polynomial in terms of x
syms x 
A=sym([3 1; 0 2]);
poly=charpoly(A,x);
fprintf('This is the characteristic polynomial in terms of x:\n');
disp(poly)
eval=solve(poly);
fprintf('These are the eigenvalues:\n');
disp(eval)
