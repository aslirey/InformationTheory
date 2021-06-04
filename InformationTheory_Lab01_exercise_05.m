% Information Theory
% Lab 1 - exercise 5

clear all, clc
p = 0.001 : 0.001 : .999 %probability values (p'nin aralýðýný veriyor. Zaman(t) gibi düþünebilirsin. 
                         %p hiç bir zaman 1 olamaz çünkü px=(p(0),p(1)). sýfýr olura p(1)'in
                         %olasýlýðý 0 olur.
% Source Entropy in bits/symbol
E2 = - p .* log2( p ) - ( 1-p ) .* log2( 1-p );

% Source Entropy in Nats/symbol
Ee = - p .* log( p ) - ( 1-p ) .* log( 1-p );

% Source Entropy in Hartleys/symbol
E10 = - p .* log10( p ) - ( 1-p ) .* log10( 1-p );

subplot(311), plot(p, E2), title('Entropy (bits/symbol)')
subplot(312), plot(p, Ee), title('Entropy (nats/symbol)')
subplot(313), plot(p, E10), title('Entropy (Hartleys/symbol)')
