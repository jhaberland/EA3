function [DeflectionGraph] = Plot_Function(y, x)
    
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
  %       a. DeflectionGraph = final graph with all the materials on it
  %
  %   James Haberland and Sophia Nateghi
  %   Hoover High School
  %   Ms. Harris
  %   January 14th 2020
  % ----------------------------------------------------------------
    
    Colors = {'	#01cdfe','r','#800080','#b967ff','#fdfe02','#05ffa1'};
    % Makes The Original Beam
    orig = zeros(1,length(x{1}));
    plot(x{1}, orig, 'Color', '#ff71ce', 'LineWidth', 3)
    hold on;
    grid on;
    
    
    for i = 1:6
        % Making The Graph Negative
        y{i} = y{i} * -1;
    
        % Deflection Graph
        plot(x{i}, y{i}, 'Color', Colors{i}, 'LineWidth', 2);
    end
    title(sprintf('Beam Deflection for a simply supported beam \n 10 lb. uniform load applied to a rectangular beam'), 'Fontweight','bold');
    xlabel('Location Along the Beam (inches)', 'Fontweight','bold');
    ylabel('Beam Deflection (inches)', 'Fontweight','bold');
    legend('Original','Aluminum','Chromium','Lead','Tin','Titanium','Zinc','Location','southeast');
end