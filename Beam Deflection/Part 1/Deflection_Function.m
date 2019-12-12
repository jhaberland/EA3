function [y, x] = Deflection_Function(SupportType, LoadType, F, me, moi, l, a)

  % This script will output a vector for the deflection of the beam based on the variables given
  %
  %    Input
  %       a. SupportType = Type of support (cantilevered or simply supported)
  %       b. LoadType = Type of load (point or uniform)
  %       c. F = force of the load
  %       d. me = elasticity of the beam based on material
  %       e. moi = moment of inertia
  %       f. l = total length of the beam
  %       g. a = point of force on the beam (if point load)
  %   Ouput
  %       a. y = vector for the deflection
  %
  %   James Haberland and Sophia Nateghi
  %   Hoover High School
  %   Ms. Harris
  %   December 10th 2019
  % ------------------------------------------------------------------------
    
  % Error Trapping
  if isnumeric(SupportType) ~= 1
        error("The input for the support type must be a numeric value")
  end
    
  if isnumeric(LoadType) ~= 1
        error("The input for the load type must be a numeric value")
  end
    
  if isnumeric(F) ~= 1
        error("The input for the force must be a numeric value")
  end
    
  if isnumeric(me) ~= 1
        error("The input for the modulus elasticity must be a numeric value")
  end
    
  if isnumeric(moi) ~= 1
        error("The input for the moment of intertia must be a numeric value")
  end
  
  if isnumeric(l) ~= 1
        error("The input for the length of the beam must be a numeric value")
  end
  
  if isnumeric(a) ~= 1
        error("The input for placement on beam must be a numeric value")
  end
    
    
  
  
  
  
  
  
  b = l-a;
    
    
    % Cantilevered and Point
    if SupportType == 1 && LoadType == 1
        x = 0:0.2:(l-.2);
        for i = 1:length(x)
            if x(i) > 0 && x(i) <= a
                y(i) = ((F*(x(i)^2))/(6*me*moi))*((3*a) - x(i));
            elseif x(i) > a && x(i) < l
                y(i) = ((F*(a^2))/(6*me*moi))*((3*x(i)) - a);
            end
        end
    end
    
    % Cantilevered and Uniform
    if  SupportType == 1 && LoadType == 2
        x = 0:0.2:l;
        for i = 1:length(x)
            y(i) = ((F/l)*(x(i)^2)/(24*me*moi))*((x(i)^2)+(6*(l^2)) - (4*l*x(i)));
        end
    end
    
    % Simply Supported and Point
    if SupportType == 2 && LoadType == 1
        x = 0:0.2:(l-.2);
        for i = 1:length(x)
            if x(i) > 0 && x(i) <= a
                y(i) = ((F*b*x(i))/(6*l*me*moi))*((l^2) - (x(i)^2) - (b^2));
            elseif x(i) > a && x(i) < l
                y(i) = ((F*b)/(6*l*me*moi))*((l/b)*((x(i) - a)^3) + ((l^2) - (b^2))*x(i) - (x(i)^3));
            end
        end
    end
    
    % Simply Supported and Uniform
    if  SupportType == 2 && LoadType == 2
        x = 0:0.2:l;
        for i = 1:length(x)
            y(i) = (((F/l)*x(i))/(24*me*moi))*((l^3) - (2*l*(x(i)^2)) + (x(i)^3));
        end
    end
end