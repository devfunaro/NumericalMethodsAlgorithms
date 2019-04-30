% tests lu factor function 

clear
clc

% test random numbers and size

A = randi([-100 100],randi([3 8]));

% test non square matrix

% A = [1 2 3; 1 2 3]

% test worked out equation

%A = [0 -3 7;1 2 -1;5 -2 0]

[L,U,P] = luFactor(A);
[l,u,p] = lu(A);

L 
l
U
u
p
P