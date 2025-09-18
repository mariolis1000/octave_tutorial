  % Always starting new
clc, clearvars


X = 1:2:10;    % Create a vector from 1 through 10
Y = X.^2;      % Element operations must use dot .
Y';            % X transpose , A^T anastrofos

x = linspace(0, 100, 10);
% Creates a vector of size 10 randomly generated numbers between 0 and 100
% If no 3rd argument exists, it defaults to 100

y = [12, 50, -50, -100];

A = [1, 3; 2, -10];
I = [0, 1; 1 0];
II = [-1, 0; 0, -1];
A * I;


P = [5 3 4.2; 8 9 0; 17 25 42]
% use P(2,:) to access the entire second row
% or P(:,2) for the 2nd collumn
% also  P2(2, 1:3), to get "from the first through the third" value

