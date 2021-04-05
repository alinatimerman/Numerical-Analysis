%Hermite polynomial

%n - degree of the polynomial
%x - node in which we compute the polynomial

function H = HermitePol(x,n)
  
  if n == 0
    H = ones(size(x));
    return
  endif
  
  if n == 1
    H = 2*x;
    return
  endif
  
  H = 2*x.*HermitePol(x,n-1) - 2*(n-1).*HermitePol(x,n-2);
  
  
endfunction


