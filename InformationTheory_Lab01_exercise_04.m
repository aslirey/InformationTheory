% Information Theory
% Lab 1 - exercise 4

clear all, clc
p = [.1 .2 .1 .4 .2]; %probability distribution

% Source Entropy in bits/symbol
E2 = 0;
for i = 1 : length(p)
    E2 = E2 - p(i)*log2( p(i) );
end
E2

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
