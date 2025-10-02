clearvars, close all

%x = y = linspace(-1,1,1000);
%y = linspace(-1,1,1000);

  %create my radius and x,y values
r = 20.0;
[x y] = meshgrid(-r:r/80:r, -r:r/80:r);

  %declaring the function f
  %of the circle
  %and limiting to >0 under the sqrt
inside = (x.^2 +y.^2);
mask = inside > 0.001;
f1 = 2*x;
f2 = zeros(size(x));
f2(mask) = (inside(mask));
f = f1./f2;
f(inside < 0.001) =NaN;

figure(1);
hold on
mesh(x, y , f)
%mesh(x, y , -f)
axis equal;
%shading interp;
title('Paraboloid')
xlabel('x')
ylabel('y')
grid on
set(gca, 'GridColor', [0,0,0])
set(gca, 'GridAlpha', 0.3)
set(gca, 'Layer', 'top')
hold off

c = 0.5;
figure(2)
hold on
tol = 0.01
for c = -1:0.1:1
 %tol = tol+0.001;
 %tolc = tolc-2;
 Ic = abs(f-c) < tol;
 g = zeros(size(x));
 g(Ic) = f(Ic);
 mesh(x,y,g)
 %shading interp;
 axis equal;
 title('Ic')
 xlabel('x')
 ylabel('y')
endfor
%%
grid on
set(gca, 'GridColor', [0,0,0])
set(gca, 'GridAlpha', 0.3)
set(gca, 'Layer', 'top')

hold off

%plot(x,f,'linewidth', 2, "b.");
%plot(x,-f,'linewidth', 2, "b.");


