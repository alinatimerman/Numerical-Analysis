%Chebusev polynomial

%n - degree of the polynomial
%x - node in which we compute the polynomial

function C = ChebisevFirstPol(x,n)
  
  if n == 0
    C = ones(size(x));
    return
  endif
  
  if n == 1
    C = x ;
    return
  endif
  
  C = (2*x)*ChebisevFirstPol(x,n-1) - ChebisevFirstPol(x,n-2);
  
  
endfunction

