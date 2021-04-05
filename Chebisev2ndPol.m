%Chebusev polynomial

%n - degree of the polynomial
%x - node in which we compute the polynomial

function C = ChebisevSecondPol(x,n)
  
  if n == 0
    C = ones(size(x));
    return
  endif
  
  if n == 1
    C = 2*x ;
    return
  endif
  
  C = 2*x*ChebisevSecondPol(x,n-1) - ChebisevSecondPol(x, n-2);
  
  
endfunction


