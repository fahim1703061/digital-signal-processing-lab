%x=input('Enter x:     ')
x=[1 2 0 -3 4]; 
%h=input('Enter h:   ')
h=[4 0 -5 1 0];
% convolution
m=length(x);
n=length(h);
X=[x,zeros(1,n-1)];
H=[h,zeros(1,m-1)];
for i=1:n+m-1
    Y(i)=0;
    for j=1:m
        if(i-j+1>0)
            Y(i)=Y(i)+X(j)*H(i-j+1);
        else
        end
    end
end
t=[-4:4];
figure;
subplot(3,1,1); stem(p,x); xlabel('n');
ylabel('x[n]'); grid on;
subplot(3,1,2); stem(p,h);
xlabel('n'); ylabel('h[n]'); grid on;
subplot(3,1,3); stem(t,Y);
ylabel('Y[n]'); xlabel('n'); grid on;
title('Convolution of Two Signals');