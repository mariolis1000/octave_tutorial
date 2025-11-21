clc, clearvars, close all

o = 0.2
h = 0.0001;

r = o/h;

T = (0:h:5);
Y = ones(size(T));

%s = size(T);
%dy = 3 -(T.*2) -(Y.*0.5);
%dt =1;

for n = 2:1:(5/h +1)
  t = T(n-1);
  y = Y(n-1);
  d = 4 -t + (y.*2);
    %d = 3 -(t.*2) -(y.*0.5);
  Y(n) = d.*h + y;
endfor

%g = @(t) 14 - (t.*4) - ((exp(-t./2)).*13);
g = @(t) (-7/4) +(t./2) + (11/4).*exp(t.*2)


n = 1;
for t = 0:(h*r):5

  fprintf("%f   %f   %f\n", t ,g(t), Y(n))
  n = n+r;

endfor
