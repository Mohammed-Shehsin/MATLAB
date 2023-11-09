%expected parameters
%e_mu =
%e_sigma =
n=randn(1,100);
%c_mu=
%c_sigma=

hist(n,10);
figure;
hist(n,10,'Normalization','Probability');
hold on;
x=-5:0.5:5;
gc = normpdf(x,0,1);
figure;
plot(x,gc);


