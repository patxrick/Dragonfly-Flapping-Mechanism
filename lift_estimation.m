clc;
clear;

rho = 1.225;
wing_area = 0.015;
flap_frequency = 8;
wing_span = 0.24;
lift_coefficient = 1.1;

velocity = 2 * pi * flap_frequency * wing_span;

Lift = 0.5 * rho * velocity^2 * wing_area * lift_coefficient;

fprintf('Estimated Lift Force = %.4f N\n', Lift);
