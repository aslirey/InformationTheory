clear all, clc
Px = [.05 .1 .15 .3 .4];

Hx = sum( - Px .* log2( Px ) )

Pcxy = [.5  .5   0   0;
         0  .7   0  .3;
         0   0   1   0;
        .1   0   0  .9;
         0  .8   0  .2];
Py = Px * Pcxy% output Y probability distribution

Hy = sum( - Py .* log2( Py ) )

Pxy = diag(Px) * Pcxy; % joint prob matrix
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

