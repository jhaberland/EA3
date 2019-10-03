%% Working with Strings
%
% James R. Haberland (19032003)
% Enginerring Academy - 4th Period
% Ms. Harris
%
%% Counting Characters
%
%   Filename: Working_with_Strings.m
% ------------------------------------------------------------------------
%   Name: James R. Haberland (19032003)
%   Orginazation: Hoover High School
%   Teacher: Ms. Harris
%
%   Start Date: Sept 20, 2019
%   Last Revised On: Sept 20, 2019
%
%   Purpose: To take a user's input and count the number of letters,
%   digits, and spaces and output them into the command window.
%
%   Pseudocode:
%   1. Prompt user for an input of a string of characters
%   2. Calculate the number of letters
%   4. Calculate the number of digits
%   5. Calculate the number of spaces
%   6. Output that information into the command window
%   
%   Variables:
%   UserString: This is the string that the user inputs
%   NumberLetters: This is the number of letters in the UserString
%   NumberDigits: This is the number of digits in the UserString
%   NumberSpaces: This is the number of spaces in the UserString
%       
%
%   Functions Called: (beyond built-in function)
%                       none
%
% ------------------------------------------------------------------------
%

% % Input
% UserString = input('Please input a string of characters', "s");
% 
% % Calculations
% NumberLetters = sum(isletter(UserString));
% NumberDigits = sum(isstrprop(UserString,"digit"));
% NumberSpaces = sum(isspace(UserString));
% 
% % Outputs
% fprintf('This string has %3.0f letters.', NumberLetters)
% fprintf('\nThis string has %3.0f digits.', NumberDigits)
% fprintf('\nThis string has %3.0f spaces.', NumberSpaces)
%% Matching String Properties
%
%   Filename: Working_with_Strings.m
% ------------------------------------------------------------------------
%   Name: James R. Haberland (19032003)
%   Orginazation: Hoover High School
%   Teacher: Ms. Harris
%
%   Start Date: Sept 20, 2019
%   Last Revised On: Sept 20, 2019
%
%   Purpose: This program is supposed to take a user's input and let them
%   choose from a list of the outputs and it tells the user how many of
%   that certain thing they chose is.
%
%   Pseudocode:
%   1. Prompt user for an input string
%   2. Calculate the answers for any option the user chooses
%   3. Prompt user for their choice of string property
%   4. Output the choice they choose
%
%   Variables:
%       UserString: This is the input string from the user
%       UserChoice: This is the input for the desired sting property
%       NumberAlpha: This is the number for "alpha"
%       NumberAlphanum: This is the number for "alphanum"
%       NumberCntrl: This is the number for "cntrl"
%       NumberDigit: This is the number for "digit"
%       NumberGraphic: This is the number for "graphic"
%       NumberLower: This is the number for "lower"
%       NumberPrint: This is the number for "print"
%       NumberPunct: This is the number for "punct"
%       NumberUpper: This is the number for "upper"
%       NumberWspace: This is the number for "wspace"
%       NumberXdigit: This is the number for "xdigit"
%
%   Functions Called: (beyond built-in function)
%                       none
%
% ------------------------------------------------------------------------
%
% % Uncomment from here to bottom of the cell
% %
% % Inputs
% UserString = input('Please input a string of letter, numbers, and spaces', "s");
% UserChoice = input('Please input the number if the desired string property:\n0.Alpha\n1.Alphanum\n2.Cntrl\n3.Digit\n4.Graphic\n5.Lower\n6.Print\n7.Punct\n8.Upper\n9.Wspace\n10.Xdigit');
% 
% % Outputs
% if UserChoice==0
%     NumberAlpha = sum(isstrprop(UserString,"alpha"));
%     fprintf('There are %3.0f letters in the input string', NumberAlpha)
% elseif UserChoice==1
%     NumberAlphanum = sum(isstrprop(UserString,"alphanum"));
%     fprintf('There are %3.0f letters and numbers in the input string', NumberAlphanum)
% elseif UserChoice==2
%     NumberCntrl = sum(isstrprop(UserString,"cntrl"));
%     fprintf('There are %3.0f control characters in the input string', NumberCntrl)
% elseif UserChoice==3
%     NumberDigit = sum(isstrprop(UserString,"digit"));
%     fprintf('There are %3.0f numbers in the input string', NumberDigit)
% elseif UserChoice==4
%     NumberGraphic = sum(isstrprop(UserString,"graphic"));
%     fprintf('There are %3.0f graphic characters in the input string', NumberGraphic)
% elseif UserChoice==5
%     NumberLower = sum(isstrprop(UserString,"digit"));
%     fprintf('There are %3.0f lowercase letters in the input string', NumberLower)
% elseif UserChoice==6
%     NumberPrint = sum(isstrprop(UserString,"print"));
%     fprintf('There are %3.0f letters, numbers, and spaces in the input string', NumberPrint)
% elseif UserChoice==7
%     NumberPunct = sum(isstrprop(UserString,"punct"));
%     fprintf('There are %3.0f punctuation characters in the input string', NumberPunct)
% elseif UserChoice==8
%     NumberUpper = sum(isstrprop(UserString,"upper"));
%     fprintf('There are %3.0f uppercase letters in the input string', NumberUpper)
% elseif UserChoice==9
%     NumberWspace = sum(isstrprop(UserString,"wspace"));
%     fprintf('There are %3.0f whitespace characters in the input string', NumberWspace)
% elseif UserChoice==10
%     NumberXdigit = sum(isstrprop(UserString,"xdigit"));
%     fprintf('There are %3.0f valid hexicedimal characters in the input string', NumberXdigit)
% end
%% Matching Strings
%
%   Filename: Working_with_Strings.m
% ------------------------------------------------------------------------
%   Name: James R. Haberland (19032003)
%   Orginazation: Hoover High School
%   Teacher: Ms. Harris
%
%   Start Date: Sept 20, 2019
%   Last Revised On: Sept 20, 2019
%
%   Purpose: To compare two different strings and output the ranges in
%   which they are similar.
%
%   Pseudocode:
%   1. Propmt user for sting
%   2. Prompt user for sub-string 
%   3. Calculate the ranges for the 
%
%   Variables:
%       UserString: The main input string from the user.
%       UserSubString: The second string that is going to be found in the
%       main string.
%       InitialValue: This is the starting position of where the second string
%       is found in the first string.
%       EndValue: This is the ending position of where the second string
%       is found in the first string.
%
%   Functions Called: (beyond built-in function)
%                       none
%
% ------------------------------------------------------------------------
%
% % Uncomment from here to bottom of the cell
% %
% % Inputs
% UserString = input('Please input a string of characters', "s");
% UserSubString = input('Please input a substring to find in the string', "s");
% %
% % Outputs
% InitialValue = findstr(UserSubString,UserString);
% EndValue = InitialValue-1+length(UserSubString);
% OutputRange = [InitialValue:EndValue];
% disp('The range of the substring values in the string are:')
% disp(OutputRange)
% disp('This is the portion of the string that occurs before the substring')
% disp(UserString(1,1:(InitialValue-1)))
% disp('This is the portion of the string that matches the substring')
% disp(UserString(1,InitialValue:EndValue))
% disp('This is the portion of the string that occurs after the substring')
% disp(UserString(1,(EndValue+1):end))