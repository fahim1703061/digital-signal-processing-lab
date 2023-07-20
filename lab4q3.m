t = (-5:0.001:5)
F = 4


thet = 2*pi*F*t

y = sin(thet)./thet

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

