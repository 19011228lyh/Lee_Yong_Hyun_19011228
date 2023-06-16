function [position_ECEF, velocity_ECEF]=ECI2ECEF_value(position_ECI, velocity_ECI, time)

I2EDCM=ECI2ECEF_DCM(time);
position_ECEF=I2EDCM*position_ECI;
velocity_ECEF=I2EDCM*velocity_ECI;
end



