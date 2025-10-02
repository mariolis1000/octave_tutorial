clearvars, close all

[x y] = meshgrid(-1:0.2:1, -1:0.2:1);

under = (x.^2 + y.^2);
mask = under > 0;

f1 = zeros(size(x));
f2 = zeros(size(x));

f1 = y./(x.^2 + y.^2);
f2 = (-x)./(x.^2 + y.^2);

quiver(x, y, f1, f2, 'r')
axis equal;
xlabel('x');
ylabel('y');
title('Vector field f(x,y) = [y/(x^{2}+y^{2}) , -x/(x^{2}+y^{2})]');
grid on
set(gca, 'GridColor', [0,0,0])
set(gca, 'GridAlpha', 0.3)
set(gca, 'Layer', 'top')
