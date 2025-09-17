% Define grid
[x, y] = meshgrid(-8:0.25:8, -8:0.25:8);

% Define slope dy/dx = 3 - 2y
dy = exp(-x) + y;
dx = ones(size(dy)); % since slope = dy/dx, set dx=1

% Normalize to avoid overly long arrows
L = sqrt(dx.^2 + dy.^2);
dx = dx ./ L;
dy = dy ./ L;

% Plot slope field
quiver(x, y, dx, dy, 0.5, 'b')
xlabel('x', 'FontSize', 20)
ylabel('y', 'FontSize', 20)
title('Slope Field for dy/dx = y(4 - y)', 'FontSize', 20)
axis tight

%ax = gca;
%ax.FontSize = 20;


