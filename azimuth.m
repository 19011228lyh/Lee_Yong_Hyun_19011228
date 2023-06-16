function az = azimuth(ENU)
%ENU=[E1 N1 U1                      
%     E2 N2 U2                               
%     E3 N3 U3       N-by-3 matrix            
%     EN NN UN]                         

for i = 1:size(ENU,1)

 az(1,i)=atan2(ENU(i,1), ENU(i,2));
 if az(1,i)<0
     az(1,i)=az(1,i)+2*pi;
 end
 az(1,i)=az(1,i)*180/pi;
end
