%f=@(x) x.^(1/3)
function [A,y,z] = atikenM(f,ak,e,x)
  %first step
  m=length(ak);
  A=zeros(m);
  
  %second step
  for i=1:m
    A(i,1)=f(ak(i));
  endfor
  
  %third step
  for i=1:m
    for j=2:i
      %step 3.1
      M=[A(i,j-1),x-ak(i);A(j-1,j-1),x-ak(j-1)];%matrix
      A(i,j)=det(M)/(ak(i)-ak(j-1));
      %step 3.2-stopping condition in regars of e(error)
      if abs(A(i,i)-A(i-1,i-1))<e
        y=i
        return 
      endif
    endfor
  endfor
  
  A
  y=m
  
  %%th and 6th steps
  z1=diag(A);
  z=z1(end);
  
endfunction