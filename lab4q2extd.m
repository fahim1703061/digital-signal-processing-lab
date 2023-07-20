t = (-5:0.001:5)
F = 4
j = sqrt(-1)

thet = 2*j*pi*F*t

y = exp(thet)

subplot(3,1,1)
plot3(t,real(y),imag(y)),grid on;
%xlim([min(t)-1 max(t)+1]);ylim([min(y)-1 max(y)+1]);
xlabel('time');
ylabel('real value');
zlabel('imaginary value');
legend('signal');
title('exp signal')

y2 = abs(y)

subplot(3,1,2)
plot(t,y2),grid on;
%xlim([min(t)-1 max(t)+1]);ylim([min(y)-1 max(y)+1]);
xlabel('time');
ylabel('real value');
zlabel('imaginary value');
legend('signal');
title('abs signal')

y3 = y.*y

subplot(3,1,3)
plot(t,y3),grid on;
%xlim([min(t)-1 max(t)+1]);ylim([min(y)-1 max(y)+1]);
xlabel('time');
ylabel('real value');
zlabel('imaginary value');
legend('signal');
title('abs square signal')