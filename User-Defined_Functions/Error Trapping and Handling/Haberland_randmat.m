function outmat = Haberland_randmat(nrows, ncols, lower, upper)
    % Haberland_randmat creates a matrix of random numbers.
    %
    %   Haberland_randmat(nrows, ncols, lower, upper)
    %
    %   Inputs:
    %       nrows: The number of rows you want in the matrix
    %       ncols: The number of columns you want in the matrix
    %       lower: The lowest number possibly generated
    %       upper: The highest number possibly generated
    %
    %   Outputs:
    %       outmat: The output matrix with the random generated numbers
    %
    
    %
    %   James R. Haberland 19032003
    %   Hoover High School
    %   Ms. Harris
    %   Nov. 14 2019
    %
    
    % Error Trapping
    
    % Input Data Types
    if isnumeric(nrows) ~= 1
        error('nrows must be a numerical value.')
    end
    
    if isnumeric(ncols) ~= 1
        error('ncols must be a numerical value.')
    end
    
    if isnumeric(upper) ~= 1
        error('upper must be a numerical value.')
    end
    
    if isnumeric(lower) ~= 1
        error('lower must be a numerical value.')
    end
    
    % Sign of the columns and rows
    if sign(nrows) ~= 1
        warning('The number you put in for the rows was made a positive number.')
        nrows = -nrows;
    end
    
    if sign(ncols) ~= 1
        warning('The number you put in for the columns was made a positive number.')
        ncols = -ncols;
    end
    
    % Limit Size
    if upper < lower
        warning('The upper and lower limit values have been switched, because the upper limit was smaller than the lower limit.')
        temp = lower;
        lower = upper;
        upper = temp;
    end
    
    % Actual Code
    rng(0,'twister');
    outmat = (upper-lower).*rand([nrows,ncols]) + lower;
    
end

