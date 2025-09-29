%clc
clearvars, close all

t = linspace(0,5,100000);
y0 =0;

%dy = -y + 5;
%dt = 1;

figure;
hold on

for y0 = -10:5:10
  y = (y0 - 5)*exp(-t) + 5;
  plot(t,y, 'linewidth', 2, "b.")
endfor
%
title("y = (y0- 5)*ze^{-t} + 5")
xlabel('t')
ylabel('y')
