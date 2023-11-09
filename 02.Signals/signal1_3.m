load('signal.mat');
t = t_and_s(:,1);
s = t_and_s(:,2);

s2 = scale_1(s);

plot(t,s,'r');

grid on ;
hold on ;

plot(t,s2,'b');
xlabel('Time');
ylabel('Amplitude');
title('Normalized Signal');
save('new_signal.mat','s2','-ascii');
