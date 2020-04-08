function B = Haberland_binarymat(A, N)
    % Haberland_binarymat calculates a matrix of ones and zeros, ones
    % where the element of a A is greater than N and zeros everywhere else.
    %
    %   Haberland_binarymat(A, N)
    %
    %
    %   Inputs:
    %       A: The matrix of any size, that contains positive, random 
    %          integers
    %       N: A positive integer, that serves as the boundary value
    %
    %   Output:
    %       B: The output matrix filled with ones and zeros
    %
    
    %
    %   James R. Haberland 19032003
    %   Hoover High School
    %   Ms. Harris
    %   Apr. 02 2020
    %
    
    % Row & Column Size Calculation
    [Row, Column] = size(A);
    
    % Error Trapping
    
    % Input for A
    if ~ismatrix(A)
        error('The input for A must be a matrix')
    end
    
    if ~isnumeric(A)
        error('The input for A must be made up of integers')
    end
    
    temp = 0;
    for i = 1:Row
        for j = 1:Column
            if sign(A(i,j)) < 0
                A(i,j) = A(i,j) * -1;
                temp = temp + 1;
            end
        end
    end
    
    if temp > 0
        warning(['%3.0f of the values in the input matrix were ' ...
            'negative, they were automatically made positive.'], temp)
    end
    
    % Input for N
    if ~isnumeric(N)
       error('The input for N must be an number')
    end
    
    if sign(N) < 0
       N = N * -1;
       warning('N was a negative number, it was automatically made positive')
    end
   
    
    % Created Empty B Matrix
    B = zeros(Row, Column);
    
    % Ones and Zeros Calculation
    for i = 1:Row
        for j = 1:Column
            if A(i,j) > N
                B(i,j) = 1;
            end
        end
    end    
    
end