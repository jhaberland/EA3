%% Learning 1


% a. I calculated the final to be:

% count: 1, 2, 3, 4
% p: 30, 15, 5, 1.25
% q: 2, 3, 4, 5


% b. count = 4, p = 1.25, q = 5

p = 30;
q = 2;
count = 1;
while p > q
    p = p/q;
    q = q + 1;
    count = count + 1;
end

%% Learning 2

y = 0;
x = 0;
count = 0;
while y < 1 && count < 500
    y = -5*sin(x/(4*pi))-1;
    x = x + .25;
    count = count + 1;
end
fprintf('The value of x is %2.0f, and it took %3.0f iterations',x,count)

%% Newton's Square Root Approximation
%   Filename: while_loops.m
% ------------------------------------------------------------------------
%   James R. Haberland 19032003
%   Hoover High School
%   Ms. Harris
%
%   Start Date: Nov. 1, 2019
%   Last Revised On: Nov. 1, 2019
%
%   Purpose: Calculate the square root of any using Newton's square root
%   formula, and checking that it is within given tolerances.
%
%   Psuedocode:
%   1. Take user inputs for N, A, and tol.
%   2. Calculate the approximate square root, and the number of iterations
%   it took to complete it.
%   3. Neatly output y and the iter values.
%
%   Variables:
%       N: The number you want to find the square root of
%       A: Your guess of the square root of N
%       tol1: The positive tolerance
%       tol2: The negative tolerance
%       iter: The number of iterations it takes
%       aN: The actual square root of N
%       nAprox: The approx square root of N
%
%   Functions Called: (beyond built-in function)
%                       none
% ------------------------------------------------------------------------

% Inputs
N = input('A positve number you need the square root of');
A = input('Your initial estimate of the square root');
tol1 = input('The acceptable positive tolerance in the approximate square root and actual root');

tol2 = -1*tol1;
iter = 0;
aN = sqrt(N);
nAprox = .5*((N/A)+A);

while (aN - nAprox) > tol1 || (aN - nAprox) < tol2
    nAprox = .5*((N/nAprox)+nAprox);
    iter = iter + 1;
end

fprintf('The aproximate square root is %5.2f and it took %2.0f iterations.',nAprox,iter)

%% 4d

% Why is it important to specify a tolerance for the value of the square root? 
%   Because it will keep it from just running once and getting a value that
%   is way to far off, and it will keep it from running for a very long
%   time.
% What would your while statement look like if you were not using a tolerance?
%   while (aN - nAprox) > tol1 || (aN - nAprox) < tol2
%    nAprox = .5*((N/nAprox)+nAprox);
%    iter = iter + 1;
%   end
% What happens to the number of iterations required to obtain the approximation 
% as the value of the tolerance gets smaller?
%   The smaller the tolerance, the more iterations it takes to get the
%   right answer.