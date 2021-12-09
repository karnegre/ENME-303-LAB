%* ========== ========== ==========
%* Author: 　　　Roy Wu
%* Description: Gauss-Seidel method
%*              Use the new values of each as soon as you know them
%* History:     11/18/2021 initial version 
%* ========== ========== ==========
clc; clear;
format rational

%* initial guess
x1=0;
x2=0;
x3=0;

%* prob1
A=[2 -3 0; 1 3 -10; 3 0 1];
b=[-7; 9; 13];
augA = [A b];

% x=A\b


itr = 15;
out = zeros(4, itr);
for i= 1:itr
    x1 = (augA(1, end) -augA(1,2)*x2 -augA(1,3)*x3)/augA(1,1);
    x2 = (augA(2, end) -augA(2,1)*x1 -augA(2,3)*x3)/augA(2,2);
    x3 = (augA(3, end) -augA(3,1)*x1 -augA(3,2)*x2)/augA(3,3);
    round(x1, 3, 'significant');
    round(x2, 3, 'significant');
    round(x3, 3, 'significant');
    out(1,i) = i;
    out(2,i) = x1;
    out(3,i) = x2;
    out(4,i) = x3;
end   
fprintf('Iteration output is...\n');
disp(out);
% disp(out(:,end));

nA    = norm(A)
nAinv = norm(inv(A));
kappa = nA*nAinv;
fprintf('kappa is...%f\n\n', kappa)


%% Lecture demo
clc; clear;
format short
%* initial guess
x1=0;
x2=0;
x3=0

a1 = [11.2 -4.30 -0.605];
a2 = [-1.31 0.911 1.99];
a3 = [0.143 0.357 2.01];

b  = [4.415; -5.458; -5.173];
A  = [a1; a2; a3];
augA  = [A b];
augA  = round(augA, 4, 'significant'); %* round to significant digits

itr = 700;
out = zeros(4, itr);
for i= 1:itr
    x1 = (augA(1, end) -augA(1,2)*x2 -augA(1,3)*x3)/augA(1,1);
    x2 = (augA(2, end) -augA(2,1)*x1 -augA(2,3)*x3)/augA(2,2);
    x3 = (augA(3, end) -augA(3,1)*x1 -augA(3,2)*x2)/augA(3,3);
    round(x1, 4, 'significant');
    round(x2, 4, 'significant');
    round(x3, 4, 'significant');
    out(1,i) = i;
    out(2,i) = x1;
    out(3,i) = x2;
    out(4,i) = x3;
end   
fprintf('Iteration output is...\n');
% disp(out);
disp(out(:,end));
