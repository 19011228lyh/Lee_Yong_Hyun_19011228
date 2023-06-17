function nu=change_in_nu(a_of_orbit,e_of_orbit,toc,T,M0)

mu=3.986064418*(10^5);

[h,m,s]=hms(datetime(T)-datetime(toc));

M=sqrt(mu/((a_of_orbit)^3))*(3600*h+m*60+s)+(M0*pi/180); %second 단위변환
E=M;
threshold = 1e-8;
maxIterations =100;
for i = 1:maxIterations
    E_prev = E;
    E=M + e_of_orbit*sin(E);
    if abs(E-E_prev) < threshold
        break
    end
end

x=(cos(E)-e_of_orbit)/(1-e_of_orbit*cos(E));
y=(sqrt(1-(e_of_orbit^2))*sin(E))/(1-e_of_orbit*cos(E));
nu = atan2(y,x)*180/pi;
if nu<0
    nu=nu+360;
end
end

