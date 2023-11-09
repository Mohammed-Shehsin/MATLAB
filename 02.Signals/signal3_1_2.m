close all;
clear;
clc;
n_O_s = 20; % Number of samples
std = 2.3; % standard Deviation
mean_value = -4.2;
% Generate normally distributed signal
normdist_signal = std * randn(1, n_O_s) + mean_value;

%A

% Empirical Estimates of Known Values
ee_mean_value = mean(normdist_signal);
ee_variance = var(normdist_signal);
ee_std = sqrt(ee_variance);

%B

% Discarding samples out of [-15, 5) range
normdist_signal = normdist_signal(normdist_signal >= -15 & normdist_signal < 5);

% Plotting histogram
hist(normdist_signal, 10);

%C

% Drawing probability density function [pdf] of given normal distribution
data_points_for_pdf = -15:0.1:5-0.1; % 200 data points
pdf = normpdf(data_points_for_pdf, mean_value, std); % Create pdf
figure
line(data_points_for_pdf, pdf, 'color', 'r', 'linewidth', 1)
% Normalizing histogram
hist(normdist_signal, 10, 'normalization', 'pdf');
title('Normalized Histogram [of NDS] and PDF')
xlabel('Value Ranges')
ylabel('Probability of Values')

% Drawing pdf for calculated/empirical normal distribution values
e_pdf = normpdf(data_points_for_pdf, ee_mean_value, ee_std);
hold on
plot(data_points_for_pdf, e_pdf, 'g', 'LineWidth', 1);

