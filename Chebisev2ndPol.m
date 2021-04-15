%Chebusev polynomial

%n - degree of the polynomial
%x - node in which we compute the polynomial

function C=Chebisev2ndPol(x,n);

if n==0
    C=ones(size(x));
    return
endif

if n==1
    C=2*x;
    return
endif

C=2*x.*Chebisev2ndPol(x,n-1)-Chebisev2ndPol(x,n-2);
endfunction

 prev=2*x;
 anteprev=1;
for k=2:n
    C=2*x.x*prev-anteprev;
    
    anteprev=prev;
    prev=C;

endfor
  

%C_3=4*x.^3-3*x