% Information Theory
% Lab 1 - exercise 3
clear all, clc
a = 1/2;
b = 1/4;
c = 1/8;
d = 1 - a - b - c;
p = [a, b, c, d]; %probability distribution
stem(p)% plots the data sequence
% Source Entropy in bits/symbol
E2 = 0;
for i = 1 : length(p)
    E2 = E2 - p(i)*log2( p(i) );
end
E2
% alternative...: E2 =-sum( p .* log2(p) )

% Source Entropy in Nats/symbol
Ee = 0;
for i = 1 : length(p)
    Ee = Ee - p(i)*log( p(i) );
end
Ee
% Source Entropy in Hartleys/symbol
E10 = 0;
for i = 1 : length(p)
    E10 = E10 - p(i)*log10( p(i) );
end
E10