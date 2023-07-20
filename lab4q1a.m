h=[4 0 -5 1 0]
x=[1 2 0 -3 4]
l = length(x);
X = 0;
z = sym('z');
for i=-2:2
    X = X+x(i+3)*z^(-i);
end

disp('displaying output X(z):');
disp(X);

l = length(h);
H = 0;
z = sym('z');
for i=0:l-1
    H = H+h(i+1)*z^(-i);
end

disp('displaying output H(z)');
disp(H);