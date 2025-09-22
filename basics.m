% Section 1
% IF statement

clc, clearvars  %, close all

tic
A = randi([1 5], 1, 1000)
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


%% While approach
va = 100
while  va > 0

  fprintf("%d  %d", va, sqrt(va))
  va = va -1;
  disp("\n")
endwhile
