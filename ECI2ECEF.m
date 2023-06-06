function DCM=ECI2ECEF(time)
% example------ time=[2023 06 06 18 08 00]; in workspace
t=juliandate(time);  
THETAg_t=siderealTime(t)*pi/180; % deg -> rad, Greenwich Sidereal Time
DCM=[cos(THETAg_t) sin(THETAg_t) 0; -sin(THETAg_t) cos(THETAg_t) 0; 0 0 1];
