arg_prg=input("argument of periapsis(rad) =");
inc_angle=input("inclination angle(rad) =");
RAAN=input("Right Ascension of Ascending Node(rad) =");
C_wz=[cos(arg_prg) -sin(arg_prg) 0; sin(arg_prg) cos(arg_prg) 0; 0 0 1];
C_ix=[1 0 0; 0 cos(inc_angle) -sin(inc_angle) ; 0 sin(inc_angle) cos(inc_angle)];
C_oz=[cos(RAAN) -sin(RAAN) 0; sin(RAAN) cos(RAAN) 0; 0 0 1];
rotation_matrix=transpose((C_wz*C_ix*C_oz))

