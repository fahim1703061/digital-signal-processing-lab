



t = (-2:1:2)
x1 = [1 2 0 -3 4];
x2 = [4 0 -5 1 0];

subplot(3,2,1)
stem(t,x1),grid on;
xlim([min(t)-1 max(t)+1]);ylim([min(x1)-1 max(x1)+1]);
xlabel('time');
ylabel('value');
legend('signal');
title('signal')


subplot(3,2,2)
stem(t,x2),grid on;
xlim([min(t)-1 max(t)+1]);ylim([min(x2)-1 max(x2)+1]);
xlabel('time');
ylabel('value');
legend('signal');
title('signal')

add = x1 + x2

subplot(3,2,3)
stem(t,add),grid on;
xlim([min(t)-1 max(t)+1]);ylim([min(add)-1 max(add)+1]);
xlabel('time');
ylabel('value');
legend('signal');
title('add')

mulply = x1 .* x2

subplot(3,2,4)
stem(t,mulply),grid on;
xlim([min(t)-1 max(t)+1]);ylim([min(mulply)-1 max(mulply)+1]);
xlabel('time');
ylabel('value');
legend('signal');
title('multiply')


x = [1 2 3 4 5];
l = length(x);
X = 0;
z = sym('z');
for i=0:l-1
    X = X+x(i+1)*z^(-i);
end
disp('displaying output');
disp(X);
F2 = collect(X)
[num,den] = numden(F2);
Ts = 0.1;
H = tf(sym2poly(num),sym2poly(den),Ts)
pzmap(H)



sigfold(x1,t)