% Define the parameters
amplitude = 2.5;             % Amplitude of the sinusoidal signal
sampling_period = 0.005;    % Sampling period (5 ms)
duration = 4;               % Duration of the signal in seconds
frequency = 2;              % Frequency of the sinusoidal signal (2 Hz)

% Generate time values
t = 0:sampling_period:duration;

% Generate the sinusoidal signal
signal = amplitude * sin(2 * pi * frequency * t);

% Create a plot
plot(t, signal);
xlabel('Time (s)');
ylabel('Amplitude');
title('Sinusoidal Signal');
grid on;

% Display the plot

