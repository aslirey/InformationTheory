clear all, clc
Px = [.1 .1 .2 .25 .35];

Hx = sum( - Px .* log2( Px ) )

P1 = [.5 .5 0; .2 0 .8; 0 .9 .1; 0 0 1; .3 .7 0];
P2 = [.4 .6 0; 0 .5 .5; .8 0 .2];
P3 = [0 .5 .5 0; 0 0 .6 .4; .7 .3 0 0];

Py = Px * P1 * P2 * P3; % output Y probability distribution

Hy = sum( - Py .* log2( Py ) )

Pxy = diag(Px) * ( P1 * P2 * P3 ); % joint prob matrix
Hxy = 0;
for i = 1 : size(Pxy,1)
    for j = 1 : size(Pxy,2)
        if( Pxy(i,j) ~= 0 )
            Hxy = Hxy - Pxy(i,j)*log2( Pxy(i,j) );
        end
    end
end
Hxy % H(XY) result
Hcyx = Hxy - Hx % H(Y|X)
Hcxy = Hxy - Hy % H(X|Y)
Ixy = Hy - Hcyx % I(X;Y)
Iyx = Hx - Hcxy % I(Y;X)

