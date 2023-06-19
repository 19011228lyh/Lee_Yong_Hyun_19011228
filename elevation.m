function el = elevation(ENU, el_mask)
%ENU=[E1 N1 U1                      el=[el1 el2 el3 elN]
%     E2 N2 U2                          1-by-N matrix     
%     E3 N3 U3       N-by-3 matrix            
%     EN NN UN]                         

for i = 1:size(ENU,1)

 el(1,i)=asin((ENU(i,3))/sqrt((ENU(i,1)^2)+((ENU(i,2))^2)+(ENU(i,3)^2)))*180/pi;
  if el(1,i) < el_mask
     el(1,i)=NaN;
 end
end


