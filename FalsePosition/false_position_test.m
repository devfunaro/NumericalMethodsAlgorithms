clear
clc

% u = .55;
% g = 9.81;
% f = 150;
% m = 25;

% f = @(theta) (u*m*g/(cos(theta)+u*sin(theta))

%func = @(theta) (((.55*25*9.81)/(cosd(theta)+.55*sind(theta))) - 150)
func = @(x) ((-1.5*6)*x^5-8*x^3+12) ;

xl = .1 ;
xu = 1.5 ;
es = 1 ;
maxiter = 300 ;

falsePosition(func,xl,xu,es,maxiter)

