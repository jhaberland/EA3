%% Creating Arrays
%
% James R. Haberland 19032003
% Enginerring Academy - 4th Period
% Ms. Harris
%
%% Problem 1
%
% Enter the following commands at the command line.  Comment on the results.
%
% vector1 = 10:-1:3
% 
%   vector1 outputs a 1x8 vector that starts at 10 and goes down by incements
%   of -1 until it reaches 3
%
% vector2 = 1:0.3:3.2
%
%   vector2 outputs a 1x8 vector that starts at 1 and goes up by .3 each time
%   until it goes as high as it can without going over 3.2
%
% vector3 = 1:0.4:10
%
%   vector3 outputs a 1x23 vector that starts at 1 and goes up in incrments of
%   .4 until it reaches as close to 10 without going over
%
%% Problem 2
%
% Enter the following commands at the command line.  Comment on the results.
%
% vector4 = linspace(0,10)
%
% vector4 outputs a 1x100 vector that has 100 numbers that are equally spaced
% from 0 to 10
%
% vector5 = linspace(0,10,10)
%
%   vector5 outputs a 1x10 vector that has 10 values in total which are all
%   equally spaced and are between 0 and 10
%
% vector6 = linspace(0,10,11)
%
%   vector6 outputs a 1x11 vector that has 11 values which are all equally
%   spaced between 0 and 11
%
%% Problem 3
%
% Enter the following commands at the command line.  Comment on the results.
%
% vector7 = logspace(0,5,5)
%
%   vector7 outputs a 1x5 vector that has 5 values that are logarithmically
%   equally spaced between 10^X1 and 10^X2, the values are decimals because
%   the equal values are decimals and when you raise 10 to a decimal it
%   gived you a decimal
%
% vector8 = logspace(0,5,6)
%
%   vector8 outputs a 1x6 vector that has 6 values which are logarithmically
%   equally spaced and they are whole numbers because there a 6 equally
%   spaced values between 0 and 5
%
%% Problem 4
%
% Enter the following commands at the command line.  Comment on the results
%
% array1 = diag(0:4)
%
%   array1 outputs a 5x5 matrix that has certain values from the top right
%   corner to the bottom left corner in a diagonal way and includes the
%   values from 0 to 4
%
% array2 = diag(vector8)
%
%   array2 outputs a 6x6 matrix with the values from vector8 into a
%   diagonal from the top right to the bottom left
%
% array3 = diag(1:3,2)
%
%   array3 outputs a 5x5 matrix with the diagonal moved up two spaces above
%   where the normal one would lie and it has values inputed in color entry
%   form, between 1 and 3
%
%% Problem 5
%
%   eye: This built-in fucntion gets the idenity matrix for any size square matrix
%   ones: This built-in fucntion can make any size matrix full of ones
%   zeros: This built-in fucntion can make any size matrix full of zeros
%   rand: This built-in fucntion can make any size matric full of random numbers
%   randi: This built-in fucntion can make any size matric full of random integers
%   blkdiag: This built-in fucntion is used to make a matrix with exactly the number you want in it
%
%% Applying 6
%
% Rate = logspace(2,20)
%
%% Applying 7
%
% Time = linspace(10,1000,50)
%
%% Applying 8
%
% Threes = 0:3:99
%
%% Applying 9
%
% matrix1 = [1,2,3;4,5,6;7,8,9]
%
% matrix2 = zeros(4,2)
%
% matrix3 = randi(4)
%
% matrix4 = blkdiag(-5,3,-2,9)
%
%% Applying 10
%
%   Filename: Creating_Arrays.m
% ------------------------------------------------------------------------
%   Orginazation: Hoover High School
%   Teacher: Ms. Harris
%
%   Start Date: Sept 17, 2019
%   Last Revised On: Sept 17, 2019
%
%   Purpose: To generate a matrix of random floating point integers between
%   teo user-specified values.
%
%   Pseudocode:
%
%   1. Ask user for the value of the upper and lower limit.
%   2. Ask for number of rows and columns in the matrix
%   3. Create matix filled with random floating point number rounded to two
%   decimal places
%   4. Output using the built-in function called 'format'
%
%   Variables:
%       LowerLimit: The lower limit of random number to generate
%       UpperLimit: The upper limit of the random number to generate
%       MatrixRow: The number of rows in the matrix
%       MatrixColumn: The number of columns in the matrix
%       test: The text to be included with the output
%
%   Functions Called: (beyond built-in function)
%                       none
%
% ------------------------------------------------------------------------
%
% LowerLimit = input('What is the lower limit of random numbers to be generated?');
% UpperLimit = input('What is the upper limits of random numbers to be generated?');
% MatrixRow = input('What number of rows do you want in the matrix?');
% MatrixColumn = input('What number of columns do you want in the matrix?');
% 
% rng(0,'twister');
% OutputMatrix = (UpperLimit-LowerLimit).*rand([MatrixRow,MatrixColumn]) + LowerLimit;
% 
% format bank;
% text = sprintf('This matrix was created with your inputs.\n');
% disp(text)
% disp(OutputMatrix)
%