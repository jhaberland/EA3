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
    %   Nov. 14 2019
    %
    
    % Error Trapping
    
    % Input Data Types
    if isnumeric(N) ~= 1
        error('Your number to be square rooted must be a numerical value.')
    end
    
    if isnumeric(A) ~= 1
        error('Your initial guess must be a numerical value.')
    end
    
    if isnumeric(tol) ~= 1
        error('Your tolerance must be a numerical value.')
    end
    
    % Inputs Signs
    if sign(N) == -1
        warning('N has been made a positive number.')
        N = abs(N);
    end
    
    if sign(A) == -1
        warning('A has been made a positive number.')
        A = abs(A);
    end
    
    % Tolerance Checking
    if tol < 0
        warning('The tol has been made a positive number.')
        tol = abs(tol);
    end
    
    if tol == 0
        error('You cannot have a tolerance of 0.')
    end

    % Initial Values
    iter = 0;
    aN = sqrt(N);

    % Initial Guess of Sqrt
    y = .5*((N/A)+A);

    % Square Root Calculations
    while (aN - y) > tol || (aN - y) < -tol
    y = .5*((N/y)+y);
    iter = iter + 1;
    end
    
end