x = [1,1,1,0,-3,-4,2,2]
t = [0:1:7]
s_t = t - 3
subplot(3,1,1),
stem(t,x),grid on;
xlabel('time');
ylabel('value');
legend('x');
title('plot');

subplot(3,1,2),
stem(s_t,x),grid on;
xlabel('time');
ylabel('value');
legend('x');
title('plot');
axis([-3 4 3 -5])

r_x=zeros(1,length(x))
i=8;
while i>=1
    r_x(9-i) = x(i)
    i = i - 1;
end

subplot(3,1,3),
stem(s_t,r_x),grid on;
xlabel('time');
ylabel('value');
legend('x');
title('plot');
axis([-3 4 3 -5])