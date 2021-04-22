f=@(x) x .^(1/3);
ak=[1 2 4 5 8];
e=0.001;
x=7;

[A,y,z]=atikenM(f,ak,e,x);

t=linspace(0,9);
plot(t,f(t))
hold on
plot(x,z,'LineWidth',2)