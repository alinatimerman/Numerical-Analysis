x=0:pi/50:2*pi;
subplot(1,3,1)
a=2;
b=4;
c=1/12;
f1=e.^cos(x)-a*cos(b*x)+sin(c*x).^5;
polar(x,f1,'b-')
axis equal
pause(2)


subplot (1,3,2)
a=1;
b=2;
c=1/4;
f2=e.^cos(x)-a*cos(b*x)+sin(c*x).^5;
polar(x,f2,'r-')
axis equal
pause(2)

subplot (1,3,3)
a=3;
b=1;
c=1/2;
f3=e.^cos(x)-a*cos(b*x)+sin(c*x).^5;
polar(x,f3,'g-')
axis equal