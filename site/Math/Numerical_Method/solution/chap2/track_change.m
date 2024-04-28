%迭代方程
function result=track_change(theta)

v0=30;
y0=1.8;
g=9.81;
x=90;
y=1;
result_1=sin(theta)*cos(theta)/x-g/(2*v0*v0);
result_2=theta*cos(theta)*cos(theta)/(x*x);
result_3=(y0-y)*cos(theta)*cos(theta)/(x*x);
result=(result_1+result_2+result_3)/100;
end
