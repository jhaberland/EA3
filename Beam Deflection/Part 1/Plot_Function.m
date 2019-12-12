function [DeflectionGraph] = Plot_Function(y, x, Load, Support, BeamMaterial, Beam, F)
    
  % This script will output a plot showing the original beam and the deflected beam based on the inputs provided
  %
  %    Input
  %       a. Support = Type of support (cantilevered or simply supported)
  %       b. Load = Type of load (point or uniform)
  %       c. F = force of the load
  %       d. BeamMaterial = This is the material the beam is made of.
  %       e. Beam = Type of beam being used
  %       f. x = length of the beam as a vector
  %       g. y = deflection of the beam as a vector
  %   Ouput
  %       a. DeflectionGraph = 
  %
  %   James Haberland and Sophia Nateghi
  %   Hoover High School
  %   Ms. Harris
  %   December 10th 2019
  % ------------------------------------------------------------------------
    
    % Error Trapping
    if isnumeric(Support) ~= 1
        error("The input for the support type must be a numeric value")
    end
    
    if isnumeric(Load) ~= 1
        error("The input for the load type must be a numeric value")
    end
    
    if isnumeric(BeamMaterial) ~= 1
        error("The input for the Beam Material must be a numeric value")
    end
    
    if isnumeric(Beam) ~= 1
        error("The input for beam type must be a numeric value")
    end
    
    if isnumeric(F) ~= 1
        error("The input for the force must be a numeric value")
    end
    
    
    % Support Type
    switch Support
        case 1
            Support1 = 'Cantilevered';
        case 2
            Support1 = 'Simply Supported';
    end
    
    % Load Type
    switch Load
        case 1
            Load1 = 'point';
        case 2
            Load1 = 'uniform';
    end
    
    % Beam Material
    switch BeamMaterial
       case 1
            BeamMaterial1 = 'Aluminum';
        
       case 2
            BeamMaterial1 = 'Brass';
        
       case 3
            BeamMaterial1 = 'Chromium';
        
       case 4
            BeamMaterial1 = 'Copper';
        
       case 5
            BeamMaterial1 = 'Iron';
        
       case 6
            BeamMaterial1 = 'Lead';
        
       case 7
            BeamMaterial1 = 'Steel';

       case 8
            BeamMaterial1 = 'Tin';
        
       case 9
            BeamMaterial1 = 'Titanium';
        
       case 10
            BeamMaterial1 = 'Zinc';
        
    end

    % Beam Type
    switch Beam
        case 1
            Beam1 = 'Rectangle';
        case 2
            Beam1 = 'Hollow Rectangle';
        case 3
            Beam1 = 'T-Beam';
        case 4
            Beam1 = 'I-Beam';
    end
    
    % Makes The Original Beam
    orig = zeros(1,length(x));
    
    % Making The Graph Negative
    y = y * -1;
    
    % Deflection Graph
    DeflectionGraph = figure;
    plot(x, orig, 'k--', x, y, 'b-', 'LineWidth', 2);
    
    % Axis Labels and Title
    title(sprintf('Beam Deflection for a %s \n %3.0f lb. %s load applied to a(n) %s %s beam', Support1, F, Load1, BeamMaterial1, Beam1));
    xlabel('Location Along the Beam (inches)');
    ylabel('Beam Deflection (inches)');
    
end