function [root,fx,ea,iter] = falsePosition(func,xl,xu,es,maxiter)
%This Function finds roots based on the false position method 
%   falsePosition(func,xl,xu,es,maxiter)
%
%   there must be a sign change between func(xl) and func(xu)
%
%   xl and xu MUST bracket the root you are searching for, additionaly xl
%   and xu MUST NOT bracket more than one root.
%
%   input explanation 
%   func - char vector of the function you want evaluated 
%   xl - the lower bound of the search 
%   xu - the upper bound of the search 
%   es - *optional(defaults to .0.0001%)* stopping crieterion in percent
%   maxiter - *optional(defaults to 200)* maximum iterations 

% This section provides feedback to user based on their input

format long

switch nargin
    
    case 0
        error('please input (function, low guess, high guess , *optional end criterion*, *optional max iterations*) \n')
    case 3 % Lets the user know that the maximum iterations and stopping criterion are set to the defaults
        fprintf('Three variables input, default values for "es" and "maxiter" assigned, if you need an explanation of inputs type "help falsePosition" or "falsePosition() \n')
        maxiter = 200; % number of iterations
        es = .0001; % percent
    case 4 % Lets the user know that the maximum iterations and stopping criterion are set to the defaults
        fprintf('four variables input, default values for "maxiter" assigned,if you need an explanation of inputs type "help falsePosition" or "falsePosition()  \n')
        maxiter = 200; % number of iterations
    case 5 % fully defined no action needed
        fprintf('five input variables assigned\n')
        
    otherwise
        
        if nargin > 5 % too many variables 
            error('Too many user inputs, maximum of four inputs availible. if you need an explanation of inputs type "help falsePosition" or "falsePosition()"')
        else if nargin < 3 % not enough variables 
                error('Not Enough User inputs, three inputs are required, if you need an explanation of inputs type "help falsePosition" or "falsePosition()"')
            else % some other unforseen case, see help section 
                error('error in variable input, if you need an explanation of inputs type "help falsePosition" or "falsePosition()"')
            end
        end
end


% sign change check 

if sign(func(xl)) == sign(func(xu))  %checks the high and low to ensure that there is a sign change 
    error('No sign change over the interval, please bracket a single root')
end

% calculate first xr
xr = (xu - ((func(xu)*(xl-xu))/(func(xl)-func(xu))));

% assign a few starting parameters 
rel_error = 100;
iter = 1;

% loop through finding the root

while rel_error > es && iter < maxiter ; % continues looping if the relative errore and max iterations are within bounds
   
    % checks the sign at the lower and upper bound 
    
    xr_old = xr ; %stores the old guess for the relative error 
    
    if sign(func(xl)) == sign(func(xr))
       xl = xr; % re assigns the lower bound to the guess if signs are opposite
    else
       xu = xr ; % re assigns the lower bound to the guess if signs are opposite
    end
    
    xr = (xu - ((func(xu)*(xl-xu))/(func(xl)-func(xu)))) ; % re calculates a new guess
    
    rel_error = abs(((abs(xr - xr_old) / xr)))*100 ; % calculates the percent relative error 
    
    iter =  iter+1 ; % add on one iteration 
    
end

% outputs pertinent information 

fprintf('\n-----  output  -----\n') % for prettyness
fprintf('\nRoot = %6.5f',xr) % ouputs root
fprintf('\nfx = %6.5f',func(xr)) % outputs the value of the function at the root 
fprintf('\nea = %6.5f%%',rel_error) % outputs the relative error 
fprintf('\nIterations = %3.0f\n',maxiter) % ouputs the iterations it took to reach this conclusion
fprintf('\n--------------------\n')

end

