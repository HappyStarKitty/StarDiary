%待解方程
function result=track(theta)

v0=30;
y0=1.8;
g=9.81;
x=90;
y=1;
result=tan(theta)*x-g*power(x,2)/(2*power(v0,2)*power(cos(theta),2))+y0-y
end


