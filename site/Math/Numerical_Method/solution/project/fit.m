%最小二乘法拟合
function y_predict=expfit(x_data,y_data,x_predict)

%{
%y=a*e^x型函数拟合
%取对数
z_data=log(y_data);
volumn_data=length(x_data);
volumn_predict=length(x_predict);
y_predict=zeros(1,volumn_predict);
%}

%y=1/(a+b*x*x)型函数拟合
%取倒数
volumn_data=length(x_data);
volumn_predict=length(x_predict);
z_data=zeros(1,volumn_data);
y_predict=zeros(1,volumn_predict);
for i=1:volumn_data
    z_data(i)=1/y_data(i);
    x_data(i)=x_data(i)*x_data(i);

%计算各项数值
avg_x=mean(x_data);
avg_z=mean(z_data);
sum_x=sum(x_data);
sum_z=sum(z_data);
sum_xz=dot(x_data,z_data);
sum_x2=dot(x_data,x_data);

%计算斜率与纵截距
b=(volumn_data*sum_xz-sum_x*sum_z)/(volumn_data*sum_x2-power(sum_x,2))
a=avg_z-b*avg_x

for i=1:volumn_predict
    %y_predict(i)=exp(a)*exp(b*x_predict(i));
    y_predict(i)=1/(a+b*x_predict(i)*x_predict(i));
end

end



