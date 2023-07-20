t = (-2:0.01:2)
F = 4
xt = [(0:0.01:1) (0.99:-0.01:0.01) (0:0.01:1) (0.99:-0.01:0)]
%subplot(3,1,1)
figure(1)
plot(t,xt),grid on;
xlabel('time');
ylabel('value');
legend('given signal');
title('fourier aanalysis')

figure(2)
plot(t,xt),grid on;hold on

%xlim([min(t)-1 max(t)+1]);ylim([min(y)-1 max(y)+1]);

j = sqrt(-1)

thet2 = j*2*pi*F*t

N = 15

k=(-N:1:N)
ck=zeros(1,length(k))
for i=1:length(k)
    if k(i) == 0
        ck(i) = 0.5
    else
        ck(i) = ((-1)^k(i)-1)/(pi^2*k(i)^2)
    end
end

yn=zeros(1,length(t))

thet3 = 2*pi*F*k
for i=1:length(t)
    yn(i) = sum((ck.*(cos(2*pi*0.5*k*t(i))+j*sin(2*pi*0.5*k*t(i)))))
end
figure(3)
plot(t,yn),grid on;
xlabel('time');
ylabel('value');
legend('predicted signal');
title('fourier aanalysis')

figure(2)
plot(t,yn,'r'),grid on;hold on
%xlim([min(t)-1 max(t)+1]);ylim([min(y)-1 max(y)+1]);


er = abs(xt-yn)
figure(2)
plot(t,er,'g'),grid on;
%xlim([min(t)-1 max(t)+1]);ylim([min(y)-1 max(y)+1]);
xlabel('time');
ylabel('value');
legend('given signal','predicted signal','error');
title('fourier aanalysis')
