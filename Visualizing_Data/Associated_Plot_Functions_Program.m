% Filename: Associated_Plot_Functions_Program.m
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
%   t1: first time value
%   t2: final time value
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
figure;

subplot(2,1,1)
plot(t,xf,'-','Color','#007BA7','LineWidth',2)
xlabel('Time (sec)', "FontSize",8,"FontName",'Arial')
ylabel('Position (m)', "FontSize",8,"FontName",'Arial')
title(sprintf('Position vs. Time\nxi=%5.2f, vi=%5.2f, a=%5.2f',xi,vi,a), "FontSize",12,"FontName",'Arial')

subplot(2,1,2)
plot(t,vf,'-','Color','#007BA7','LineWidth',2)
xlabel('Time (sec)', "FontSize",8,"FontName",'Arial')
ylabel('Velocity (m/s)', "FontSize",8,"FontName",'Arial')
title(sprintf('Velocity vs. Time\nxi=%5.2f, vi=%5.2f, a=%5.2f',xi,vi,a), "FontSize",12,"FontName",'Arial')

saveas(gcf,'AssociatedPlotProgram.jpg')