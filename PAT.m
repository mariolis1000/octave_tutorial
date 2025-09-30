%clc
clearvars, close all

t = linspace(0,5,100000);
y0 =0;

a = -2
b = 5

b = b*(-1);
% IMPORTANT!
% dy/dx =  ay - b
%so in ex. dy/dx  = -2y + 5
%b = -5 !!!!



%dy = -y + 5;
%dt = 1;

figure;
hold on

for y0 = -10:1:10
  y = (y0 - (b/a))*exp(a*t) + (b/a);
  plot(t,y, 'linewidth', 2, "b.")
endfor
%
title("y = [y0 - (b/a)]*e^{at} + (b/a)")
xlabel('t')
ylabel('y')
hold off
