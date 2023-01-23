% Propeller comparison analysis
%

RPM = 8000;
V = (0:1:40);
Vc = 20; % Cruise speed
V0 = 0;  
%% Propeller #1 ~ 11x5.5
Prop_1.pitch = 5.5;
Prop_1.D = 11;
%Prop_1.T = (1.225*((pi*(0.0254*Prop_1.D)^2)/4)*((RPM*0.0254*Prop_1.pitch*(1/60))^2 - (RPM*0.0254*Prop_1.pitch*(1/60))*(V))*(Prop_1.D/(3.29546*Prop_1.pitch))^1.5)/9.81;

Prop_1.data = Prop_11x55E;
Prop_1.Vexp = Prop_1.data(:,1)*0.4470;
Prop_1.J =Prop_1.data(:,2);
Prop_1.Pe = Prop_1.data(:,3)*0.7457;
Prop_1.Ct = Prop_1.data(:,4);
Prop_1.Cp = Prop_1.data(:,5);
Prop_1.PWR = Prop_1.data(:,6)*745.7;
Prop_1.Torque = Prop_1.data(:,7)*4.44822;
Prop_1.T = Prop_1.data(:,8)*4.44822;
Prop_1.Eff = Prop_1.data(:,9);
%% Propeller #2 ~ 11x7
Prop_2.pitch = 7;
Prop_2.D = 11;
%Prop_2.T = (1.225*((pi*(0.0254*Prop_2.D)^2)/4)*((RPM*0.0254*Prop_2.pitch*(1/60))^2 - (RPM*0.0254*Prop_2.pitch*(1/60))*(V))*(Prop_2.D/(3.29546*Prop_2.pitch))^1.5)/9.81;

Prop_2.data = Prop_11x7E;
Prop_2.Vexp = Prop_2.data(:,1)*0.4470;
Prop_2.J =Prop_2.data(:,2);
Prop_2.Pe =Prop_2.data(:,3)*0.7457;
Prop_2.Ct =Prop_2.data(:,4);
Prop_2.Cp = Prop_2.data(:,5);
Prop_2.PWR =Prop_2.data(:,6)*745.7;
Prop_2.Torque =Prop_2.data(:,7)*4.44822;
Prop_2.T = Prop_2.data(:,8)*4.44822;
Prop_2.Eff = Prop_2.data(:,9);
%% Propeller #3 ~ 12x6
Prop_3.pitch = 6;
Prop_3.D = 12;
%Prop_3.T = (1.225*((pi*(0.0254*Prop_3.D)^2)/4)*((RPM*0.0254*Prop_3.pitch*(1/60))^2 - (RPM*0.0254*Prop_3.pitch*(1/60))*(V))*(Prop_3.D/(3.29546*Prop_3.pitch))^1.5)/9.81;

Prop_3.data = Prop_12x6E;
Prop_3.Vexp =Prop_3.data(:,1)*0.44704;
Prop_3.J = Prop_3.data(:,2);
Prop_3.Pe =Prop_3.data(:,3)*0.7457;
Prop_3.Ct = Prop_3.data(:,4);
Prop_3.Cp = Prop_3.data(:,5);
Prop_3.PWR = Prop_3.data(:,6)*745.7;
Prop_3.Torque =Prop_3.data(:,7)*4.44822;
Prop_3.T = Prop_3.data(:,8)*4.44822;
Prop_3.Eff = Prop_3.data(:,9);
%% Plots
%{
figure(1)
hold on
plot(V, Prop_1.T,'r')
plot(V, Prop_2.T,'b')
plot(V, Prop_3.T,'g')
grid on
xlabel("Velocity (m/s)")
ylabel("Thrust (kg)")
ylim([0 3])
%Tc = (1.225*((pi*(0.0254*D)^2)/4)*((RPM*0.0254*pitch*(1/60))^2 - (RPM*0.0254*pitch*(1/60))*(Vc))*(D/(3.29546*pitch))^1.5)/9.81;
%T0 = (1.225*((pi*(0.0254*D)^2)/4)*((RPM*0.0254*pitch*(1/60))^2 - (RPM*0.0254*pitch*(1/60))*(V0))*(D/(3.29546*pitch))^1.5)/9.81;
%}
figure(4)

subplot(2,2,1)
hold on
title('Thrust comparison')
plot(Prop_1.Vexp, Prop_1.T,'y')
plot(Prop_2.Vexp, Prop_2.T,'g')
plot(Prop_3.Vexp, Prop_3.T,'r')
hold off
xlabel('Velocity (m/s)');
ylabel('Thrust (N)');
subplot(2,2,2)
hold on
title('Cp comparison')
plot(Prop_1.Vexp, Prop_1.Cp,'y')
plot(Prop_2.Vexp, Prop_2.Cp,'g')
plot(Prop_3.Vexp, Prop_3.Cp,'r')
hold off
xlabel('Velocity (m/s)');
ylabel('Coefficient of Power');
subplot(2,2,3)
hold on
title('J and V comparison')
plot(Prop_1.Vexp, Prop_1.J,'y')
plot(Prop_2.Vexp, Prop_2.J,'g')
plot(Prop_3.Vexp, Prop_3.J,'r')
xlabel('Velocity (m/s)');
ylabel('Advance ratio J');
hold off
subplot(2,2,4)
hold on
title('Ct comparison')
plot(Prop_1.Vexp, Prop_1.Ct,'y')
plot(Prop_2.Vexp, Prop_2.Ct,'g')
plot(Prop_3.Vexp, Prop_3.Ct,'r')
xlabel('Velocity (m/s)');
ylabel('Coefficient of Thrust');
hold off
legend('11x5.5E','11x7E','12x6E');

figure(5)
hold on
title('Prop Efficiency Comparison')
prop1 = plot(Prop_1.Vexp, Prop_1.Eff,'y'),
prop2 = plot(Prop_2.Vexp, Prop_2.Eff, 'g')
prop3 = plot(Prop_3.Vexp, Prop_3.Eff, 'r'), hold off
legend([prop1(1), prop2(1), prop3(1)],'11x5.5E','11x7E','12x6E');
xline(Vc , '--k', 'Cruise Velocity');
xlabel('Velocity m/s');
ylabel('Propeller Efficiency');

figure(3)
cpv1 = plot(Prop_1.Vexp, Prop_1.PWR,'y'), hold on
cpv2 = plot(Prop_2.Vexp, Prop_2.PWR, 'g')
cpv3 = plot(Prop_3.Vexp, Prop_3.PWR, 'r'), hold off
legend([cpv1(1), cpv2(1), cpv3(1)],'11x5.5E','11x7E','12x6E');
title('Power Comparison')
xline(Vc , '--k', 'Cruise Velocity');
xlabel('Velocity (m/s)');
ylabel('Power Absorbed (W)');
