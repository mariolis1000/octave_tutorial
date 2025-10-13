%This script relies on symbolic package
%To run you need to have python installed
%along with python's sympy package
%to install on a system that already has python and octave
%type on a terminal:
%pip install sympy
%then open octave, and in it's command widow type:
%pkg install -forge symbolic
%once these are done the current script should run

clearvars, close all
%pkg load symbolic

%syms x y


%x = linspace(-10,10,10000);

C = 1.0;

figure(1);
hold on
for C = -3:1:3
  ezplot(@(x,y) -x.^3 + 3.*y - y.^3 +C)
endfor
axis equal
hold off





