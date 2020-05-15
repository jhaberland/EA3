function [volume, weight] = Haberland_density(material, shape, dim1, dim2, dim3)
    % Haberland_density takes three dimensions of an object and the
    % material it is made of. With that it calculates the volume and weight
    % of the object.
    %
    %   Haberland_density(material, shape, dim1, dim2, dim3)
    %
    %
    %   Inputs:
    %       material: A string that contains the name of the material
    %       (Incl. aluminum, copper, iron, tin, titanium, silver, zinc, 
    %       and gold).
    %       shape: A string that contains the name of a shape (Incl.
    %       sphere, cube, and rectangular slab).
    %       dim1: If the shape is a sphere it's the radius in m, if the 
    %       shape is a cube its a width in m, and if the shape is a
    %       rectangular slab it is the length in m.
    %       dim2: The width of a rectangular slab in m.
    %       dim3: The height of a rectangular slab in m.
    %
    %   Outputs:
    %       volume: The volume of the shape in cubic meters.
    %       weight: The weight of the object in Newtons
    %
    
    %
    %   James R. Haberland 19032003
    %   Hoover High School
    %   Mrs. Harris
    %   Apr. 21 2020
    %
    
    % Inital Process
    material = lower(material);
    shape = lower(shape);
    
    % Error Trapping
    
    % Materials
    if ~ischar(material)
        error('The input for material must be a string.')
    end
    
    if strcmp(material,{'aluminum', 'copper', 'iron', 'tin', ...
            'titanium', 'silver', 'zinc', 'gold'}) ~= 1
        error(['The input for a material must be either aluminum, ' ...
            'copper, iron, tin, titanium, silver, zinc, or gold.'])
    end
    
    % Shapes
    if ~ischar(shape)
        error('The input for the shape must be a string.')
    end
    
    if strcmp(shape, {'sphere', 'cube', 'rectangular slab'}) ~= 1
        error(['The input for the shape must be either sphere, cube, ' ...
            'or a rectangular slab.'])
    end
    
    % Dimensions
    if strcmp(shape, 'sphere') == 1 || strcmp(shape, 'cube') == 1
        if ~isnumeric(dim1)
            error('The input for dim1 must be a number.')
        end
    
        if dim1 <= 0
            error('The input for dim1 cannot be 0 or a negative number.')
        end
    
    elseif strcmp(shape, 'rectangular slab') == 1
        if ~isnumeric(dim2)
            error('The input for dim2 must be a number.')
        end
    
        if dim2 <= 0
            error('The input for dim2 cannot be 0 or a negative number.')
        end
    
        if ~isnumeric(dim3)
            error('The input for dim3 must be a number.')
        end
    
        if dim3 <= 0
            error('The input for dim3 cannot be 0 or a negative number.')
        end
    end
    
    % Desnsity (kg/m^3)
    if strcmp(material, 'aluminum') == 1
        density = 2699;
    elseif strcmp(material, 'copper') == 1
        density = 8940;
    elseif strcmp(material, 'iron') == 1
        density = 7873;
    elseif strcmp(material, 'tin') == 1
        density = 7265;
    elseif strcmp(material, 'titanium') == 1
        density = 4506;
    elseif strcmp(material, 'silver') == 1
        density = 10490;
    elseif strcmp(material, 'zinc') == 1
        density = 7133;
    elseif strcmp(material, 'gold') == 1
        density = 19320;
    end
    
    % Volume and Weight Calculations
    if strcmp(shape, 'sphere') == 1
        volume = (4/3) * pi * dim1^3;
        weight = (density * volume) * 9.8;
    elseif strcmp(shape, 'cube') == 1
        volume = dim1^3;
        weight = (density * volume) * 9.8;
    elseif strcmp(shape, 'rectangular slab') == 1
        volume = dim1 * dim2 * dim3;
        weight = (density * volume) * 9.8;
    end
    
end