clc, clearvars

Gt = zeros(4,4);
Tm = zeros(4,4);

G = 6.6743e-11;  % gravitational constant
c = 299792458;   % speed of light

C1 = (8*pi*G)/(c^4);
p = 101325;

Tm(1,1) = 5510*(c^2);
Tm(2,2) = p;
Tm(3,3) = p;
Tm(4,4) = p;

Tm

Gt = C1*Tm
