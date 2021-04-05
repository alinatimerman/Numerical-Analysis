%Laguerre polynomial

%n - degree of the polynomial
%x - node in which we compute the polynomial

function L = LaguerrePol(x,n)
  
  if n == 0
    L = ones(size(x));
    return
  endif
  
  if n == 1
    L = 1 - x ;
    return
  endif
  
  L = (1/n) * ((2*n - 1 - x) .* LaguerrePol(x,n-1) - (n-1).*LaguerrePol(x,n-2));
  
  
endfunction


