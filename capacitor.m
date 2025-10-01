clearvars, close all

t = linspace(0,50, 10000);

C =1;
V =220;
R = 10;

Q = C*V*(1 - exp(-t./(C*R)));
Q2 = C*V*(exp(-t./(C*R)));

figure (1);
plot(t, Q, 'linewidth', 2, "b.")
%axis equal;
title('Q = C*V(1 - e^{-t/CR})')
xlabel('t')
ylabel('Q')

figure (2);
plot(t, Q2, 'linewidth', 2, "b.")
%axis equal;
title('Q2 = C*V*e^{-t/CR}')
xlabel('t')
ylabel('Q2')
