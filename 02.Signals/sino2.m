x=0:0.005:4;
y =2.5*sin(4*pi*x);

plot(x,y,'b',5);
xlabel('Time')
ylabel('Amplitude')
title('Sinusoid Signal')
hold on

z= 0.1*rand(size(t))+y;
plot(x,z,'r',2.5);
