%Glide performance
%% variables
Cl = 0.52478 ; %Cl 
rho =1.225 ; %air density
Vs = 10;% Stall velocity
S = 0.619; % Wing area
Cd = 0.02669 ; %Cd 
W1 = 1.2;
W2 = 3.2;
W3 = 5.2;
K = 0.01254;
Cd0 = 0.01415;
%K = ;%induced drag correction factor 
h = 30.48;%cruise altitude in meters
%% Glide
%Maximum ground distance
LDmax = 19.66301; % LDmax for glide and alpha = 0
gammamin = radtodeg(atan(1/(LDmax)));
Vgammamin = sqrt((2*W1*9.81)/(rho*S*(sqrt(Cd0/K))));
ROSgammamin = Vgammamin*sin(gammamin);
dmax = h/(tan(gammamin));% maximum horizontal glide distance
tmin = h/ROSgammamin;
%Maximum flight time
VROSmin = Vs*1.2;
ROSmin = sqrt((2*W1)/(rho*S*(sqrt(Cd0/K))));
gammaROSmin = radtodeg(asin(ROSmin/VROSmin));
tmax = h/ROSmin;
dtmax = h/(tan(gammaROSmin));
