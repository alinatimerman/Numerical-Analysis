
choice = input("n: \( first = 1 or second = 2 \) ");

tic
if choice == 1
A = [2 7 -2; 1 -2 2; 3 -2 1]; b = [7; 19; -5];
elseif choice == 2
A = [1 2 3 4; 2 5 1 10; 3 1 35 5; 4 10 5 45];
b = [9; 35; -45; 189];
else
error("did not input a proper choice");
endif

[lines,columns]= size(A);

for i= 1:lines-1
  V= A(i + 1 : lines, i);
  W= A(i, i + 1: columns);
  A1= A(i + 1:lines,i + 1: columns);
  A2=A1-(V/A(i,i))*W;
  A(i + 1 : lines, i)=(V/A(i,i));
  A(i, i + 1: columns)=W;
  A(i + 1:lines,i + 1: columns)=A2;
endfor

L=zeros(lines,columns);
U=zeros(lines,columns);

for i = 1 : lines
L(i, i) = 1;
j = i - 1;
while j > 0
L(i, j) = A(i, j);
j = j - 1;
endwhile
j = i - 1
while j < lines
U(i, j + 1) = A(i, j + 1);
j = j + 1;
endwhile
endfor

y=linsolve(L,b);
x=linsolve(U,y);

disp("L :")
disp(L)
disp("U :")
disp(U)
disp("y :")
disp(y)
disp("x :")
disp(x)
toc


