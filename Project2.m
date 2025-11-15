clc;
clear all;
close all;
%ABC to alpha-beta Transformation
abc_alphabeta = [1 (-1/2) (-1/2); 0 (sqrt(3)/2) (-sqrt(3)/2)];

%alpha-beta to ABC Transformation
alphabeta_abc = [1 0; (-1/2) (sqrt(3)/2); (-1/2) (-sqrt(3)/2)];

%Generator and Three-Phase Grid Parameters

S_sR = 2.59e06; %Rated Generator Apparent Power
P_sR = 2.30e06; %Rated Output Power
P_mR = 2.3339e06; %Rated Mechanical Input Power
V_sLL = 690; %Rated Line to Line Voltage
f_s = 50; %Rated Stator Frequency
n_mR = 1512; %Rated Rotor Speed
n_minit = 1450; %Rated Initial Speed -- Change as per task in project
P = 2; %Number of Pole Pairs
T_mR = 14.74e03; %Rated Mechanical Input Torque
R_s = 1.102e-03; %Stator Winding Resistance
R_r = 1.497e-03; %Rotor Winding Resistance
L_ls = 0.06492e-03; %Stator Leakage Inductance
L_lr = 0.06492e-03; %Rotor Leakage Inductance
L_m = 2.13461e-03; %Magnetizing Inductance
J = 1200; %Moment of Inertia
V_gLL = 690; %Grid Line to Line RMS Voltage
f_g = 50; %Grid Frequency

%Calculate Determinant for current in dq axis
L_s = (L_ls + L_m);
L_r = (L_lr + L_m);
D1 = ((L_s*L_r) - ((L_m)^2));

%RPM to rad/sec
init_speed_rad = ((n_minit*2*pi)/60);

%Slip Calculation
n_syn = 120*f_s/(2*P);
slip = (n_syn - n_minit)/n_syn;