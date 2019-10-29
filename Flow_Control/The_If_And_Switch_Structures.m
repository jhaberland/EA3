%% Perimiter and Area Calculations using only if/elseif/else
%   Filename: The_If_And_Switch_Structures.m
% ------------------------------------------------------------------------
%   James R. Haberland 19032003
%   Hoover High School
%   Ms. Harris
%
%   Start Date: Oct 20, 2019
%   Last Revised On: Oct 21, 2019
%
%   Purpose: Get a shape from the user and take inputs from the user to
%   calculate the area and perimiter
%
%   Psuedocode:
%   1. Take input for the shape the user wants to calculate the area and
%   perimiter for.
%   2. Based on the input for ask for the inputs for the shape based on
%   whatever is needed to do the calculations.
%   3. Calculate the area and perimeter for the given shape.
%   4. Neatly output the area and perimeter.
%
%   Variables:
%       Shape: This is the shape the user wants to do math with
%       RecLength: The length of the rectangle
%       RecWidth: The width of the rectangle
%       RecArea: The area of the rectangle
%       RecPerimeter: The perimeter of the rectangle
%       SqrSide: The length of each side of the square
%       SqrArea: The area of the square
%       SqrPerimeter: The perimeter of the square
%       TriSide: This is the length of each side of the equilateral triangle
%       TriArea: This is the area of the equilateral triangle
%       TriPerimeter: This is the perimeter of the equilateral triangle
%       CirRadius: This is the radius of the circle
%       CirArea: This is the area of the circle
%       CirPerimeter: This is the circumference of the circle
%
%   Functions Called: (beyond built-in function)
%                       none
% ------------------------------------------------------------------------


% Input

Shape = input("Input the number of the shape you want to calculate the are for:\n\n1. Rectangle\n2. Square\n3. Equilateral Triangle\n4. Circle");

% Rectangle
if Shape == 1
    RecLength = input('What is the desired length of the rectangle?');
    RecWidth = input('What is the desired width of the rectangle?');
    
    RecArea = RecWidth*RecLength;
    RecPerimeter = 2*(RecLength+RecWidth);
    
    fprintf('The area of your rectangle is %5.1f.\nThe perimiter of your rectangle is %5.1f',RecArea,RecPerimeter)
    
% Square
elseif Shape == 2
    SqrSide = input('What is the desired side length of the square?');
    
    SqrArea = SqrSide^2;
    SqrPerimeter = SqrSide*4;
    
    fprintf('The area of your square is %5.1f.\nThe perimiter of your square is %5.1f',SqrArea,SqrPerimeter)

% Equilateral Triangle
elseif Shape == 3
    TriSide = input('What is the desired side length of the equilateral triangle?');
    
    TriArea = (sqrt(3)/4)*(TriSide^2);
    TriPerimeter = TriSide*3;
    
    fprintf('The area of your equilateral triangle is %5.1f.\nThe perimiter of your equilateral triangle is %5.1f',TriArea,TriPerimeter)

% Circle
elseif Shape == 4
    CirRadius = input('What is the radius of the circle?');
    
    CirArea = pi*CirRadius^2;
    CirPerimeter = 2*pi*CirRadius;
    
    fprintf('The area of your circle is %5.1f.\nThe circumference of your circle is %5.1f',CirArea,CirPerimeter)

% Invalid Shape
else
    disp('That is not a valid shape')
end

%% Density Calculations
%   Filename: The_If_And_Switch_Structures.m
% ------------------------------------------------------------------------
%   James R. Haberland 19032003
%   Hoover High School
%   Ms. Harris
%
%   Start Date: Oct 21, 2019
%   Last Revised On: Oct 21, 2019
%
%   Purpose: Output the density of of a user selected elemement with units
%   of varying volumes and masses
%
%   Psuedocode:
%   1. Take the input the type of element the user wants from the list.
%   2. Take the input for the units of the outputed density the user
%   wants.
%   3. Calculate the density based on the element and the units the user chose.
%   4. Neatly output the element name, and density with the respective
%   units
%
%   Variables:
%       Element: This is the element the user wants the density for
%       MUnits: This is the units for mass
%       VUnits: This is the units for volume
%       ElementDensity: This is the density of the desired element in
%       g/cm^3
%       ElementName: This is the name of the desired element
%       EVD: This is the density after converting the volume units
%       DFinal: This is the final density of the element with the chosen
%       units by the user
% 
%   Functions Called: (beyond built-in function)
%                       none
% ------------------------------------------------------------------------


Element = input("Enter the number of the material being used: \n\n1. Hydrogen (gas)\n2. Helium (gas)\n3. Nitrogen (gas)\n4. Benzene (liquid)\n5. Ethanol (liquid)\n6. Mercury (liquid)\n7. Magnesium (solid)\n8. Copper (solid)\n9. Gold (solid)");
MUnits = input('Enter the number for the type units being used for mass\n\n1. Kilograms (kg)\n2. Grams (g)\n3. Milligram (mg)');
VUnits = input('Enter the number for the type units being used for volume\n\n1. Meters^3 (m^3)\n2. Centimeters^3 (cm^3)\n3. Millimeters (mm^3)\n4. Liters (L)\n5. Milliliters (mL)');

