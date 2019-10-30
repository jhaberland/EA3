%% Loop #1

% x = ones(10,1);
% 
% for i = 2:11
% 
% x(i) = i*x(i-1);
% 
% end

% The purpose of the first line is to make a 10x1 column matrix filled with
% the number one

% The loop iterates 10 times

% The assignment statement takes the value for x and I and calculates a new
% value with x which will repeat the process of with the new i value

% The final value of vector x is 39916800

%% Loop #2

% a = [3 7 9 20 37 45];
% 
% sum = 0;
% 
% for i = a
% 
% sum = sum + i;
% 
% end

% The loop will iterate 6 times

% The current sum is being added with the value of i for that iteration and
% then that process will be repeated until the 6th iteration is over

% The 2nd line sets the the origonal sum to 0

% The final value of the sum is 121

%% Loop #3

% value = 0;
% 
% iter1 = 0;
% 
% iter2 = 0;
% 
% for irow = 1:2:5
% 
% for icol = 2:2:8
% 
% value = irow*value + icol;
% 
% a(irow,icol) = value;
% 
% iter2 = iter2 + 1;
% 
% end
% 
% iter1 = iter1 + 1;
% 
% end

% The final value of iter1 is 3 and the final value for iter2 is 12

% The final dimension of a is 5x8

% MATLAB will have to resize matrix a 12 times

%% Loop-Generated Matrix
%   Filename: for_loops.m
% ------------------------------------------------------------------------
%   James R. Haberland 19032003
%   Hoover High School
%   Ms. Harris
%
%   Start Date: Oct 29, 2019
%   Last Revised On: Oct 30, 2019
%
%   Purpose: Calculate a matrix based on the users input.
%
%   Psuedocode:
%   1. Take input for the dimensions of the matrix.
%   2. Make a matrix of the column and row indexes
%   3. Make a matrix that is the square of the row index and the square
%   root of the column index.
%   4. Neatly output the area and perimeter.
%
%   Variables:
%       nRow: The number of rows in the matrix
%       nColumn: The number of columns in the matrix
%       R: A matrix that has the values from 1 to the number of rows
%       C: A matrix that has the values from 1 to the number of columns
%       a: The final matrix to be output
%
%   Functions Called: (beyond built-in function)
%                       none
% ------------------------------------------------------------------------

nRow = input('How many rows do you want in the matrix?');
nColumn = input('How many columns do you want in the matrix?');

for R = 1:nRow
    for C = 1:nColumn
        a(R,C) = R^2*sqrt(C);
    end
end

if nRow > 10 && nColumn > 8
    disp('This is the first 10 rows and 8 columns of the matrix\n')
    disp(a(1:10,1:8))
    
elseif nRow > 10 && nColumn < 8
    fprintf('This is the first 10 rows and %2.0f columns\n', nColumn)
    disp(a(1:10,1:end))
    
elseif nRow < 10 && nColumn > 8
    fprintf('This is the first %2.0f rows and 8 columns\n', nRow)
    disp(a(1:end,1:8))
    
else
    fprintf('This is the first %2.0f rows and %2.0f columns\n', nRow, nColumn)
    disp(a(1:end,1:end))
end

%% Three-Part Matrix
%   Filename: for_loops.m
% ------------------------------------------------------------------------
%   James R. Haberland 19032003
%   Hoover High School
%   Ms. Harris
%
%   Start Date: Oct 29, 2019
%   Last Revised On: Oct 30, 2019
%
%   Purpose: Calculate and output a three part matrix.
%
%   Psuedocode:
%   1. Take input for the dimensions of the matrix and a random integer.
%   2. Generate a matrix
%      i. Diagonal elements are the first nRows (or nCols) multiples of N.
%      ii. Elements to the right of the diagonal are random integers between 1 and N.
%      iii. Elements to the left of the diagonal are the product of the row and column index.
%   3. Neatly output the first 10 rows and 8 columns.
%
%   Variables:
%       nRow: The number of rows in the matrix
%       nColumn: The number of columns in the matrix
%       n: A random integer to use in the calculations
%       R: A matrix that has the values from 1 to the number of rows
%       C: A matrix that has the values from 1 to the number of columns
%       a: The final matrix to be output
%
%   Functions Called: (beyond built-in function)
%                       none
% ------------------------------------------------------------------------

nRow = input('How many rows do you want in the matrix?');
nColumn = input('How many columns do you want in the matrix?');
n = input('Enter a random integer value that is greater than one:');

for R = 1:nRow
    for C = 1:nColumn
        if R == C
            a(R,C) = R*n;
        elseif R < C
            a(R,C) = randi(n,1);
        elseif R > C
            a(R,C) = R*C;
        end
    end
end

if nRow > 10 && nColumn > 8
    disp('This is the first 10 rows and 8 columns of the matrix\n')
    disp(a(1:10,1:8))
    
elseif nRow > 10 && nColumn < 8
    fprintf('This is the first 10 rows and %2.0f columns\n', nColumn)
    disp(a(1:10,1:end))
    
elseif nRow < 10 && nColumn > 8
    fprintf('This is the first %2.0f rows and 8 columns\n', nRow)
    disp(a(1:end,1:8))
    
else
    fprintf('This is the first %2.0f rows and %2.0f columns\n', nRow, nColumn)
    disp(a(1:end,1:end))
end