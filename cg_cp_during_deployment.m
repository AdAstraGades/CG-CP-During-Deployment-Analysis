
clear; clc; close all

%% Tiempo
t = linspace(0,8,1000);

%% Instante de despliegue
tDeploy = 4.39;

%% Valores antes y después del despliegue
CG_before = 517.05;   % mm
CG_after  = 363.00;   % mm

CP_before = 610;      % ajustar si recuerdas el dato exacto
CP_after  = 760;

%% Cambio instantáneo
CG = CG_before*ones(size(t));
CP = CP_before*ones(size(t));

CG(t>=tDeploy) = CG_after;
CP(t>=tDeploy) = CP_after;

%% Figura 14
figure('Color','w')

plot(t,CG,'b','LineWidth',2)
hold on
plot(t,CP,'r','LineWidth',2)

xline(tDeploy,'k--','Wing deployment')

xlabel('Time [s]')
ylabel('Longitudinal Position [mm]')
title('Comparative Analysis of CP and CG During Wing Deployment')

legend('CG','CP','Location','best')
grid on
xlim([0 8])
