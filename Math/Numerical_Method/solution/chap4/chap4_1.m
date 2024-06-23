%采用拉格朗日插值
x_data=linspace(0,40,6);
y_data=[14.621,11.843,9.870,8.418,7.305,6.413];
x=27;
ybar=lagrange(x_data,y_data,x);
disp(ybar)