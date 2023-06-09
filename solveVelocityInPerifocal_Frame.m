function velocityInPQW = solveVelocityInPerifocal_Frame(semimajor_axis, eccentricity, true_anomaly)
true_anomaly_rad=true_anomaly*pi/180;
mu=3.986064418*(10^5);
p=semimajor_axis*(1-eccentricity^2);
velocityInPQW=sqrt(mu/p).*[-sin(true_anomaly_rad); eccentricity+cos(true_anomaly_rad) ; 0 ];
end   / 모든 값 단위 [km]                