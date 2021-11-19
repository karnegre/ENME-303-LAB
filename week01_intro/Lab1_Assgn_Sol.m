%Author: Karla Negrete
%UMBC ID: MQ31578
%Course: ENME 303
%Description: Lab Assignment 1 Solutions...
%Refer to Week 1_ Assignment.PDF for Exercise details
%Assignment location: Lab 1 folder in Google Drive
%Updated: 2021.11.19 (KN)
clc, clear, close all 

%% Exercise 1: Cake

    %Inputs from user
    CakeRadius= input('What is the cakes radius: ');
    CakeHeight= input('What is the cakes height: ');
    
    Area_top = 2*pi*(CakeRadius^2);      % calculates area of the top and middle of the cake
    Cake_circum = pi*2*CakeRadius;       % calculates the circumference of the cake
    Area_side = Cake_circum*CakeHeight;  % calculates sides of the cake
    
    % calculates total surface area
    Total_Cake_SA= Area_top + Area_side; 
    
    %Prints out how much frosting we need in in^2
    fprintf('Amount of frosting needed for our cake (in^2): %f\n', Total_Cake_SA)
    
%% Exercise 2: Triangle

    %* Initialize variables
    a= 10;
    b=20;
    theta=30;
    
    %* MATLAB trig funcs use radians, so convert from degree to radian
    rad= theta*(pi/180); 
    
    %* calculate the hypotenuse
    %* c=12.3931
    c=sqrt((a^2)+(b^2)-2*a*b*cos(rad))

%% Exercise 3: Temp Converter

    %Asks user for temp in F
    T_in= input('Enter a temperature in F: ');

    %Converts from F to K
    T_out=(5/9)*(T_in-32.0)+273.15;
    
    %Tells user temp in K
    fprintf('Temperature value in K is: %f\n', T_out) 
