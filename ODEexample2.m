clearvars, close all

t = linspace(-10,10, 10000);
c = 1;

y = t.^2 + (t.^(-2)).*c;

figure(1)
plot(t, y, 'linewidth', 2, "b.")
title("y = t^2 + t^{-2}  ")
xlabel('t')
ylabel('y')
axis ([-10 10 0 100])

figure(2)
hold on
for c = -5:1:5
  y = t.^2 + (t.^(-2)).*c;
  plot(t, y, 'linewidth', 2, "b.")
endfor
xlabel('t')
ylabel('y')
axis ([-4 4 -10 20])
hold off

