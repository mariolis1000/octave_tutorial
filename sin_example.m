clc, clearvars, close all

%PARAMETERS
max_x = 10;
x = linspace(0,max_x,100000);
y = sin(x);
check = 0;


%ACTIONS
myl = length(y)
result = y > check;
myAnswer = sum(result);
myavg = sum(y)/myl;

%OUTPUT (terminal)
fprintf("%d Of the %d Are greater than %d\n\n", myAnswer, myl, check)
    % works like printf in C
fprintf("%d %%\n", 100*myAnswer/length(y)) % to make it look like a percentage
    %length() gives us the greater of height() and length()
    %height() gives us the rows
    %width() gives us the columns
fprintf("\nThe average value of y is  %d\n", myavg)

%%(unrelated)
1 ~= 2; % NOT EQUAL
1 == 2; % EQUAL
1>0 & 2>1;   %   & means AND
1>0 | 0>1;   %   | means OR



%ALSO OUTPUT  (plot)
plot(x,y, 'linewidth', 2, "b.")

hold on
plot([0 max_x],[check check], "--r")  %add a line for the point of interest

xticks(0:(pi/6):max_x)
yticks(-1:0.1:1)
title('y = sin(x)')
xlabel('x')
ylabel('y')
grid on
set(gca, 'GridColor', [0 0 0])
set(gca, 'GridAlpha', 0.3)
set(gca, 'Layer', 'top')


