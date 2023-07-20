t = (-4:1:4)
t1 = (-8:1:8)
x = [0 0 1 2 0 -3 4 0 0 ];
h = [0 0 0 0 4 0 -5 1 0 ];
ih = [0 -5 1 0 0 4 0 0 0 0]
ih1 = [0 0 -5 1 0 0 4 0 0 0]
ih2 = [0 0 0 -5 1 0 0 4 0 0]
xx = [0 0 0 0 0 0 1 2 0 -3 4 0 0 0 0 0 0 ];
xh = [0 0 0 0 0 0 0 0 4 0 -5 1 0 0 0 0 0];

subplot(3,2,1)
stem(t,x),grid on;
xlim([min(t)-1 max(t)+1]);ylim([min(x)-1 max(x)+1]);
xlabel('time');
ylabel('value');
legend('signal');
title('signal')

subplot(3,2,2)
stem(t,h),grid on;
xlim([min(t)-1 max(t)+1]);ylim([min(h)-1 max(h)+1]);
xlabel('time');
ylabel('value');
legend('signal');
title('signal')
len = length(x)+length(h) - 1
y = zeros(1,len)

[fh,ft1]=sigfold(h,t1)

y0=sum(x.*fh)
y1=sum(x.*ih1)
y2=sum(x.*ih2)
yn = [y0,y1,y2]
[sh,st] = sigshift(fh,ft1,t(i))

con = y


subplot(3,2,3)
stem(t1,con),grid on;
xlim([min(t)-1 max(t)+1]);ylim([min(con)-1 max(con)+1]);
xlabel('time');
ylabel('value');
legend('signal');
title('condef')