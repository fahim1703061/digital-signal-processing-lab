t = (-1:0.01:1)
base = 2*ones(1,length(t))

exp = base.^t
shitfed_t = t + 0.5
left_t=t-0.5


figure(1)%1x2 grid
subplot(4,1,1),
plot(t,exp),grid on;
hold on;
plot(left_t,exp),grid on;

xlabel('time');
ylabel('value');
legend('exp','left shift');
title('exponential signal and left shifted exponential signal');

subplot(4,1,2),
stem(left_t,exp),grid on;
hold on;
stem(shitfed_t,exp),grid on;

xlabel('time');
ylabel('value');
legend('exp','left shift');
title('exponential signal and left shifted exponential signal');

%right
subplot(4,1,3),
plot(t,exp),grid on;
hold on;
plot(shitfed_t,exp),grid on;

xlabel('time');
ylabel('value');
legend('exp','right shift');
title('exponential signal and right shifted exponential signal');

subplot(4,1,4),
stem(t,exp),grid on;
hold on;
stem(shitfed_t,exp),grid on;

xlabel('time');
ylabel('value');
legend('exp','right shift');
title('exponential signal and right shifted exponential signal');

%subplot(3,2,2),



hold on;


