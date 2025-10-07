clearvars, close all

t = linspace(-10,10, 1000000);
c = 1;

y = 12 + 1.6055*(cos(2*t + 1.4877)) - 12.133*exp(-t./4);

figure(1)
plot(t, y, 'linewidth', 2, "b.")
title(" dY/dt ")
xlabel('t')
ylabel('y')
axis tight
%axis ([-10 10 -10 10])



%% Another example
f1 = cos(2*t + 1.4877);
f2 = 7.5571*exp(-t./4);
figure(2)
hold on
plot(t, f1-f2, 'linewidth', 2, "b.")
%plot(t, f2, 'linewidth', 2, "b.")
xlabel('t')
ylabel('y')
axis([8.4671 8.4672 0 0.0005])

