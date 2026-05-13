clc;
clear;
close all;

[x,y] = meshgrid(-2:0.05:2,-2:0.05:2);

pressure = exp(-(x.^2 + y.^2));

figure('Color','w');
contourf(x,y,pressure,25);
colorbar;

xlabel('X Axis');
ylabel('Y Axis');
title('Pressure Distribution Around Flapping Wings');
