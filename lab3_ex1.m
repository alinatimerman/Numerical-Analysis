
r=[6,3];
n=15;
subplot(1,3,1)
[X,Y,Z]=cylinder(r,n);
h=surf(X,Y,Z);
set(h, 'EdgeColor','r');
set(h, 'FaceColor','y');
pause(2)

r=[4,0];
n=4;
subplot(1,3,2)
[X,Y,Z]=cylinder(r,n);
h=surf(X,Y,Z);
set(h, 'EdgeColor','r');
set(h, 'FaceColor','y');
pause(2)

r=[4,0];
n=3;
subplot(1,3,3)
[X,Y,Z]=cylinder(r,n);
h=surf(X,Y,Z);
set(h, 'EdgeColor','r');
set(h, 'FaceColor','y');
pause(2)



