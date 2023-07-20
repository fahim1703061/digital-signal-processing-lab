v = [1 2 3 4 5]
v = [1:1:10]

%q1

t = (-2:0.01:2)
e_y = exp(t)
figure(1)
subplot(3,2,1),plot(t,e_y),grid on;

impulse = t==0;

step = t>=0;
ramp = t.* step;
ry = ramp
subplot(3,2,2),
%plot(t,ry),
stem(t,ry)
grid on;
sy = step
subplot(3,2,3),plot(t,sy),grid on;
t1=t+1
subplot(3,2,4),plot(t1,ry),grid on;



