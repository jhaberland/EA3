%   Filename: Bonus_Projectile.m
% ------------------------------------------------------------------------
%   James R. Haberland 19032003
%   Hoover High School
%   Ms. Harris
%
%   Start Date: Nov. 1, 2019
%   Last Revised On: Nov. 7, 2019
%
%   Purpose: Calculate the vertical position for an object at multiple
%   different incriments between the inital and final launch angle.
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
%       LA: This is the launch angle
%       FA: This is the final launch angle
%       AI: This is the increments the angles will be tested in
%       LS: This is the launch speed
%       
%       Avec0: This is a verctor with the ranges of angles to be tested
%       count: This is the number of different angles that is going to be
%       tested
%       Avecstr: This is the vector of each angle as a seperate string
%       
%       Avec: This is a verctor with the ranges of angles to be tested
%       IHV: This is the initial velcocity in the x direction
%       IVV: This is the initial velocity in the y direction
%       underSQRT: This is the number under the sqaure root when calculating
%           time with the qudaritc formula
%       tAir: This is the amount of time the object is in the air
%       tAirVec: This is the vector with all the time valuces between 0 and
%           tAir, so it is possible to graph
%       HP: This is the total horizontal distance traveled
%       VPE: This is the vertical position equation
%       HPE: This is the horizontal position equation
%       VVE: This is the vertical velocity equation
%       
%       ldg: This is the variable that stores the legend
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
AvecStr{count} = num2str(Avec0(count));
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

ylim([0 (max(VPE)+1)])
lgd = legend(AvecStr);
lgd.Title.String = 'Angle in Degrees';