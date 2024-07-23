
y=dsolve('Dy=3*x+y/2','y(0)=1','x')
x=0:0.1:1;
z=eval(y);
plot(x,z,'*')
hold on
y0=1;
xspan=[0,1];
f=@(x,y) 3*x+y/2;
[x,y]=ode45(f,xspan,y0);
plot(x,y,'r','LineWidth',2)
