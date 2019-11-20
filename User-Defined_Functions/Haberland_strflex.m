function  varargout = Haberland_strflex(inString, varargin)
    % Haberland_strcount counts the number of certain types of charecters in a string
    % 
    %   Haberland_strcount(inString, varargin)
    %   
    %   varargin can be:
    %       alpha: Letters
    %       digit: Numbers
    %       lower: Lowercase Letters
    %       punct: Punctuation Charecters
    %       upper: Uppercase Letters
    %       wspace: Whitespace Charecters
    %
    %   Inputs:
    %       inString: This is the input string the charecter will be
    %       counted in
    %       varargin: This is the cell array that is filled with all the
    %       properties you want
    %   
    %   Output:
    %       varargout: This is the number of charecters of each property
    %       you wanted in the input string
    %   

    %
    %   James R. Haberland 19032003
    %   Hoover High School
    %   Ms. Harris
    %   Nov. 14 2019
    %
    
    
    % Initial Process
    varargin = lower(varargin);
    optargin = size(varargin,2);
    narginchk(2,7)
    nargoutchk(0,6)
    
    
    % Error Trapping
    
    % Input Data Types
    if ischar(inString) ~= 1
        error('Your input string must be a string.')
    end
    
    if iscell(varargin) ~= 1
        error('Your input for the data type must be a string.')
    end
    
    for i = 1:optargin
        if sum(strcmp(varargin{i},{'alpha','digit','lower','punct','upper','wspace'})) ~= 1
            error('Please input a valid string property')
        end
    end
    
    
    % Calculations for output arguments
    for i = 1:optargin
        varargout{i} = sum(isstrprop(inString,varargin{i}));
    end

end