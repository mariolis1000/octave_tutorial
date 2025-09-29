%A Program that creates 1000 random numbers between 1 and 5
%then checks if at least 20% are equal to 3

% Section 1
% IF statement

clc, clearvars  %, close all

tic
A = randi([1 5], 1, 100000)
time_randi = toc

%If approach
tic
result = A == 3;
num3 = sum(result)

if num3 >= 0.2*length(A)
  disp('wow!')
endif
time_if = toc%%


% For approach
tic
x = 10;
num2 =0;

for i = 1:length(A)  %we can chose step like 1:2:10
  if A(i) == 3
    num2 = num2 + 1;
  endif
endfor
%%
num2
if num2 >= 0.2*length(A)
  disp("wow")
endif
time_for = toc%%


my_f(length(A))

