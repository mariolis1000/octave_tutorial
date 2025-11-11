clearvars, close all


%Create the matrix of x and y values
c= 1;           %How much "larger" the y axis is compared to x
step = 0.2     %How many vectors i want, smaller step means more
bo = 3  %bound
[x y] = meshgrid(-bo:step:bo, -bo*c:step*c:bo*c);  %The matrix of values


%Defining the differential equation

  dy = 3 -(x.*2) -y.*0.5 %(x.^2)./(1 - y.^2)
  dx = ones(size(dy));


%Normalize vectors by the magnitude
L = sqrt(dx.^2 + (dy./c).^2);
ux = dx ./ L;
uy = dy ./ L;


%The plotting part
%figure(2);
hold on  % used when i want to draw over an existing figure
quiver(x, y, ux, uy, 0.5, 'b','LineWidth',1, 'ShowArrowHead','off');
xlabel('x','FontSize',14)
ylabel('y','FontSize',14)
title('Slope field: dy/dx = x + e^{-2x} - 3y','FontSize',16)
axis equal %tight
  %axis([-10 10 -10*c 10*c])   % fixed ranges


