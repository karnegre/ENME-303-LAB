%ENME 303 Lab
%Author: Karla Negrete
%Lab Lecture 10 Examples: 2D plotting

%% Plotting Intro Example
X = -2*pi:0.1:2*pi;
Y = sin(X);
plot(X,Y)

%% Plotting Intro Example- Less number of points=unsmooth line
X = -2*pi:1:2*pi;
Y = sin(X);
plot(X,Y)

%% Plotting Intro Example- Way 1 : Multiple lines in same graph 
 
%1)Include more than one pairs of row vector in a single call of plot()
X = -2*pi:0.1:2*pi;
plot(X, sin(X), X, cos(X));

%or
%% Plotting Intro Example- Way 1 : Multiple lines in same graph
%2)Use the 'hold-on' function call to keep
% subsequent plot commands drawing into the same axis (without replacing the existing graph)

X = -2*pi:0.1:2*pi;
plot(X, sin(X))
hold on
plot(X, cos(X));

%% Line plot- Sine

%domain from 0 to 2*pi with 100 points
X = linspace(-2*pi,2*pi,100); 
Y = sin(X);
plot(X,Y)

xlabel('x')
ylabel('sin(x)')
title('Plot of the Sine Function between -2\pi and 2\pi')

%% Color
close,clf
X = linspace(0,10,10); 
Y = 5*X;
plot(X,Y,'-pm')
%% Line plot- Cosine

X = linspace(-2*pi,2*pi,100); 
Y = cos(X);
plot(X,Y,'--og')

xlabel('x')
ylabel('cos(x)')
title('Plot of the Cosine Function between -2\pi and 2\pi')

%% Fancy Plot Combo

X = linspace(-2*pi,2*pi,250);
Y = sin(X);
plot(X,Y,'--Xr')

hold on 
Y2 = cos(X);
plot(X,Y2,'Ob')
hold off

title('Plot of Sine and Cosine Between -2\pi and 2\pi')
xlabel('-2\pi < x < 2\pi') 
ylabel('Sine and Cosine Values') 
legend({'y = sin(x)','y = cos(x)'},'Location','southwest')
%% Fplot example

fplot(@(x) sin(x),[-2*pi,2*pi],'-or')
hold on
fplot(@(x) cos(x),[-2*pi,2*pi],'-ob')
hold off

title('Plot of Sine and Cosine Between -2\pi and 2\pi')
xlabel('-2\pi < x < 2\pi') 
ylabel('Sine and Cosine Values') 
legend({'y = sin(x)','y = cos(x)'},'Location','southwest')

%% Subplot Example

%Create a figure with 2 axes (r), one (c)above the other
x = -2*pi:0.1:2*pi;

subplot(2,1,1)
plot(x, sin(x)); xlabel('sin(x)');
title('Subplot 1 of Sine')

subplot(2,1,2)
plot(x, cos(x)); xlabel('cos(x)');
title('Subplot 2 of Cosine')

%% Scatter 
X = linspace(0,3*pi,200);
Y = cos(X) + rand(1,200);  
scatter(X,Y)

%% Pie chart
X = [1,2,3];

labels = {'Product A','Product B','Product C'};
legend(labels,'Location','southoutside','Orientation','horizontal')

figure
pie(X)

%% 