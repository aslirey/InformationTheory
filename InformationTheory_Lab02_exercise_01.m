% Information Theory
% Lab 2 - exercise 1
clear all, clc
Px(1,1) = 0.1;
Px(1,2) = 1 - Px(1,1);
Py(1,1) = 0.4;
Py(1,2) = 1 - Py(1,1);
%(a)
Hx = sum( -Px .* log2(Px) ) % entropy of source X
Hy = sum( -Py .* log2(Py) ) % entropy of source Y
%(b)
Pxy = zeros(2,2);
Pxy(1,2) = 0.05;
Pxy(1,1) = Px(1,1) - Pxy(1,2);
Pxy(2,1) = Py(1,1) - Pxy(1,1);
Pxy(2,2) = Py(1,2) - Pxy(1,2);
Hxy = 0;
for i = 1 : size(Pxy,1)
    for j = 1 : size(Pxy,2)
        Hxy = Hxy - Pxy(i,j)*log2( Pxy(i,j) );
    end
end
Hxy %joint entropy
%(c)
Hxcy = Hxy - Hy %H(X|Y)
Hycx = Hxy - Hx %H(Y|X)
%(d)
Ixy = Hx - Hxcy %I(X;Y)
Iyx = Hy - Hycx %I(Y;X)
