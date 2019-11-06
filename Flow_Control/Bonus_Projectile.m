%   Filename: Bonus_Projectile.m
% ------------------------------------------------------------------------
%   James R. Haberland 19032003
%   Hoover High School
%   Ms. Harris
%
%   Start Date: Nov. 1, 2019
%   Last Revised On: Nov. 6, 2019
%
%   Purpose: Calculate a matrix based on the users input.
%
%   Psuedocode:
%   1. Take the inputs for:
%       i. Initial launch angle (in degrees, relative to the horizontal)
%       ii. Final launch angle (in degrees)
%       iii. Launch angle increment (in degrees)
%       iv. Launch speed (in meters/second)
%   2. Calculate:
%       i. The initial horizontal and vertical velocities for the projectile.
%       ii. The total time the projectile is in the air, assuming that its 
%           total vertical displacement is zero.
%       iii. The horizontal distance that the projectile travels.
%       iv. The vertical position of the projectile as a function of time
%           (i.e. create a vector of vertical position values between the
%           time that it is launched and the time that it lands)
%       v. The horizontal position of the projectile as a function of time.
%       vi. The vertical velocity of the projectile as a function of time.
%   3. Make a plot with the vertical position vs. time for each launch angle on the same axes.
%
%   Variables:
%       
%
%   Functions Called: (beyond built-in function)
%                       none
% ------------------------------------------------------------------------

clc,clear
% Inputs
LA = input('Input the launch angle (in degrees, above horizontal).');
FA = input('Input the final launch angle (in degrees).');
AI = input('Input the launch angle increment (in degrees)');
LS = input('Input the launch speed (in meters/sec).');

Avec0 = LA:AI:FA;
for count = 1:length(Avec0)
Avecstr{count} = num2str(Avec0(count));
end

for Avec = LA:AI:FA

% Initial Velocities
IHV = LS*cosd(Avec);
IVV = LS*sind(Avec);

% Time In Air
underSQRT = IVV^2-(4*(.5*-9.8));
if underSQRT < 0
   fprintf("The numbers do not work, because you can't square root a negative")
   return
else
    tAir = max([(-IVV+sqrt(underSQRT))/(2*.5*-9.8), (-IVV-sqrt(underSQRT))/(2*.5*-9.8)]);
    tAirVec = 0:.1:tAir;
end


% Horizontal Distance
HP = IHV*tAir;

% Vertical Position Equation
VPE = (.5*-9.8*tAirVec.^2) + (IVV*tAirVec);

% Horizontal Position Equation
HPE = IHV*tAirVec;

% Vertical Velocity Equation
VVE = -9.8*tAirVec + IVV;

% Output Plot
plot(tAirVec,VPE,'-','LineWidth',1);
xlabel('Time (sec)', "FontSize",14,"FontName",'Arial')
ylabel('Vertical Position (m)', "FontSize",14,"FontName",'Arial')
title(sprintf('Vertical Position vs. Time\nLaunch Speed = %5.2f m/s',LS),"FontSize",16,"FontName",'Arial')
hold on;
end

ylim([0 (max(VPE)+.1)])
lgd = legend(Avecstr);
lgd.Title.String = 'Angle in Degrees';