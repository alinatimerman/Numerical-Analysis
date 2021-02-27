

n=input('number')
ok=0;
for i=2:sqrt(n)
    if rem(n,i)==0
        ok=1;

end
end

if ok==1   
    display('not prime')
elseif ok==0
    display('prime')
else n==2
    display('prime')

end