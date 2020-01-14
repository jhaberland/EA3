function [ModulusElasticity] = Elasticity_Function(BeamMaterial)
    
    % Takes the material of the beam and outputs the Modulus of Elasticity.
    % 
    %   Input
    %       a. BeamMaterial: This is the material the beam is made of.
    %           1) Aluminum, Brass, Chromium, Copper, Iron, Lead, Steel, Tin, Titanium, Zinc
    %   Output
    %       a. ModulusElasticity: Modulus of Elasticity for beam
    % 
    %   James R. Haberland 19032003
    %   Hoover High School
    %   Ms. Harris
    %   January 14th 2020
    % -----------------------------------------------------------
    
    
    % Material Values
    switch BeamMaterial

      % Aluminum
       case 1
           ModulusElasticity = 10.0*10^6; %equation for the elasticity of aluminum
        
       % Brass
       case 2
            ModulusElasticity = 15.9*10^6; %equation for the elasticity of brass
        
        % Chromium
       case 3
            ModulusElasticity = 36.0*10^6; %equation for the elasticity of chromium
        
        % Copper
       case 4
            ModulusElasticity = 15.6*10^6; %equation for the elasticity of copper
        
       % Iron
       case 5
            ModulusElasticity = 28.5*10^6; %equation for the elasticity of iron
        
        % Lead
       case 6
            ModulusElasticity = 2.6*10^6; %equation for the elasticity of lead
        
       % Steel
       case 7
            ModulusElasticity = 30.0*10^6; %equation for the elasticity of steel
        
        % Tin
       case 8
            ModulusElasticity = 6.0*10^6; %equation for the elasticity of tin
        
        % Titanium
       case 9
            ModulusElasticity = 16.8*10^6; %equation for the elasticity of titanium
        
        % Zinc
       case 10
            ModulusElasticity = 12.0*10^6; %equation for the elasticity of zinc     
    end
end