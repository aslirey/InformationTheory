% Information Theory
% Lab 1 - exercise 2

clear all
clc
N = 3; %number of digits 
M = 2; %base of number
p = 1/( power(M,N) )%probability of the number
x= power(M,N)

I2 = -log2( p ) %information in bits
Ie = -log( p ) %information in nats
I10 = -log10( p ) %information in Hartleys


