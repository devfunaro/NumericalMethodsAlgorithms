
%% This program finds all of the prime numbers between two integers input by the user 

% written by devin funaro on november 14th 2018
% This program finds prime numbers between two user specefied values
% this program is written as a user defined function called by "prime(m,n)'

%% prime finder 

function [pr] = prime(m,n)

if m < 0 || n < 0
    
    error("The input argument must be a positive integer.")
    
else if m > n 
      
    error("The value of n must be larger than the value of m.")
    
    end
end


i = 1;     % The number we are checking for primness
pr=[0];    % answer array 
cn = 2;    % the current number that we are dividing by 
k = 1;     % the length of answer array 
i = m;     % sets variable i which is used in the while loop

while i < n         % This while loop steps through the values between 
                    % lower and upper bounds
    
    while cn < i        % This while loops steps through the values we are dividing by, this checks each value from 2 to the number we are looking at
                        
        if rem(i,cn) == 0       % if statement that decides weather the number we are looking at is prime or not 
            break
        else                    % if the number has no remainder than the program continues, steps up the current number by one
            cn = cn + 1;
        end
    end
    if cn == i                  % if the number we are dividing is equal to the current number than we add the number we are looking at to primes as it has passed the test 
        pr(k) = i;              % creates array that grows with answers 
        k = k + 1;              % after a value is added to the answer the array index grows by one
    end
    i = i + 1;                  % steps up the number being looked up by one 
    cn = 2;                     % the current number being devided is reset to 2 to begin the cycle again 
end

disp(' These are all of the prime numbers between your lower bound and upper bound ')

end