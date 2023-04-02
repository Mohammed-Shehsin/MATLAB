group='A';
id=[1 5 8 8 6 7];
id_mean=mean(id);
check_int=check_integer(id_mean);
t = linspace(0, 9, 100);
w1 = id(1);
w2 = id(2);
w3 = id(3);
w4 = id(4);
w5 = id(5);
w6 = id(6);

y = w1*t.^0 + w2*t.^5 + w3*t.^4 + w4*t.^3 + w5*t.^2 + w6*t;
plot(t, y, 'b-');
title('polynomial');
xlabel('t');
ylabel('y');
saveas(gcf, 'quiz.png');
M = [t; y; 12*ones(1, length(t))];
M(:, 1:2:end) = 0;


