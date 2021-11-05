%% In Lab Ex 1: Projectile

%Plotting projectile trajectory using equations for ideal projectile motion

%Knowns
t = 0 : 0.1 : 10;
g = 9.8;
v0 = 50;
theta0 = 5*pi/12;
y0 = 0;
x0 = 0;

%Equations
y = y0 - 0.5 * g * t.^2 + v0*sin(theta0).*t;
x = x0 + v0*cos(theta0).*t;

%Graphs
 subplot (1,2,1)
 plot(t,x);
 title('x(t) vs. t');
 xlabel('Time (s)');
 ylabel('Horizontal Distance (m)');
 grid on;
 
 subplot (1,2,2)
 plot(t,y);
 title('y(t) vs. t');
 xlabel('Time (s)');
 ylabel('Altitude (m)');
 grid on;
 
 %% Ex 2:

 %Plot set up
N = [1:1:100].^2;
Y = N.^(-0.5);

%Graphs
subplot(3,1,1);
plot(N, Y);
title('y = N^{-0.5} using Linear Scale');

subplot(3,1,2);
semilogx(N, Y);
title('y = N^{-0.5} using Log Scale for X-axis');

subplot(3,1,3);
loglog(N, Y);
title('y = N^{-0.5} using Log Scale')