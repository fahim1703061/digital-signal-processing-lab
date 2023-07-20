% 2.y(n) = x(2n-2)+x(n+3)
[x21,n21] = sigscale(x11,n11,-3,6,2);
[x2,n2] = sigadd(x21,n21,x12,n12);
subplot(2,1,2);
stem(n2,x2);
xlabel('n');
ylabel('y(n)');