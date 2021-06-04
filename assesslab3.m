%exercise 3

clear all, clc

Px=[.1 .05 .2 .35 .3];

Pcxy=[.7 .3  0  0
      0 .6  0 .4
      0  0  1  0
     .2  0  0 .8
      0 .1  0 .9];



Hx = sum( - Px .* log2( Px ) )


Py = Px * Pcxy % output Y probability distribution

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
Ent=nansum(-Pxy.*log2(Pxy))
Hxy2=sum(Ent)
Hcyx = Hxy - Hx % H(Y|X)
Hcxy = Hxy - Hy % H(X|Y)
Ixy = Hy - Hcyx % I(X;Y)
Iyx = Hx - Hcxy % I(Y;X)



    