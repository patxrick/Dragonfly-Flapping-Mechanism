clc;
clear;
close all;

A = 45;
f = 8;
w = 2*pi*f;

T = linspace(0,2,1000);

angle = A*sin(w*T);

figure('Color','w');
plot(T, angle, 'LineWidth', 2);
grid on;

xlabel('Time (s)');
ylabel('Wing Angle (degrees)');
title('Dragonfly Wing Harmonic Motion');
