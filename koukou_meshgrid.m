clc, clearvars

[x, y] = meshgrid(0:0.25:5, 800:10:1000);

dy = 0.5*y - 450;      % slope formula
dx = ones(size(dy));

% normalize purely by vector length
L = sqrt(dx.^2 + (dy/40).^2);

ux = dx ./ L;
uy = dy ./ L;

%figure('Position',[100 100 900 600]);
quiver(x, y, ux, uy, 0.5, 'b','LineWidth',1, 'ShowArrowHead','off');

xlabel('x','FontSize',14)
ylabel('y','FontSize',14)
title('Slope field: dy/dx = 0.5y - 450','FontSize',16)
axis([0 5 800 1000])   % fixed ranges

