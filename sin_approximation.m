clearvars

for i = 0:0.05:1
  a = sin(i);
  fprintf("sin %d is %d  error rate is %d\n", i, a, i/a)
endfor
