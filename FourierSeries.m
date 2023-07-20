t = (-5:0.01:5)
F = 4


thet = 2*pi*F*t

y = sin(thet)
subplot(3,1,1)
plot(t,y),grid on;
%xlim([min(t)-1 max(t)+1]);ylim([min(y)-1 max(y)+1]);
xlabel('time');
ylabel('value');
legend('signal');
title('manual signal')
j = sqrt(-1)

thet2 = j*2*pi*F*t

N = 2

k=(-N:1:N)
ck=zeros(1,length(k))
for i=1:length(k)
    ck(i) = sum((y.*exp(-thet2*k(i))))/4
end
yn=zeros(1,length(t))

thet3 = j*2*pi*F*k
for i=1:length(t)
    yn(i) = sum((ck.*exp(thet3*t(i))))
end

subplot(3,1,2)
plot(t,yn),grid on;
%xlim([min(t)-1 max(t)+1]);ylim([min(y)-1 max(y)+1]);
xlabel('time');
ylabel('value');
legend('signal');
title('manual signal')

y2 = sin(thet2)
subplot(3,1,1)
plot(t,y),grid on;
%xlim([min(t)-1 max(t)+1]);ylim([min(y)-1 max(y)+1]);
xlabel('time');
ylabel('value');
legend('signal');
title('manual signal')

y1 = sinc(thet)

subplot(3,1,2)
plot(t,y1),grid on;
%xlim([min(t)-1 max(t)+1]);ylim([min(y)-1 max(y)+1]);
xlabel('time');
ylabel('value');
legend('signal');
title('built in signal')

%new t
t1 = (-1:0.1:1)

%j = sqrt(-1)

thet1 = 2*pi*F*t1

y2 = sin(thet1)./thet1

subplot(3,1,3)
plot(t1,y2),grid on;
%xlim([min(t)-1 max(t)+1]);ylim([min(y)-1 max(y)+1]);
xlabel('time');
ylabel('value');
legend('signal');
title('signal')




syms x
p =@(x,k) sin(k.*x*pi)
b1 = int(p,x,[0,2])
%ii)Using the b1 coefficient found for f, we write the fourier series of f
%and plot it from 0 to 2%
l=1
n=(1:100);
x=linspace(0,2*pi,100);
[N,X] = ndgrid(n,x);
sys = @(n,x) 4.*l./pi.*(1./(2.*n+1).*sin((2.*n+1).*pi.*x./l))   ;
sys_sum = sum(sys(N,X));
plot(x,sys_sum);
