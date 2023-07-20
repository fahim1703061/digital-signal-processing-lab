function [y,n] = sigscale(x, m, lr, up, k)
l = round(length(m)/k);
n = ceil([lr/k:up/k]) ;
y = x([(mod(m,k))==0]);
