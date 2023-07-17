% MATLAB Script File 

% This script will simulate a physical system from the ground up.

%% Initialization 
% Set initial values for model parameters

mass = 4; % kg 
k = 8; % N/m 
g = 9.81; % m/s^2 
u = 0.2; % damping coefficient 

%% Simulation 
% Simulate the motion of the mass

dt = 0.01; % time step 
t = 0:dt:5; % total simulation time 
x = zeros(size(t)); % position vector 
v = zeros(size(t)); % velocity vector 
a(1) = -g; % initial acceleration 

for i=1:length(t)-1
   % Calculate acceleration 
   a(i+1) = -g - (k/mass)*x(i) - (u/mass)*v(i);
   
   % Calculate velociy 
   v(i+1) = v(i) + a(i+1)*dt;
   
   % Calculate position 
   x(i+1) = x(i) + v(i+1)*dt;
end

%% Results 
% Plot the simulated motion of the mass

plot(t,x);
xlabel('Time (s)');
ylabel('Position (m)');
title('Position of Mass as a Function of Time');