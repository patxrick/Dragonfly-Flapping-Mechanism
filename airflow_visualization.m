clc;
clear;
close all;

[x,y] = meshgrid(-2:0.2:2, -2:0.2:2);

u = -y;
v = x;

figure('Color','w');
quiver(x,y,u,v,'LineWidth',1.2);
axis equal;
grid on;

xlabel('X Axis');
ylabel('Y Axis');
title('Simplified Airflow Around Flapping Wings');
