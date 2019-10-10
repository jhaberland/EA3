%   Filename: Two_Dimensional_Projectile.m
% ------------------------------------------------------------------------
%   James R. Haberland 19032003
%   Hoover High School
%   Ms. Harris
%
%   Start Date: Oct 08, 2019
%   Last Revised On: Oct 09, 2019
%
%   Purpose: Take inputs and do calcuations for projectile problems, that
%            involve two dimensions.
%
%   Psuedocode:
%   1. Take inputs for the calculations (Launch: Angle & Speed; Vertical
%      Acceleration, Initial Position, & Final Position.)
%   2. Do the calculation with the data (Initial horizontal and vertical
%   velocities;Total time in the air; Horizontal displacment; vertical
%   position quatio, horizontal position equation, and vertical velocity
%   equation.)
%   3. Output a formatted text display (Total time in air)
%   4. Output a graph that shows the data (Vertical Position vs. Time &
%   Vertical Velocity vs. Time)
%
%   Variables:
%       LA: This is the launch angle
%       LS: This is the launch speed
%       VA: This is the vertical acceleration
%       IVP: This is the initial vertical position
%       FVP: This is the final vertical position
%
%       Vix: This is the initial velcocity in the x direction
%       Viy: This is the initial velocity in the y direction
%       underSQRT: This is the number under the sqaure root when calculating
%           time with the qudaritc formula
%       tAir: This is the amount of time the object is in the air
%       tAirVec: This is the vector with all the time valuces between 0 and
%           tAir, so it is possible to graph
%       DX: This is the total horizontal distance traveled
%       Xy: This is the vertical position equation
%       Xx: This is the horizontal position equation
%       Vy: This is the vertical velocity equation
% 
%   Functions Called: (beyond built-in function)
%                       none
% ------------------------------------------------------------------------

% Inputs

LA = input('Input the launch angle (in degrees, above horizontal).');
LS = input('Input the launch speed (in meters/sec).');
VA = input('Input the vertical acceleration (in meters/sec^2).');
IVP = input('Input the initial vertical position (in meters).');
FVP = input('Input the final vertical position (in meters).');



% Calculations


% Initial Velocities
Vix = LS*cosd(LA);
Viy = LS*sind(LA);

% Time Air
underSQRT = Viy^2-(4*(.5*-VA)*(IVP-FVP));
if underSQRT<0
   fprintf("The numbers do not work, because you can't square root a negative")
   return
else
    tAir = max([(-Viy+sqrt(underSQRT))/(2*.5*-VA), (-Viy-sqrt(underSQRT))/(2*.5*-VA)]);
end
tAirVec = 0:.1:tAir;

% Horizontal Distance
DX = Vix*tAir;

% Vertical Position Equation
Xy = (.5*-VA*tAirVec.^2) + (Viy*tAirVec) + IVP;

% Horizontal Position Equation
Xx = Vix*tAirVec;

% Vertical Velocity Equation
Vy = VA*tAirVec + Vix;


% Outputs

fprintf('The object was in the air for %5.2f seconds',tAir)

figure;
subplot(2,1,1)
plot(tAirVec,Xy,'k-','LineWidth',2)
xlabel('Time (sec)', "FontSize",14,"FontName",'Arial')
ylabel('Vertical Position (m)', "FontSize",14,"FontName",'Arial')
title(sprintf('Vertical Position vs. Time\nLaunch Speed = %5.2f, Angle = %5.2f',LS,LA))

subplot(2,1,2)
plot(tAirVec,Vy,'k-','LineWidth',2)
xlabel('Time (sec)', "FontSize",14,"FontName",'Arial')
ylabel('Vertical Velocity (m/sec)', "FontSize",14,"FontName",'Arial')
title(sprintf('Vertical Velocity vs. Time\nLaunch Speed = %5.2f, Angle = %5.2f',LS,LA))