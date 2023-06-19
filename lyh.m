function six_parameter=lyh(T,nav,satellite_name)
if satellite_name=="GPS"
    nu=change_in_nu(nav.GPS.a*10^(-3),nav.GPS.e,nav.GPS.toc,T,nav.GPS.M0*(180/pi));
    six_parameter=[nav.GPS.a*10^(-3); nav.GPS.e; nav.GPS.i*(180/pi); nav.GPS.OMEGA*(180/pi); nav.GPS.omega*(180/pi); nu];

end
if satellite_name=="BDS"
    nu=change_in_nu(nav.BDS.a*10^(-3),nav.BDS.e,nav.BDS.toc,T,nav.BDS.M0*(180/pi));
    six_parameter=[nav.BDS.a*10^(-3); nav.BDS.e; nav.BDS.i*(180/pi); nav.BDS.OMEGA*(180/pi); nav.BDS.omega*(180/pi); nu];
end
if satellite_name=="QZSS"
    nu=change_in_nu(nav.QZSS.a*10^(-3),nav.QZSS.e,nav.QZSS.toc,T,nav.QZSS.M0*(180/pi));
    six_parameter=[nav.QZSS.a*10^(-3); nav.QZSS.e; nav.QZSS.i*(180/pi); nav.QZSS.OMEGA*(180/pi); nav.QZSS.omega*(180/pi); nu];
end
end


