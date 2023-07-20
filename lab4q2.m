t = (-5:0.001:5)
F = 4
j = sqrt(-1)

thet = 2*j*pi*F*t

y = exp(thet)

subplot(3,1,1)
plot(t,y),grid on;
%xlim([min(t)-1 max(t)+1]);ylim([min(y)-1 max(y)+1]);
xlabel('time');
ylabel('value');
legend('signal');
title('signal')

subplot(3,1,2)
plot3(t,real(y),imag(y)),grid on;
%xlim([min(t)-1 max(t)+1]);ylim([min(y)-1 max(y)+1]);
xlabel('time');
ylabel('real value');
zlabel('imaginary value');
legend('signal');
title('exp signal')

y1 = cos(2*pi*F*t)+j*sin(2*pi*F*t)
subplot(3,1,3)
plot3(t,real(y1),imag(y1)),grid on;
%xlim([min(t)-1 max(t)+1]);ylim([min(y)-1 max(y)+1]);
xlabel('time');
ylabel('real value');
zlabel('imaginary value');
legend('signal');
title('sinusoidal signal')



subplot(3,1,1)
plot3(t,real(y),imag(y)),grid on;
%xlim([min(t)-1 max(t)+1]);ylim([min(y)-1 max(y)+1]);
xlabel('time');
ylabel('real value');
zlabel('imaginary value');
legend('signal');
title('exp signal')

y2 = abs(y)

subplot(3,1,1)
plot3(t,real(y2),imag(y2)),grid on;
%xlim([min(t)-1 max(t)+1]);ylim([min(y)-1 max(y)+1]);
xlabel('time');
ylabel('real value');
zlabel('imaginary value');
legend('signal');
title('abs signal')
