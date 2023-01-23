%Propeller performance at different flight stages
%% 1. Efficiency at different RPM

Vc = 20;
Vstall = 10;
Vto = 1.2*Vstall;
Vd = 1.3*Vstall;
%RPM = 1000

RPM1k.Eff   = RPM1(:,1);
RPM1k.V     = RPM1(:,2)*0.4470;
RPM1k.J     = RPM1(:,3);
RPM1k.Pe    = RPM1(:,4)*0.7457;
RPM1k.Ct    = RPM1(:,5);
RPM1k.Cp    = RPM1(:,6);
RPM1k.PWR   = RPM1(:,7);
RPM1k.Torque= RPM1(:,8)*4.44822;
RPM1k.T     = RPM1(:,9)*4.44822;

%RPM = 2000
RPM2k.Eff   = RPM2(:,1);
RPM2k.V     = RPM2(:,2)*0.4470;
RPM2k.J     = RPM2(:,3);
RPM2k.Pe    = RPM2(:,4)*0.7457;
RPM2k.Ct    = RPM2(:,5);
RPM2k.Cp    = RPM2(:,6);
RPM2k.PWR   = RPM2(:,7);
RPM2k.Torque= RPM2(:,8)*4.44822;
RPM2k.T     = RPM2(:,9)*4.44822;

%RPM = 3000
RPM3k.Eff   = RPM3(:,1);
RPM3k.V     = RPM3(:,2)*0.4470;
RPM3k.J     = RPM3(:,3);
RPM3k.Pe    = RPM3(:,4)*0.7457;
RPM3k.Ct    = RPM3(:,5);
RPM3k.Cp    = RPM3(:,6);
RPM3k.PWR   = RPM3(:,7);
RPM3k.Torque= RPM3(:,8)*4.44822;
RPM3k.T     = RPM3(:,9)*4.44822;

%RPM = 4000
RPM4k.Eff   = RPM4(:,1);
RPM4k.V     = RPM4(:,2)*0.4470;
RPM4k.J     = RPM4(:,3);
RPM4k.Pe    = RPM4(:,4)*0.7457;
RPM4k.Ct    = RPM4(:,5);
RPM4k.Cp    = RPM4(:,6);
RPM4k.PWR   = RPM4(:,7);
RPM4k.Torque= RPM4(:,8)*4.44822;
RPM4k.T     = RPM4(:,9)*4.44822;

%RPM = 5000
RPM5k.Eff   = RPM5(:,1);
RPM5k.V     = RPM5(:,2)*0.4470;
RPM5k.J     = RPM5(:,3);
RPM5k.Pe    = RPM5(:,4)*0.7457;
RPM5k.Ct    = RPM5(:,5);
RPM5k.Cp    = RPM5(:,6);
RPM5k.PWR   = RPM5(:,7);
RPM5k.Torque= RPM5(:,8)*4.44822;
RPM5k.T     = RPM5(:,9)*4.44822;

%RPM = 6000
RPM6k.Eff   = RPM6(:,1);
RPM6k.V     = RPM6(:,2)*0.4470;
RPM6k.J     = RPM6(:,3);
RPM6k.Pe    = RPM6(:,4)*0.7457;
RPM6k.Ct    = RPM6(:,5);
RPM6k.Cp    = RPM6(:,6);
RPM6k.PWR   = RPM6(:,7);
RPM6k.Torque= RPM6(:,8)*4.44822;
RPM6k.T     = RPM6(:,9)*4.44822;

%RPM = 7000
RPM7k.Eff   = RPM7(:,1);
RPM7k.V     = RPM7(:,2)*0.4470;
RPM7k.J     = RPM7(:,3);
RPM7k.Pe    = RPM7(:,4)*0.7457;
RPM7k.Ct    = RPM7(:,5);
RPM7k.Cp    = RPM7(:,6);
RPM7k.PWR   = RPM7(:,7);
RPM7k.Torque= RPM7(:,8)*4.44822;
RPM7k.T     = RPM7(:,9)*4.44822;

%RPM = 8000
RPM8k.Eff   = RPM8(:,1);
RPM8k.V     = RPM8(:,2)*0.4470;
RPM8k.J     = RPM8(:,3);
RPM8k.Pe    = RPM8(:,4)*0.7457;
RPM8k.Ct    = RPM8(:,5);
RPM8k.Cp    = RPM8(:,6);
RPM8k.PWR   = RPM8(:,7);
RPM8k.Torque= RPM8(:,8)*4.44822;
RPM8k.T     = RPM8(:,9)*4.44822;

%Static Thrust
T = [1:8]
T(1) = max(RPM1k.T);
T(2) = max(RPM2k.T);
T(3) = max(RPM3k.T);
T(4) = max(RPM4k.T);
T(5) = max(RPM5k.T);
T(6) = max(RPM6k.T);
T(7) = max(RPM7k.T);
T(8) = max(RPM8k.T);
RPMarray = [1000:1000:8000]

%%Plots 

figure(1)
title('11x7E Prop efficiency at various RPM')
hold on
plot(RPM1k.V, RPM1k.Eff,'r:')
plot(RPM2k.V, RPM2k.Eff,'r--')
plot(RPM3k.V, RPM3k.Eff,'r')
plot(RPM4k.V, RPM4k.Eff,'y--')
plot(RPM5k.V, RPM5k.Eff,'y')
plot(RPM6k.V, RPM6k.Eff,'g:')
plot(RPM7k.V, RPM7k.Eff,'g--')
plot(RPM8k.V, RPM8k.Eff,'g')
legend('1000RPM','2000RPM','3000RPM','4000RPM','5000RPM','6000RPM','7000RPM','8000RPM')
xline(Vc , '--k', 'Cruise Velocity');
xline(Vstall , '--k', 'Stall Velocity');
xline(Vto , '--k', 'Takeoff Velocity');
xline(Vd , '--k', 'Descent Velocity');
xlabel('Velocity m/s');
ylabel('Propeller Efficiency');
hold off

figure(2)
hold on
grid on
plot(RPMarray,T);
title('11x7E Prop thrust at various RPM (at V0)')
xlabel('RPM');
ylabel('Thrust (N)');
hold off