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
    %   Nov. 12 2019
    %
    
    rng(0,'twister');
    outmat = (upper-lower).*rand([nrows,ncols]) + lower;
    
end

