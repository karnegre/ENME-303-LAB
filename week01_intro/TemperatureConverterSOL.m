%Karla Negrete
%ENME 303: LAB 
%Week 1
clc, clear, close all 
% clc will clear command window, clear will clear Workspace variables, and
% close all will close all windows.

T_in= input('Enter a temperature in F: '); %Asks user for temp in F
T_out=(5/9)*(T_in-32.0)+273.15; %Converts from F to K
fprintf('Temperature value in K is: %f\n', T_out) %Tells user temp in K

