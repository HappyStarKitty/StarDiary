%线性回归拟合函数
function [a,b]=fit(x_data,y_data)
%计算各项数值
len=length(x_data);
avg_x=mean(x_data);
avg_y=mean(y_data);
sum_x=sum(x_data);
sum_y=sum(y_data);
sum_xy=dot(x_data,y_data);
sum_x2=dot(x_data,x_data);

%计算斜率与纵截距
b=(len*sum_xy-sum_x*sum_y)/(len*sum_x2-power(sum_x,2));
a=avg_y-b*avg_x;



