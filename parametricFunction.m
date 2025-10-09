clearvars, close all

t = linspace(0,2*pi, 10000);

f1 =  cos(t);
f2 = sin(t);

figure(1);
plot3(f1, f2, t, "b.")
axis equal
grid on
xlabel('x')
ylabel('y')
zlabel('z')
set(gca, 'GridColor', [0,0,0])
set(gca, 'GridAlpha', 0.1)
set(gca, 'Layer', 'top')


t1 = linspace(-10,10,10000);
x = t1;
y = t1.^2;
figure(2);
hold on
plot(x, y, "b.")
%axis equal
hold off


