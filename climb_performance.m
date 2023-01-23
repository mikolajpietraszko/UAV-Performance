%Climb performance
%variables
h = 30.48;
rho = 1.225;
W1 = 1.2;
W2 = 3.2;
W3 = 5.2;
V = 15;
Vs = 10;
S = 0.619;
Clmax = 1.15014;
T = 15.24; %17.6/9.81; % Thrust in N
%Calculations
Clclimb = 1.15014 ; %Lift coefficient for climb angle
Cdclimb = 0.0807; %Drag coefficient for climb angle
L = (Clclimb*(((rho*V)^2)/2)*S);%Lift in N
D = (Cdclimb *((rho*V^2)/2)*S);%Drag in N
ROC = ((T-D)*V)/(W3*9.81);

gamma = radtodeg(asin(ROC/V)); %angle of climb
