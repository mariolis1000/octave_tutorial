clearvars, close all

x = (1:1:300);

f = ((x.^2) - x)./2;
g = (x.^1.59).*4;

h = g-f;

figure(1)
hold on
plot(x, f, '*')
plot(x, g, '-')
hold off

figure(2)
plot(x, h)
grid on
set(gca, 'GridColor', [0,0,0])
set(gca, 'GridAlpha', 0.3)
set(gca, 'Layer', 'top')


