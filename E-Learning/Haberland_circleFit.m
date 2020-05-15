function [radius, xCenter, yCenter] = Haberland_circleFit(x1, y1, x2, y2, x3, y3)
    % Haberland_circleFit takes three x and y coordinate pairs and finds the
    % radius as well as the coordiante pair of the center of the circle.
    %
    %   Haberland_circleFit(x1, y1, x2, y2, x3, y3)
    %
    %
    %   Inputs:
    %       x1: The x part of the first coordiante pair.
    %       y1: The y part of the first coordiante pair.
    %       x2: The x part of the second coordiante pair.
    %       y2: The y part of the second coordiante pair.
    %       x3: The x part of the third coordiante pair.
    %       y3: The y part of the third coordiante pair.
    %
    %   Outputs:
    %       radius: The radius of the circle.
    %       xCenter: The x coordinate of the circle's center.
    %       yCenter: The y coordinate of the circle's center.
    %
    
    %
    %   James R. Haberland 19032003
    %   Hoover High School
    %   Mrs. Harris
    %   May 15 2020
    %
    
    % Error Trapping
    if ~isnumeric(x1) || ~isnumeric(y1) || ~isnumeric(x2) || ~isnumeric(y2) || ~isnumeric(x3) || ~isnumeric(y3)
        error('All of the input values must be numeric values.')
    end
    
    % Initial Calculations
    ma = (y2 - y1)/(x2 - x1);
    
    mb = (y3 - y2)/(x3 - x2);
    
    % Error Trapping (cont'd)
    if mb - ma == 0
        error('A circle cannot be generated with these points.')
    end
    
    if isinf(ma) == 1 || isinf(mb) == 1
        error('Please rearrange the order of the points input into the function.')
    end
    
    % xCenter
    xCenter = (ma*mb*(y1 - y3) + mb*(x1 + x2) - ma*(x2 + x3))/(2*(mb - ma));
    
    % yCenter
    yCenter = (-1/ma)*(xCenter - ((x1 + x2)/2)) + ((y1 + y2)/2);
    
    % Radius
    radius = sqrt((xCenter - x1)^2 + (yCenter - y1)^2);
    
end