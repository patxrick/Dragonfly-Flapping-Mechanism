clc;
clear;
close all;

flap_frequency = 8;
wing_length = 0.12;
max_flap_angle = 45;
simulation_time = 5;
fps = 100;

T = linspace(0, simulation_time, simulation_time*fps);

theta = max_flap_angle * sin(2*pi*flap_frequency*T);

x_tip = wing_length * cosd(theta);
y_tip = wing_length * sind(theta);

figure('Color','w');
axis equal;
axis([-0.15 0.15 -0.15 0.15]);
grid on;
hold on;

for i = 1:length(T)
    cla;

    plot([0 -x_tip(i)], [0 y_tip(i)], 'b', 'LineWidth', 4);
    plot([0 x_tip(i)], [0 y_tip(i)], 'r', 'LineWidth', 4);

    plot(0,0,'ko','MarkerSize',12,'MarkerFaceColor','k');

    title(['Dragonfly Wing Flapping  |  Time = ', num2str(T(i),'%.2f'),' s']);

    drawnow;
end
