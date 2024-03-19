% System_Params.m
% This script contains the physical parameters for the rotary inverted pendulum system

% Motor torque constant
K_t = 0.0259;    

% Back EMF constant
K_m = 0.0259;        

% Armature resistance
R_m = 3.1611;        

% System gear ratio
K_g = 14;         

% Motor efficiency
eta_m = 0.69;     

% Gearbox efficiency
eta_g = 0.90;     

% Viscous damping coefficient
B_eq = 0.005;    

% Moment of inertia at the load
J_eq = 0.0052;   

% Pendulum mass
m_p = 0.035;      

% Arm mass
m_arm = 0.035;    

% Pendulum COG length
l_p = 0.09;       

% Arm COG length
l_arm = 0.09;     

% Arm Length
r = 0.18;         

% Pendulum moment of inertia
J_p = 0.0032;     

% Arm moment of inertia
J_arm = 0.0032;   

% Acceleration due to gravity
g = 9.81;         
