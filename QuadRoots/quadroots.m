%% Devin Funaro's quadratic solver

% Quadtratic solver 
% Created on november 5th
% created by devin funaro 
% user inputs a b and c and solves for the roots of that equation 

clear 
clc

% initialize variables

roots1 = [0 0];
roots2 = [0 0];
abc = [0 0 0];
d = 0;

disp(' for solving with the quadratic formula we require three coefecients of form ax^2+bx+c ')
abc(1) = input(' Please input a ');
abc(2) = input(' Please input b ');
abc(3) = input(' Please input c ');

d = abc(2)^2-4*abc(1)*abc(3);

if d < 0
    
    disp(" there are no real roots ")
    
else if d == 0
    
     roots1 = (-abc(2) + sqrt(abc(2)^2-4*abc(1)*abc(3)))/(2*abc(1));
     disp(' There is one real root for this equation ')
     fprintf('%.3f', roots1)
    
    else
    
        roots2(1) = (-abc(2) + sqrt(abc(2)^2-4*abc(1)*abc(3)))/(2*abc(1));
        roots2(2) = (-abc(2) - sqrt(abc(2)^2-4*abc(1)*abc(3)))/(2*abc(1));
        disp(' There are two real roots for this equation ' )
        fprintf('\n%.3f,%.3f', roots2(1), roots2(2))
        
    end
end



    