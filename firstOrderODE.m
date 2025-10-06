clearvars, close all

t = linspace(0,2, 10000);
%y = (6*exp(t./3) - exp(-t./2))/5 ;

% Is the solution to the diff equation

c = 0.4;

figure;
hold on

for c = -0.4:0.2:0.4
  %y = (0.6*exp(t./3) + c*exp(-t./2)) ;
  y = -7/4 + t./2  + c*exp(t.*2);
  plot(t, y, 'linewidth', 2, "b.")
endfor
%%
title("Solution to:   dy/dt + y/2  = e^{t/3}/2")
xlabel('t')
ylabel('y')
axis ([0 2 -4 0])
hold off

%%
figure(2)
c = 0;
%y = (0.6*exp(t./3) + c*exp(-t./2)) ;
y = -7/4 + t./2  + c*exp(t.*2);
plot(t, y, 'linewidth', 2, "b.")
title("y =  3*e^{t/3}/5 + 2*e^{-t/2}/5")
xlabel('t')
ylabel('y')
axis ([0 2 -4 0])


%%




%[t y] = meshgrid(-10:1:10. -10:1,10);
%dy =
