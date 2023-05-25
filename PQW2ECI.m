function rotation_matrix=PQW2ECI(arg_prg, inc_angle, RAAN)
R_wz=[cos(arg_prg) sin(arg_prg) 0; -sin(arg_prg) cos(arg_prg) 0; 0 0 1];
R_ix=[1 0 0; 0 cos(inc_angle) sin(inc_angle) ; 0 -sin(inc_angle) cos(inc_angle)];
R_oz=[cos(RAAN) sin(RAAN) 0; -sin(RAAN) cos(RAAN) 0; 0 0 1];
rotation_matrix=transpose((R_wz*R_ix*R_oz));
end