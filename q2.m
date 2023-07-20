t = (-1:0.01:1)
base = 2*ones(1,length(t))

exp = base.^t
figure(1)%1x2 grid
subplot(3,2,1),stem(t,exp),grid on;
xlabel('time');
ylabel('value');
legend('exp');
%hold on;


sample = t == 0.00;
step = t >= 0;
ramp = t.*step

subplot(3,2,2),stem(t,ramp),grid on;
xlabel('time');
ylabel('value');
legend('ramp');

subplot(3,2,3),stem(t,sample),grid on;
xlabel('time');
ylabel('value');
legend('sample');



subplot(3,2,4),stem(t,step),grid on;
xlabel('time');
ylabel('value');
legend('step');
axis([-1 1 0 2])

f = 1/0.125
y1 = sin(2*pi*f*t);
subplot(3,2,5),stem(t,y1),grid on;
y2 = cos(2*pi*f*t);
subplot(3,2,6),stem(t,y2),grid on;
%hold off

