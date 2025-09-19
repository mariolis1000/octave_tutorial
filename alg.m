clc, clearvars, %close all %close all other plot windows

x = linspace(0,5);

y = (-((x-3).^2)) +10;    %blue stars
y2 = (-((x-5).^2)) +10;   %red triangles
y3 = (-((x-3).^2)) +15;   %green squares

f = @(x) (-((x-3).^2)) +10; %how to write the above as anonymous function
                            %aka functions behave like in calc
figure(1)     %each figure() is a new window where you can plot
subplot(2,2,1)
plot(x,y, 'linewidth', 2, "b*");  % can add a -- before b* for a dashed line
% the * just plots the points rather than a line
hold on
plot([0 5], [0 0], '--r')
xlabel('x')
ylabel('y')

set(gca, 'fontsize', 20)
xticks(0:0.5:5)
yticks(-18:1:18)
%xlim([0, 2]) %limits how much of x is drawn
%ylim([0 100])
title(' y = -((x-3)^2) +10 ')
legend('y')
grid on
set(gca, 'GridColor', [0,0,0])
set(gca, 'GridAlpha', 0.3)
set(gca, 'Layer', 'top')


%hold on %draws everything on the same graph

%figure(2)
subplot(2,2,2)
plot(x,y2, 'linewidth', 2, "rv");
hold on
plot([0 5], [0 0], '--r')
title('y2 = -((x-5)^2) +10')
legend('y2')


%figure(3)
subplot(2,2,3)
plot(x,y3, 'linewidth', 2, "gs");
hold on
plot([0 5], [0 0], '--r')
title('y3 = -((x-3)^2) +15')
legend('y3')


[Maxv, I] = max(y)
x_max = x(I)
"\n"
[Minx, I] = min(y)
x_min = x(I)
"\n f(xmax) is"
f(x_max)

%ax = gca;
%ax.FontSize = 18;
%bigger
%xlabel('X-axis', 'FontSize', 18);
%ylabel('Y-axis', 'FontSize', 18);

%x-ticks
%y-ticks

