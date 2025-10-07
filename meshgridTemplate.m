clearvars, close all


%Create the matrix of x and y values
c=(9/16);           %How much "larger" the y axis is compared to x
step = 1     %How many vectors i want, smaller step means more
bo = 100  %bound
[x y] = meshgrid(0:step:bo, 0*c:step*c:bo*c);  %The matrix of values


%Defining the differential equation
%dy = x + exp(-2*x) -(y.*3);
  %dy = x.*exp(-x) + 1 - y;
  %dy = 2*cos(x) + y.*(1/2);
  %dy = y./2 + exp(x./3);
  %dy = y.*(2/3) + (1/3)*exp((-pi.*x)./2);
  %dy= (-2/3).*y + 1 - x./2;
  dy= 3 + 2*cos(x.*2) -y./4;
  dx = ones(size(dy));


%Normalize vectors by the magnitude
L = sqrt(dx.^2 + (dy./c).^2);
ux = dx ./ L;
uy = dy ./ L;


%The plotting part
quiver(x, y, ux, uy, 0.5, 'b','LineWidth',1, 'ShowArrowHead','off');
xlabel('x','FontSize',14)
ylabel('y','FontSize',14)
title('Slope field: dy/dx = x + e^{-2x} - 3y','FontSize',16)
axis tight
  %axis([-10 10 -10*c 10*c])   % fixed ranges


