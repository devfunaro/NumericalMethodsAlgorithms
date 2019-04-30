function [L,U,P] = luFactor(A)
%**************************************************************************
%This Function Decomposes a square matrix using the LU decomposition method
%
%******************        INPUTS     *************************************
%
%  A: a coefecient matrix that represents your system of equations; must be
%     square
% 
%*******************      Outputs     ************************************* 
%
%  L - the lower triangular matrix
%
%  U - upper traingular matrix 
%
%  P - the pivot matrix
%
%**************************************************************************

% Error Checking 


if nargin > 1  % Makes sure only one input is given
    error('Too many inputs given, Only one square matrix will be accepted')
end

[H,W] = size(A); % determines the dimensions of the matrix 

if H ~= W  % makes sure that the dimensions of the matrix agree
    error('MATRIX DIMENSIONS DISAGREE (input must be square)')
end

% error check complete, initialize variables

U = A;  % U is the variable we will manipulate
L = zeros(H);  % L is the lower triangular matrix, treated as zero matrix for now
P = eye(H);   %  P is the pivot matrix and begins as the identity matrix


iter = 1; % counter for iterations 
for c = iter:W-1 % For loop, as it iterates it steps across the colums of the matrix 
    
    for r = iter+1:H % for loop that runs and steps down the rows of the matrix, steps down in a diagonal pattern
    
        if abs(U(r-1,c)) < max(abs(U((r-1):H,c))) && r == iter+1   % decides wether a pivot is needed, only on the first row thats being checked for each column
            Pivot = (find(abs(U((r-1):H,c)) == max(abs(U((r-1):H,c))))+r-2);  % creates a pivot variable that shows what row has the largest leading number
            % must now swap largest row into position in question
            P([r-1,Pivot],:)= P([Pivot,r-1],:) ;  % swaps the rows coresponding to pivot number (where max lies) and current elimination position
            U([r-1,Pivot],:)= U([Pivot,r-1],:) ;  % swaps the rows coresponding to pivot number (where max lies) and current elimination positio
            L([r-1,Pivot],:)= L([Pivot,r-1],:);   % swaps the rows coresponding to pivot number (where max lies) and current elimination positio
        end
        
        % perform gaussian elimination 
        
        L(r,c) = (U(r,c)/U(iter,c)) ;  % assigns the multiplication factor to the correct position in the L matrix
        U(r,:) = (U(r,:) - ((U(iter,:) .* (U(r,c)/U(iter,c))))) ;   % performs elimination to eliminate number in (r,c) position
        
       
    end
    
    iter = iter + 1;   % counts another iteration 
    
end

L = L + eye(H);   % transforms the L matrix to include the diagonal 1's that fit the standard form

end

