a=1;
b=1;

[u v]=meshgrid(0:pi/20:2*pi);
subplot(1,3,1)
f=a.*cos(u).*cos(v);
g=a.*sin(u).*cos(v);
h=a.*sin(v)+b.*u;

surf(f,g,h)

pause(2);


a=3;
b=1;
[u v]=meshgrid(0:pi/20:2*pi);
subplot(1,3,2)
f=a.*cos(u).*cos(v);
g=a.*sin(u).*cos(v);
h=a.*sin(v)+b.*u;

surf(f,g,h)
pause(2);

a=1;
b=0;
[u v]=meshgrid(0:pi/50:2*pi);
f=a.*cos(u).*cos(v);
g=a.*sin(u).*cos(v);
h=a.*sin(v)+b.*u;
subplot(1,3,3)
surf(f,g,h)