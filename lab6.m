clear all
clc

tic
choice = input("select case: ");

if choice == 1
A = [2, 7, -2; 1, -2, 2; 3, -2, 1], b = [7; 19; -5]
elseif choice == 2
A = [1, 2, 3, 4; 2, 5, 1, 10; 3, 1, 35, 5; 4, 10, 5, 45], b = [9; 35; -45; 189]
elseif choice == 3
A = [1, 1, 1; 1, 2, -3; 4, 2, 3; 7, 7, -2], b = [3; 0; 9; 12]
elseif choice == 4
A = [2, 1, -1, 3; 1, 1, -1, 1; 5, 3, -3, 7], b = [5; 2; 12]
else
error("not a valid choice");
endif

[lines, columns]=size(A);

#1. check conditions for the Gram-Schimdt decomposition
if lines < columns 
  error("not possible");
 endif
 
 #2. Gram-Schimdt decomposition
 Q=zeros(lines, columns);
 R=zeros(columns);  %square matrix
 
 

 for j=1 : columns

   sum=0;
   for i=1 : j - 1

     R(i,j) = transpose(Q(:, i))*A(:,j);
     sum= sum + R(i,j) * Q(:,i);

   endfor

   v=A(:, j) - sum;
   Q(:, j)= v / norm(v);
   R(j,j)=norm(v);

 endfor
 
 
#3. Solving y=Qt*b


y = transpose(Q) * b;

#4. solving R*x=y

x(columns) = y(columns)/R(columns,columns);

for i = lines-1 : -1: 1
  sum = 0;
  for j = i+1 : columns
    sum = sum + R(i,j)*x(j);
  endfor
  x(i)=(1/R(i,i))*(y(i)-sum);
endfor

x
 toc