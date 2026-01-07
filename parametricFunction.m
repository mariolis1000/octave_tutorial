clearvars, close all

%t = linspace(0,2*pi, 10000);

%f1 =  cos(t);
%f2 = sin(t);

%x = linspace(-5,5,1000);
%y = linspace(-5,5,1000);
[x y] = meshgrid(-1:0.02:1, -1:0.02:1 );
z =  y.^2 -(x.^2 );


figure(1);
plot3(x, y, z, "b.")
axis equal
grid on
xlabel('x')
ylabel('y')
zlabel('z')
set(gca, 'GridColor', [0,0,0])
set(gca, 'GridAlpha', 0.1)
set(gca, 'Layer', 'top')


%t1 = linspace(-10,10,10000);
%x = t1;
%y = t1.^2;
%figure(2);
%hold on
%plot(x, y, "b.")
%axis equal
%hold off


