clc, clearvars
% close all

x = linspace(0,5, 100000);
C = 50
y = C*exp(x/2) + 900;



plot(x,y, 'linewidth', 2, "b.")
title("P = C*e^{t/2} + 900", 'fontsize', 18)
xlabel("t")
ylabel("P")
hold on

