% Information Theory
% Lab 1 - exercise 1

clear all
clc
p = [0.4, 0.6];

%for 'heads'
Ih2 = -log2( p(1,1) ) %information in bits
Ihe = -log( p(1,1)) %information in nats
Ih10 = -log10( p(1,1) ) %information in Hartleys

%for 'tails'
It2 = -log2( p(1,2) ) %information in bits
Ite = -log( p(1,2) ) %information in nats
It10 = -log10( p(1,2) ) %information in Hartleys
