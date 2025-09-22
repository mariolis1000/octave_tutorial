clc, clearvars, close all
% close all

x = linspace(0,5, 100000);
C =0;

figure ;
hold on

for C = -50:25:50
  y = C*exp(x/2) + 900;
  plot(x, y, 'linewidth', 2, "b.")
endfor
title("P = C*e^{t/2} + 900", 'fontsize', 18)
xlabel("t")
ylabel("P")
%%


if 1>0
  disp('true')
elseif 1 == 0
  disp('what')
else
  disp('no')
endif

