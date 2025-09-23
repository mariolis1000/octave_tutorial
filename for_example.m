clc, clearvars

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
