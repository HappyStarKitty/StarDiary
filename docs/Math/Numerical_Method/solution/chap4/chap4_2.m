%采用指数函数拟合
x_data=linspace(0,40,6);
y_data=[14.621,11.843,9.870,8.418,7.305,6.413];
lny_data=log(y_data);
[lna,b]=fit(x_data,lny_data);
x=27;
a=power(exp(1),lna);
y=a*power(exp(1),x*b);
disp(y)