%Karla Negrete
%ENME 303: LAB 
%Week 1
%Exercise: Triangle
clc, clear, close all 
% clc will clear command window, clear will clear Workspace variables, and
% close all will close all windows.

%* Initialize variables
a= 10;
b=20;
theta=30;

%* MATLAB trig funcs use radians, so convert from degree to radian
rad= theta*(pi/180); 

%* calculate the hypotenuse
%* c=12.3931
c=sqrt((a^2)+(b^2)-2*a*b*cos(rad))