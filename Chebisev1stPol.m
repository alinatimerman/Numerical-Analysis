%Chebusev polynomial

%n - degree of the polynomial
%x - node in which we compute the polynomial

function C=Chebisev1stPol(x,n);

if n==0
    C=ones(size(x));
    return
endif

if n==1
    C=x;
    return
endif

C=2*x.*Chebisev1stPol(x,n-1)-Chebisev1stPol(x,n-2);
endfunction

%C_3=4*x.^3-3*x