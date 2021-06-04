% Lab 4 - exercise 3
clear all, clc
Px = [.2 .35 .1 .05 .3]; % distribution probability
Hx = 0;
for i = 1 : length(Px)
    Hx = Hx - Px(i)*log2( Px(i) );
end
Hx % H(X) result
%or...
Hx = sum( - Px .* log2(Px) )

l = -log2(Px) %optimal length of codesymbols
lreal = ceil(l) %real length of codesymbols
L = 0;
for i = 1 : length(Px)
    L = L + Px(i)*lreal(i);
end
L % average length result
%or...
L = sum( Px .* lreal )
