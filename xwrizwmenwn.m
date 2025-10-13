clearvars, close all

%x = linspace(-2,2,10000);

C = 1.0;


%y =  1 -(x.^3 + (x.^2).*2  + x.*2 + 4).^0.5

figure(1);
hold on
%for C = -3:1:3
  %ezplot(@(x,y) -x.^3 + 3.*y - y.^3 +C)
  %plot(x, y)
  %ezplot(@(x,y) y - 1 + sqrt(x.^3 + ((x.^2).*2)  + x.*2 + 4))
  ezplot(@(x,y) y.^4 + y.*16 + x.^4 -(x.^2).*8 -17)
%endfor
%ezplot(@(x,y) y+1, [-2 2 -2 2])
axis equal
grid on
set(gca, 'GridColor', [0,0,0])
set(gca, 'GridAlpha', 0.3)
set(gca, 'Layer', 'top')
hold off





