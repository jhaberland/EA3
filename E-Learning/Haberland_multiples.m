function m = Haberland_multiples(N, low, high)
    % Haberland_multiples takes a number and it finds the multiples of that
    % number within the user specified range of numbers.
    %
    %   Haberland_multiples(N, low, high)
    %
    %
    %   Inputs:
    %       N: The positive integer the user wants to find the
    %          multiples of
    %       low: The lowest number in the range
    %       high: The highest number in the range
    %
    %   Output:
    %       m: Vector that contains the multiples of N within the range
    %          from low to high which is specifed by the user
    %
    
    %
    %   James R. Haberland 19032003
    %   Hoover High School
    %   Ms. Harris
    %   Apr. 17 2020
    %
    
    % Error Trapping
    
    % Data Type Check
    if ~isnumeric(N)
        error('The value for N must be a number.')
    end
    
    if ~isnumeric(low)
        error('The value for low must be a number.')
    end
    
    if ~isnumeric(high)
        error('The value for high must be a number.')
    end
    
    % Positive Number Check
    if N < 0
        error('The value for N must be a positive number.')
    end
    
    if low < 0
        error('The value for low must be a positive number.')
    end
    
    if high < 0
        error('The value for high must be a positive number.')
    end
    
    % Low < High Check
    if low > high
        warning(['The value for low was greater than the ' ...
            'value for high, so they were automatically switched.'])
        temp = low;
        low = high;
        high = temp;
    end
    
    
    % Low Value
    Low = ceil(low/N)*N;
    
    % High Value
    High = floor(high/N)*N;
    
    % Final Vector
    m = Low:N:High;
    
end