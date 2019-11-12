function [y, iter] = Haberland_Newtsqrt(N, A, tol)
    % Haberland_Newtsqrt calculate the approximate square root of a number
    % 
    %   Haberland_Newtsqrt(N, A, tol)
    % 
    %
    %   Inputs:
    %       N: The number you want a square root of
    %       A: Your guess of the square root
    %       tol: The tolerance between the real square root and the
    %       outputed square root
    % 
    %   Outputs:
    %       y: The approx square root of the input number
    %       iter: The number of iteration it took to get the approx sqrt
    % 
    
    %
    %   James R. Haberland 19032003
    %   Hoover High School
    %   Ms. Harris
    %   Nov. 12 2019
    %
    
% Calculates The Tolerances
tol1 = -1*tol;

% 
iter = 0;
aN = sqrt(N);

% Initial Guess of Sqrt
y = .5*((N/A)+A);

% Square Root Calculations
while (aN - y) > tol || (aN - y) < tol1
    y = .5*((N/y)+y);
    iter = iter + 1;
end
    
end