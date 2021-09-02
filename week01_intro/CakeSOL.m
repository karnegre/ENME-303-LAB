%Karla Negrete
%ENME 303: LAB 
%Week 1
%Exercise: Cake
clc, clear, close all 
% clc will clear command window, clear will clear Workspace variables, and
% close all will close all windows.

CakeRadius= input('What is the cakes radius: ');
CakeHeight= input('What is the cakes height: ');

Area_top = 2*pi*(CakeRadius^2);      % calculates area of the top and middle of the cake
Cake_circum = pi*2*CakeRadius;       % calculates the circumference of the cake
Area_side = Cake_circum*CakeHeight;  % calculates sides of the cake

Total_Cake_SA= Area_top + Area_side; % calculates total surface area

%Prints out how much frosting we need in in^2
fprintf('Amount of frosting needed for our cake (in^2): %f\n', Total_Cake_SA)
