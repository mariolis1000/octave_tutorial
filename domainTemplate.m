clearvars, close all

x = linspace(-2, 5, 10000);

y = x.^3 -exp(x) + e + 2.25;    %9/4 = 2.25

A = (y >= 0);

f = zeros(size(y));
f(A) = 2.5 - sqrt(y(A));
f(y<0) = NaN;

plot(x,f)
grid on
set(gca, 'GridColor', [0,0,0])
set(gca, 'GridAlpha', 0.3)
set(gca, 'Layer', 'top')
axis equal

xDomain = x(A);
min(xDomain)
max(xDomain)
