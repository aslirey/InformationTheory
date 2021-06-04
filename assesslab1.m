
%exercise 1
%source entropy

Px=[.1 .05 .2 .35 .30]
Hx=-sum(Px.*log2(Px))% don't forget minus and .*

%exercise 2!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
clear all
clc
Px2=0:100;
load Px2
Hx2=-nansum(Px2.*log2(Px2))

%exercise 4

load P1
load P2
load P3

Peq=P1*P2*P3;
py=(1/20)*Peq;
Ent=-nansum(py.*log2(py))
Hy=sum (Ent)


