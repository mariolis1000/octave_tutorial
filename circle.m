clearvars, close all

%x = y = linspace(-1,1,1000);
%y = linspace(-1,1,1000);

  %create my radius and x,y values
r = 1.0;
[x y] = meshgrid(-r:r/100:r, -r:r/100:r);

  %declaring the function f
  %of the circle
  %and limiting to >0 under the sqrt
inside = (r^2 -x.^2 -y.^2);
mask = inside > 0;
f = zeros(size(x));
f(mask) = sqrt(inside(mask));
f(inside <= 0) =NaN;


figure(1);
hold on
mesh(x, y , f)
%mesh(x, y , -f)
axis equal;
%shading interp;
title('Paraboloid')
xlabel('x')
ylabel('y')
hold off

c = 0.5;
figure(2)
hold on
tol = 0.0025
for c = 0:0.1:0.9
 %tol = tol+0.001;
 %tolc = tolc-2;
 Ic = abs(f-c) < tol;
 g = zeros(size(x));
 g(Ic) = f(Ic);
 mesh(x,y,g)
 axis equal;
 title('Ic')
 xlabel('x')
 ylabel('y')
endfor
%%
hold off

%plot(x,f,'linewidth', 2, "b.");
%plot(x,-f,'linewidth', 2, "b.");

grid on
set(gca, 'GridColor', [0,0,0])
set(gca, 'GridAlpha', 0.3)
set(gca, 'Layer', 'top')

