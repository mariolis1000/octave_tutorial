clc, clearvars
%A program that takes ten thousand numbers
% with random values between 0 and 1
% and trying to select them with a chance of 30%


N = 10000;
result =0;
tic
for iterator = 1:N
  x = rand(1,10);
  for i = 1:10
    if x(i) <= 0.3
      result = result+1
    endif
  endfor
endfor
disp(result/N)
toc

