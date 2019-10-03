% Filename: Age_Calculator.m
% ------------------------------------------------------------------------
% Hoover High School
% Ms. Harris
%
% Start Date: Aug 16, 2019
% Last Revised On: Sept 17, 2019
%
% Purpose: To tell the users age in Years, Months, Days, Hours, 
%          Minutes, and Days.
%
% Variables:
% Name = Name of User
% BirthDate = Birthdate of the user
% Days = How old the user is in days
% Years = How old the user is in years
% Months = How old the user is in months
% Weeks = How old the user is in weeks
% Hours = How old the user is in hours
% Minutes = How old the user is in minutes
% Seconds = How old the user is in seconds
%
% name = The output to display for the Name
% years = The output to display for the Years
% months = The output to display for the Months
% weeks = The output to display for Weeks
% days = The output to display for the Days
% hours = The output to display for the Hours
% minutes = The output to display for the Minutes
% seconds = The output to display for the Seconds
%
% Functions Called: (beyond built-in function)
%                       none
% ------------------------------------------------------------------------

Name = input('Input your Name', "s");
BirthDate = input('Input your birthdate (Ex. 2003,03,19)', "s");

Days = now-datenum(BirthDate);
Years = Days/365;
Months = Years*12;
Weeks = Days/7;
Hours = Days*24;
Minutes = Hours*60;
Seconds = Minutes*60;

name = sprintf('%f is officially', Name);
years = sprintf('\nis %15.2f years old', Years);
months = sprintf('is %15.2f months old', Months);
weeks = sprintf('is %15.2f weeks old', Weeks);
days = sprintf('is %15.2f days old', Days);
hours = sprintf('is %15.2f hours old', Hours);
minutes = sprintf('is %15.2f minutes old', Minutes);
seconds = sprintf('is %15.2f seconds old', Seconds);

disp(Name)
disp(years)
disp(months)
disp(weeks)
disp(days)
disp(hours)
disp(minutes)
disp(seconds)