%Turning performance
%variables
rho = 1.225;
W1 = 1.2;
W2 = 3.2;
W3 = 5.2;
V = 20;
Vs = 10.5;
S = 0.619;
Clmax = 1.15014; % coef of lift
L = (Clmax*(((rho*V)^2)/2)*S)/9.81;% lift
%% Load factor and bank angle
phi = 25; %bank angle
n =1/cos(degtorad(phi)); % Max load factor
Vst= Vs*sqrt(n);%turn stall speed
R = (V^2)/(9.81*(tan(degtorad(phi))));%turn radius
omega = radtodeg((9.81*tan(degtorad(phi)))/V)%turn rate
