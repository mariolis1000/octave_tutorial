clearvars, close all
x = linspace(-10,10, 10000);
y = linspace(-10,10, 10000);
z = linspace(-10,10, 10000);

R = 1;

f = @(x,y,z) (x.^3 + y.^3 + z.^3) - R^3;

%plot3(x,y,z)
ezplot3(@(x,y,z) (x.^3 + y.^3 + z.^3) - R^3)
axis equal
