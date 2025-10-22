clearvars, close all
x = linspace(-10,10, 10000);

y = x.*3 +2;
z = x.*2 -3;

plot3(x,y,z)
axis equal
