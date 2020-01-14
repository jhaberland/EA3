function [moi] = Moment_Of_Inertia_Function(b,h)
   
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
    %   Jan. 14 2020
    % ------------------------------------------------------------------
    
    % Rectangle
    moi =(b*h^3)/12;
    
end