% Filename: Projectile_1D.m
% ------------------------------------------------------------------------
% James R. Haberland 19032003
% Hoover High School
% Ms. Harris
%
% Start Date: Oct 07, 2019
% Last Revised On: Oct 07, 2019
%
% Purpose: Kinematics model of an object in one dimension with a constant
%          acceleration.
%
% Variables:
%
%   a: Acceleration (m/s^2)
%   t: total time (s)
%   vf: final veocity (m/s)
%   vi: initial velocity (m/s)
%   xf: final position (m)
%   xi: initial osition (m)
% 
% Functions Called: (beyond built-in function)
%                       none
% ------------------------------------------------------------------------

% Get inputs
xi = input('Input the inital position (in meters).        ');
vi = input('Input the initial velocity (in meters/sec).        ');
a = input('Input the acceleration (in meters/sec^2).        ');
t1 = input('Input the value for t1 (in sec).        ');
t2 = input('Input the value for t2 (in sec).        ');

% Calculate ouputs
t = linspace(t1,t2);
xf = xi + vi*t + 0.5*a*t.^2;
vf = vi + a*t;

% Outputs to display
fprintf('\nThe output values for this set of parameters is:')
fprintf('\n\tThe final position is %f meters.',xf)
fprintf('\n\tThe final velocity is %f meters/sec',vf)