choice = input("first = 1, second = 2 or third = 3: ");
if choice == 1 
A = [1, 2, 1; 2, 5, 3; 1, 3, 3]; b = [4; 10; 7];
elseif choice == 2 
A = [2, 7, -2; 1, -2, 2; 3, -2, 1]; b = [7; 19; -5]; 
elseif choice == 3 
A = [1, 2, 3, 4; 2, 5, 1, 10; 3, 1, 35, 5; 4, 10, 5, 45]; b = [9; 35; -45; 189]; 
endif

[lines, columns] = size(A);


if (lines ~= columns) || (det(A) == 0)
error("The matrix is not square or det(A) = 0");
endif

for i = 1 : lines
  for j = 1 : i
    if A(i, j) ~= A(j, i)
      error("The matrix is not symmetrical");
    endif
  endfor
endfor
R = chol(A); % to check if our method is OK

Aaux = A;
for i = 1 : lines-1
  V=Aaux(i+1:lines,i);
  W=Aaux(i,i+1:lines);
  Ai=Aaux(i+1:lines,i+1:lines);
  Aii=Ai-V/A(i,i)*W;
  A(i+1:lines,i)=V/A(i,i);
  A(i+1:lines,i+1:lines)=Aii;
  Aaux=A;
  A(i+1,i+1:lines)=A(i+1,i+1:lines)/sqrt(A(i+1,i+1)); 
endfor

L=A;
for i = 1:lines
  for j = 1:i
    if(i>j)
    L(i,j) = 0;
  endif
endfor
endfor

L
R

y=zeros(lines,1);
x=zeros(lines,1);

y(1) = b(1)/A(1,1);
Lt = transpose(L);

for i = 2 : lines
  sum = 0;
  for j = 1: i-1
    sum = sum + Lt(i,j)*y(j);
  endfor
  y(i)=1/Lt(i,i)*(b(i) - sum);    
endfor


x(lines) = 1/L(lines, lines)*y(lines);

for i = lines-1 : -1: 1
  sum = 0;
  for j = i+1 : lines
    sum = sum + L(i,j)*x(j);
  endfor
  x(i)=1/L(i,i)*(y(i)-sum);
endfor

x
  





