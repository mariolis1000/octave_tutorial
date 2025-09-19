clc, clearvars, close all

% Define grid
[x, y] = meshgrid(-7:0.25:5, -7:0.25:5);

% Define slope dy/dx = 3 - 2y
dy = 3*sin(x) + 1 +y;
dx = ones(size(dy)); % since slope = dy/dx, set dx=1

% Normalize to avoid overly long arrows
L = sqrt(dx.^2 + dy.^2);
dx = dx ./ L;
dy = dy ./ L;

% Plot slope field
figure(1)
quiver(x, y, dx, dy, 0.5, 'b')
xlabel('x', 'FontSize', 20)
ylabel('y', 'FontSize', 20)
%xticks(-6:1:6)
%yticks(-6:1:6)
title('Slope Field for dy/dx = 3*sin(x) + 1 + y', 'FontSize', 20)
axis tight
%ax = gca;
%ax.FontSize = 20;

%figure(2)


