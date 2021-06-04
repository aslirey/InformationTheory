clear all
clc
Px=[1/2 1/4 1/8 1/8];
Hx=-sum(Px.*log2(Px))
Lx=[1 2 3 3];
L=sum(Px.*Lx)
ceil(L)
%******************************************************
clear all
clc
Px=[.5 .3 .15 .05];
Hx=0;
for i=0:length(Px)
    Hx=Hx-Px.*log2(Px);
end
Hx

Lx=[1 2 2 2
    2 2 2 2
    3 2 2 2
    3 3 3 3
    2 3 4 1];
L=Px.*Lx
x=sum(L,2)

L=zeros(1,5);
for i=1:length(Px)
    for j=1:5
        L(1,j)= L(1,j)+Px(i)*Lx(j,i);
    end 
end
L

%************************************************
clc 
clear all
Px=[.2 .35 .1 .05 .3];
Hx=sum(-Px.*log2(Px))
L=-log2(Px)
Lx=ceil(L)
Lavg=sum(Px.*Lx)

L = 0;
for i = 1 : length(Px)
    L = L + Px(i)*Lx(i);
end
L % average length result

%*****************************************************
clc 
clear all
Px=[.05 .1 .15 .3 .4];
Hx=-sum(Px.*log2(Px))
Pycx=[.5 .5   0    0
       0  0  .7   .3      
       0  0   1    0
      .1  0   0   .9
       0  .8  0   .2];
Py=Px*Pycx
Hy=-sum(Py.*log2(Py))
Pxy=diag(Px)*Pycx;
Hxy=0;
for i=1:size(Pxy,1)
    for j=1: size(Pxy,2)
        if Pxy(i,j)~=0
            Hxy=Hxy-Pxy(i,j).*log2(Pxy(i,j));
        end 
    end
end
Hxy
Hxym=nansum(-Pxy.*log2(Pxy))   
x=sum(Hxym,2)
Hycx=Hxy-Hx
Hxcy=Hxy-Hy
Ixcy=Hx-Hxcy
Iycx=Hy-Hycx
%********************************************************
clc 
clear all
Px=[.1 .1 .20 .25 .35];
Hx=sum(-Px.*log2(Px))
P1 = [.5 .5 0; .2 0 .8; 0 .9 .1; 0 0 1; .3 .7 0];
P2 = [.4 .6 0; 0 .5 .5; .8 0 .2];
P3 = [0 .5 .5 0; 0 0 .6 .4; .7 .3 0 0];
Py=Px*P1*P2*P3;
Hy=sum(-Py.*log2(Py))
Pxy=diag(Px)*P1*P2*P3
Hxy=nansum(-Pxy.*log2(Pxy));
x=sum(Hxy,2)
Hycx=x-Hx
Hxcy=x-Hy
Icxy=Hx-Hxcy
Icyx=Hy-Hycx
%******************************************************


