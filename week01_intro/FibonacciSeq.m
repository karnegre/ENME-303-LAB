%Author: Karla Negrete
%UMBC ID: MQ31578
%Course: ENME 303
%Description: Cool extra code. Not an assignment 
%Updated: 2021.11.19 (KN)
clc, clear, close all 

clc, clear, close all 
% clc will clear command window, clear will clear Workspace variables, and
% close all will close all windows.

%This code will create Fibbonacci Spiral

%Initialize variables
F=1;
F(2)=1; %sets second location or index in function F to equal 1

%A for loop to iterate up to the 20th term 
for i=1:20
F(end+1)=F(end)+ F(end-1)%creates new term in F that is sum of last term and the second to last term
end

F %Prints F in Command Window

%Total of 22 terms in function F
