function [I] = Simpson(x,y)
%             ----------------------------------------
%   This function integrates y with respect to x values of the input
%   matrix, The funtion does this by using sympsons 1/3 rule.
%
%  ------------------------------------------------------------------------
%
%   NOTES:
%
%   1.  : If an odd number of intervals are specefied then the trapezoidal rule
%         is applied to the last interval of the data.
%   2.  : Equal interval spacing is required for the function to run
%         without error
%   3.  : X and Y vectors must be the same length 
%
%  ------------------------------------------------------------------------
%
%   INPUT:
%   
%   X : Array of equally spaced x coordinates that corespond with y values 
%   Y : An array of the data to be integrated with respect to the x values
%
%   OUTPUT:
% 
%   I : The value of the integral using sympsons 1/3 rule to numerically
%       integrate 

% variable input check

if nargin > 2 || nargin < 1
    
    error('MUST PASS TWO (2) INPUTS')
end

% equal spacing and oddity 

if all(linspace(x(1),x(length(x)),length(x)) == x) == 0
    
    error('X VALUES MUST BE EQUALLY SPACED')
    
end

% makes sure that the vectors are the same length 

if x~=y
    
    error('X AND Y SIZE MUST BE THE SAME')
    
end
    
% checks for oddity 

if mod(length(x),2) == 1
    
    odd = 1;
    trap = ((x(length(x))-x(length(x)-1))*(y(length(y)) + y(length(y-1)))) / 2 ;
    x = linspace(x(1),x(length(x)-1),length(x)-1);
    y = y(1:(length(y)-1))
    warning('Trapazoidal rule is implemented for the last interval of the data')
    
else
    
    odd = 0;
    
end

% calc fodd 

yodd = sum(y(:,3:2:end));

% calc feven

yeven = sum(y(:,2:2:end-1));


I = ((x(length(x))-x(1))*(y(1) + 4*yodd + 2*yeven + y(length(y)))/( 3 * length(x)));

if odd == 1
    
    I = I + trap ;
    
end
end


   




