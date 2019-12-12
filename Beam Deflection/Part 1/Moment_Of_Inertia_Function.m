function [moi] = Moment_Of_Inertia_Function(b,h,t, Beam)
   
    %   This function will output the moment of inertia based on the type of beam
    %
    %   Inputs:
    %       b: measurement of the base of an object
    %       h: measurement of the height of an object
    %       t: measurement of the time taken to bend a beam
    %       yc: measurement of the height of an object
    %
    %   Output:
    %       moi: the exact moment of inertia
    %
    %   Devyn Brown 
    %   Hoover High School
    %   Ms. Harris
    %   Dec. 03 2019
    %----------------------------------------------------------------------------------

    % Error Trapping
    if isnumeric(b) ~= 1
        error("The input for the base of the beam must be a numeric value")
    end
    
    if isnumeric(h) ~= 1
        error("The input for the height of the beam must be a numeric value")
    end
    
    if isnumeric(t) ~= 1
        error("The input for the time taken to deflect the beam must be a numeric value")
    end
    
    if isnumeric(Beam) ~= 1
        error("The input for the type of beam must be a numeric value")
    end

    % flat rectangle
    if Beam == 1 %labels this equation "1"
        moi =(b*h^3)/12; %the moment of inertia for a flat beam usin the specified equation

    % hollow rectangle
    elseif Beam == 2 %labels this equation "2"
        moi=((b*h^3)/12)-((b-2*t)*(h-2*t)^3)/12; %displays the moment of inertia for a hollow flat beam using the specified equation


    % T-beam
    elseif Beam == 3 %labels this equation "3"
        yc= h-(t*h^2+t^2*(b-t))/(2*(b*t+(h-t)*t)); %A variable to be used in the T-beam equation using the specified equation

        moi= (1/3)*(t*yc^3+b*(h-yc)^3-(b-t)*(h-yc-t)^3); %The moment of inertia for a T shaped beam usin the specified equation


    % I-beam
    elseif Beam == 4 %labels this equation "4"
        moi= ((.5*(h-2*t)+.5*t)^2)*(2*t*b)+(t*((h-2*t)^3)/12); %The moment of inertia for a I shaped beam usin the specified equation

    end    
    
end