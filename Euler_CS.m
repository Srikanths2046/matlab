function [  ] = Euler_CS(x0,y0,h)
xn=1;
x=x0:h:xn;
n=length(x);
f=@(x,y) (x+y);
y(1)=y0;
for i=1:n-1
    y(i+1)=y(i)+h*f(x(i),y(i));
end
plot(x,y,'b--')
u=dsolve('Dy=x+y','y(x0)=y0','x');
u=eval(u);
hold on
plot(x,u,'r--')
end


