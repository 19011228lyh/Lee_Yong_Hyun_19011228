function [position_ECI, velocity_ECI]=PQW2ECI_value(six_parameter)

PQW2ECI_DCM=PQW2ECI(six_parameter(5),six_parameter(3),six_parameter(4));
PQW_position=solveRangeInPerifocalFrame(six_parameter(1),six_parameter(2),six_parameter(6));
PQW_velocity=solveVelocityInPerifocal_Frame(six_parameter(1),six_parameter(2),six_parameter(6));
position_ECI=PQW2ECI_DCM*PQW_position;
velocity_ECI=PQW2ECI_DCM*PQW_velocity;
end

