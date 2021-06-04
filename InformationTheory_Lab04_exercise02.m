clear all, clc
Px = [.5 .3 .15 .05]; % distribution probability
Hx = 0;
for i = 1 : length(Px)
    Hx = Hx - Px(i)*log2( Px(i) );
end
Hx % H(X) result
Lx = [1 2 2 2;
      2 2 2 2;
      3 2 2 2;
      3 3 3 3;
      2 3 4 1]; %codeword length
L = zeros(1,5);
for i = 1 : length(Px)
    for j=1:5
        L(1,j) = L(1,j) + Px(i)*Lx(j,i);
    end
end
L % average length result
%or...
L1 = Lx .* Px
x=sum(L1,2)
