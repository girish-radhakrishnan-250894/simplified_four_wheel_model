function [Q_dot,O_simulator,O_model] = vehicle_simulator(t, Q,input)
%vehicle_simulator Simulator function that runs vehicle simulations
%   This is a wrapping function that is called by the numerical integrator.
%   It knows the current time-step and using it, it interpolates all the
%   inputs to be tracked. It also calculates the steering and throttle
%   control action needed and it passes these as scalar values to the
%   vehicle model.

% INPUTS
%   t       Time instant being simulator
%   Q       State vector ([gen. coordinates gen. velocities]')
%   input   Input struct

% OUTPUTS
% NOTE- The vectors and matrices that this function outputs are done so
% keeping in mind future operations that this function will be used for 
% EXAMPLE - This function may need to output controller states or estimator/observer states. The O_simulator will do that
% EXAMPLE - The vehicle model may need to output complex variables like slip angle, slip ratio etc. The O_model will do that 

%% Initialization : State variables (only those required to calculate the necessary control actions)


%% Initialization : Inputs (reference inputs to be tracked by controller)
delta_c = interp1(input.time, input.delta, t, 'pchip');

m_d_c = 0;

[Q_dot , ~ , ~ ,O_model] = vehicle_model_fw_simplified(Q,input,delta_c,m_d_c);

O_simulator = [];

end