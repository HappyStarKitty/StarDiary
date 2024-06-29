%原始函数的导函数
function result=track_deriv(theta)

v0=30;
y0=1.8;
g=9.81;
x=90;
y=1;
result=power(sec(theta),2)*x-g*power(x,2)/power(v0,2)*sin(theta)/power(cos(theta),2)
end