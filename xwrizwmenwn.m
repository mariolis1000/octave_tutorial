clearvars, close all

%Template for dy/dx = b - ay
% diff equations




x = linspace(-0,100,100000);


r = 0.08;  %Default values

y0 = 50; %My constants
b = r/4;
a = r/100;



k = 2000
f = @(t) (k/r)*(exp(t.*r) - 1)



figure(1);
hold on
for y0 = 0:10:50
  y = (y0 -(b/a))*exp(x.*(-a))  + (b/a);
  plot(x,y)

  %ezplot(@(x,y) y.^4 + y.*16 + x.^4 -(x.^2).*8 -17)
  %ezplot(@(x,y) y - cos(x.^2))
endfor
%ezplot(@(x,y) y+1, [-2 2 -2 2])
%axis equal
grid on
set(gca, 'GridColor', [0,0,0])
set(gca, 'GridAlpha', 0.3)
set(gca, 'Layer', 'top')
hold off





