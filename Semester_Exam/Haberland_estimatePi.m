function piValue = Haberland_estimatePi(n)
    
    %   This function calculates approximately the value of π
    % 
    %   Input: The number of times to use the formula
    % 
    %   Output: An estimate for pi based on your input.
    % 
    
    %
    %   James Haberland
    %   Mrs. Harris
    %   Engineering Academy 3
    %   Dec. 18 2019
    %
    
    
    % Error Trapping
    if isnumeric(n) ~= 1
        error("n must be a numeric input")
    end
    
    
    % Sets the original value of piValue to 1
    piValue = 1;
    
    
    % Calculates the approximate value of π/2
    for i = 1:n
        Temp = (((2*i)^2)/((2*i-1)*(2*i+1)));
        piValue = piValue*Temp;
    end
    
    
    % Multiplies π/2 by 2
    piValue = piValue*2;
    
    
    % To get an estimate of 3.1415 you need to put in 6000 for n
    
end