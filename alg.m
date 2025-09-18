clc, clearvars, %close all %close all other plot windows

x = linspace(0,5);

y = (-((x-5).^2)) +10;
f = @(x) (-((x-3).^2)) +10; %how to write the above as anonymous function
                            %aka functions behave like in calc

plot(x,y, 'linewidth', 2, "*");
% the * just plots the points rather than a line

set(gca, 'fontsize', 20)
xticks(0:0.5:6)
yticks(0:1:12)

grid on
set(gca, 'GridColor', [0,0,0])
set(gca, 'GridAlpha', 0.3)
set(gca, 'Layer', 'top')


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

