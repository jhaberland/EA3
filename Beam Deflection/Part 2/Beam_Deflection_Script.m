% Beam Deflection Project - Part 2
% Sophia Nateghi
% Hoover High
% Mrs. Harris
%
% Start Date: January 6th 2019
% Last Revised on: January 14th 2020
%
% Purpose: To  create the computer model that will determine the deflection of a beam based on input 
%          parameters that include the beam material, beam cross-section, type of beam support, and the 
%          load applied to the beam.
%
% Pseudocode:
%    1. Input and user Promts:
%       a. Moment of Inertia
%           1) b = base of the beam (in inches)
%           2) h = height of the beam (in inches)
%           3) SupportType = type of beam 
%       b. Elasticity
%           1) Beam = material used in beam 
%              a) aluminum, brass, chromium, copper, iron, lead, steel, tin, titanium, zinc
%       c. Deflection
%           1) SupportType = support for the beam 
%           2) LoadType = type of load being applied 
%           3) F = force of the load being applied (in Newtons)
%           4) a = place on beam where load is applied (in inches)
%   2. Call the following functions:
%       a. Moment_Of_Inertia_Function
%       b. Elasticity_Function
%       c. Deflection_Function
%       d. Plot_Function
%   3. Output the following information:
%       a. Final plot for all materials
%
% Functions Called: (beyond built-in function)
%                    Deflection_Function           Elasticity_Function
%                    Moment_Of_Inertia Function    Plot_Function
%
% --------------------------------------------------------------------

clc,clear

    % Variables (base, height, length, thickness, force, point of force)
    b = 2;
    h = 1;
    l = 25;
    t = 0;
    F = 10;
    a = 0;
    % Uniform Load
    Load = 2;
    % Rectangle Beam
    Beam = 1;
    % Simply Supported
    Support = 1;
    
    % Beam Materials
    BeamMaterial0 = {1, 3, 6, 8, 9, 10};
    for i = 1:6
        BeamMaterial = BeamMaterial0{i};
 
        % Functions
        MOI = Moment_Of_Inertia_Function(b, h);
        Elactisity = Elasticity_Function(BeamMaterial);
        [y{i}, x{i}] = Deflection_Function(F, Elactisity, MOI, l);    
        % Plot_Function(y{i},x{i});
    end
    Plot_Function(y,x);
    