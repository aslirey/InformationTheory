%Lab 4 - exercise 1
clear all, clc
Px = [1/2 1/4 1/8 1/8]; % distribution probability
Hx = 0;
for i = 1 : length(Px)
    Hx = Hx - Px(i)*log2( Px(i) );
end
Hx % H(X) result

Lx = [1 2 3 3]; %codeword length
L = 0;
for i = 1 : length(Px);
    L = L + Px(i)*Lx(i);
end
L % average length result

%or...
L = sum( Px .* Lx ); % average length result
ceil(L)