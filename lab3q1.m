t = (-4:1:4)
x = [0 0 1 2 0 -3 4 0 0 ];
h = [0 0 0 0 4 0 -5 1 0 ];

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

add = x + h

subplot(3,2,3)
stem(t,add),grid on;
xlim([min(t)-1 max(t)+1]);ylim([min(add)-1 max(add)+1]);
xlabel('time');
ylabel('value');
legend('signal');
title('add')

sub = x - h

subplot(3,2,3)
stem(t,add),grid on;
xlim([min(t)-1 max(t)+1]);ylim([min(sub)-1 max(sub)+1]);
xlabel('time');
ylabel('value');
legend('signal');
title('sub')

mulply = x .* h

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
vars=sym(x)
syms n
f=x
ztrans(f)
x = [1 2 3 4 5];
syms f1(x)

f1(x) = x;

sym w z
ztrans(1)
3*ztrans(1/z^2, z, w)

syms n
f = impulse(n);
ztrans(f)

l=2*z/(2*z-1)
iztrans(l)


%new t
t1 = (-1:0.1:1)

%j = sqrt(-1)

thet1 = 2*pi*F*t1

y1 = sin(thet1)./thet1

subplot(3,1,2)
plot(t1,y1),grid on;
%xlim([min(t)-1 max(t)+1]);ylim([min(y)-1 max(y)+1]);
xlabel('time');
ylabel('value');
legend('signal');
title('signal')
