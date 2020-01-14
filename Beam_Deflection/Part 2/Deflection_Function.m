function [y, x] = Deflection_Function(F, me, moi, l)

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
  %   January 14th 2020
  % --------------------------------------------------------------------

  % Simply Supported and Uniform
    x = 0:0.2:l;
    for i = 1:length(x)
        y(i) = (((F/l)*x(i))/(24*me*moi))*((l^3) - (2*l*(x(i)^2)) + (x(i)^3));
    end
end