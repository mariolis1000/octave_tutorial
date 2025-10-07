clearvars, close all

%t = linspace(-10,10, 10000);
c = 1;

[t y] = meshgrid(0:0.1:6 -3:0.1)

dy = 1 - (t./2).*y; %y = ?
dt = ones(size(dy));