switch Element
    
    case 1
        ElementDensity = 0.00009;
        ElementName = 'Hydrogen (gas)';
    case 2
        ElementDensity = 0.000178;
        ElementName = 'Helium (gas)';
    case 3
        ElementDensity = 0.001251;
        ElementName = 'Nitrogen (gas)';
    case 4
        ElementDensity = 0.900;
        ElementName = 'Benzene (liquid)';
    case 5
        ElementDensity = 0.810;
        ElementName = 'Ethanol (liquid)';
    case 6
        ElementDensity = 13.6;
        ElementName = 'Mercury (liquid)';
    case 7
        ElementDensity = 1.7;
        ElementName = 'Magnesium (solid)';
    case 8
        ElementDensity = 8.3;
        ElementName = 'Copper (solid)';
    case 9
        ElementDensity = 19.3;
        ElementName = 'Gold (solid)';
        
end


switch VUnits
    
    case 1
        EDV = ElementDensity*1000000;
        VUnits = 'm^3';
    case 2
        EDV = ElementDensity;
        VUnits = 'cm^3';
    case 3
        EDV = ElementDensity*0.001;
        VUnits = 'mm^3';
    case 4
        EDV = ElementDensity*1000;
        VUnits = 'L';
    case 5
        EDV = ElementDensity;
        VUnits = 'mL';
end


switch MUnits
    
    case 1
        DFinal = EDV/1000;
        MUnits = 'kg';
    case 2
        DFinal = EDV;
        MUnits = 'g';
    case 3
        DFinal = EDV*1000;
        MUnits = 'mg';
end

fprintf('%s has a density of %5.2f %s/%s',ElementName,DFinal,MUnits,VUnits)


%% Perimiter and Area Calculations using only switch/case/otherwise
%   Filename: The_If_And_Switch_Structures.m
% ------------------------------------------------------------------------
%   James R. Haberland 19032003
%   Hoover High School
%   Ms. Harris
%
%   Start Date: Oct 20, 2019
%   Last Revised On: Oct 21, 2019
%
%   Purpose: Get a shape from the user and take inputs from the user to
%   calculate the area and perimiter
%
%   Psuedocode:
%   1. Take input for the shape the user wants to calculate the area and
%   perimiter for.
%   2. Based on the input for ask for the inputs for the shape based on
%   whatever is needed to do the calculations.
%   3. Calculate the area and perimeter for the given shape.
%   4. Neatly output the area and perimeter.
%
%   Variables:
%       Shape: This is the shape the user wants to do math with
%       RecLength: The length of the rectangle
%       RecWidth: The width of the rectangle
%       RecArea: The area of the rectangle
%       RecPerimeter: The perimeter of the rectangle
%       SqrSide: The length of each side of the square
%       SqrArea: The area of the square
%       SqrPerimeter: The perimeter of the square
%       TriSide: This is the length of each side of the equilateral triangle
%       TriArea: This is the area of the equilateral triangle
%       TriPerimeter: This is the perimeter of the equilateral triangle
%       CirRadius: This is the radius of the circle
%       CirArea: This is the area of the circle
%       CirPerimeter: This is the circumference of the circle
%
%   Functions Called: (beyond built-in function)
%                       none
% ------------------------------------------------------------------------


% Input

Shape = input("Input the number of the shape you want to calculate the are for:\n\n1. Rectangle\n2. Square\n3. Equilateral Triangle\n4. Circle");

switch Shape
% Rectangle
    case 1
        RecLength = input('What is the desired length of the rectangle?');
        RecWidth = input('What is the desired width of the rectangle?');
    
        RecArea = RecWidth*RecLength;
        RecPerimeter = 2*(RecLength+RecWidth);
    
        fprintf('The area of your rectangle is %5.1f.\nThe perimiter of your rectangle is %5.1f',RecArea,RecPerimeter)
    
% Square
    case 2
        SqrSide = input('What is the desired side length of the square?');
    
        SqrArea = SqrSide^2;
        SqrPerimeter = SqrSide*4;
    
        fprintf('The area of your square is %5.1f.\nThe perimiter of your square is %5.1f',SqrArea,SqrPerimeter)

% Equilateral Triangle
    case 3
        TriSide = input('What is the desired side length of the equilateral triangle?');
    
        TriArea = (sqrt(3)/4)*(TriSide^2);
        TriPerimeter = TriSide*3;
    
        fprintf('The area of your equilateral triangle is %5.1f.\nThe perimiter of your equilateral triangle is %5.1f',TriArea,TriPerimeter)

% Circle
    case 4
        CirRadius = input('What is the radius of the circle?');
    
        CirArea = pi*CirRadius^2;
        CirPerimeter = 2*pi*CirRadius;
    
        fprintf('The area of your circle is %5.1f.\nThe circumference of your circle is %5.1f',CirArea,CirPerimeter)

% Invalid Shape
    otherwise
        disp('That is not a valid shape')
end

