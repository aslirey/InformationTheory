% Information Theory
% Lab 2 - exercise 2
clear all, clc
Pxy = [ 1/8   1/16  1/32  1/32;
        1/16  1/8   1/32  1/32;
        1/16  1/16  1/16  1/16;
        1/4   0     0     0];
%(a)
Px = sum( Pxy , 1 ) %probability distribution of source X
Py = sum( Pxy , 2 )'; %probability distribution of source Y
%(b)
Hx = sum( -Px .* log2(Px) ) % entropy of source X
Hy = sum( -Py .* log2(Py) ) % entropy of source Y
%(c)
Hxy = 0;
for i = 1 : size(Pxy,1)
    for j = 1 : size(Pxy,2)
        if( Pxy(i,j) ~= 0 )
            Hxy = Hxy - Pxy(i,j)*log2( Pxy(i,j) );
        end
    end
end
Hxy %joint entropy XY
%(d)
Hxcy = Hxy - Hy %H(X|Y)
Hycx = Hxy - Hx %H(Y|X)
%(e)
Ixy = Hx - Hxcy %I(X;Y)
Iyx = Hy - Hycx %I(Y;X)

