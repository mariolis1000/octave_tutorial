clearvars
%, close all

c=1;
[t y] = meshgrid(0:0.2:4, -4*c:0.2/c:0*c);

%dy = 0.5*exp(t./3) - y.*0.5;
dy = 4 -t + y.*2;

dt = ones(size(dy));

L = sqrt(dt.^2 + (dy./c).^2);

ut = dt ./ L;
uy = dy ./ L;

%
figure(3)
quiver(t, y, ut, uy, 0.5, 'b','LineWidth',1, 'ShowArrowHead','off');
xlabel('t','FontSize',14)
ylabel('y','FontSize',14)
title('Slope field: e^{t/3}/2 - y/2','FontSize',16)
