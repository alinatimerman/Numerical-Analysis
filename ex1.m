disp("Exercise 1");
x=0:pi/50:2*pi;

subplot(2,2,1)
f1=2*sin(2*x+1);
f2=3*sin(x);
plot (f1,f2)
axis ([-2 2 -2 2])
pause(2)

subplot(2,2,2)
f1=5*sin(4*x+9);
f2=7*sin(x);
plot(f1,f2)
axis([-10 10 -10 10])
pause(2)

subplot(2,2,3)
f1=sin(10*x+1);
f2=sin(x);
plot(f1,f2)
axis([-2 2 -2 2])
pause(2)