%三次样条插值
function y_predict=spline(x_data,y_data,x_predict)

volumn_data=length(x_data);
volumn_predict=length(x_predict);
y_predict=zeros(1,volumn_predict);

%计算步长
h_array=zeros(1,volumn_data-1);
for i=1:volumn_data-1
    h_array(i)=x_data(i+1)-x_data(i);
end

%构造线性方程组
%构造左侧系数矩阵
A=zeros(volumn_data,volumn_data);
for i=1:volumn_data
    if i==1 || i==volumn_data
        A(i,i)=1;
    else
        A(i,i-1)=h_array(i-1);
        A(i,i)=2*(h_array(i-1)+h_array(i));
        A(i,i+1)=h_array(i);
    end
end
%构造右侧向量
B=zeros(1,volumn_data);
for i=1:volumn_data
    if i==1 || i==volumn_data
        B(i)=0;
    else
        B(i)=(y_data(i+1)-y_data(i))/h_array(i)-(y_data(i)-y_data(i-1))/h_array(i-1);
    end
end

disp(A)
disp(B)
%求解
X=gauss(A,B);

%计算样条函数的系数
a_array=zeros(1,volumn_data-1);
c_array=zeros(1,volumn_data-1);
b_array=zeros(1,volumn_data-1);
d_array=zeros(1,volumn_data-1);
for i=1:volumn_data-1
    a_array(i)=y_data(i);
    c_array(i)=X(i)/2;
    d_array(i)=(X(i+1)-X(i))/6/h_array(i);
    b_array(i)=(y_data(i+1)-y_data(i))/h_array(i)-h_array(i)/2*X(i)-h_array(i)/6*(X(i+1)-X(i));
end

%计算预测值
for i=1:volumn_predict
    %外推
    if x_predict(i)<x_data(1)
        y_predict(i)=a_array(1)+b_array(1)*(x_predict(i)-x_data(1))+c_array(1)*power(x_predict(i)-x_data(1),2)+d_array(1)*power(x_predict(i)-x_data(1),3);
    end
    if x_predict(i)>x_data(volumn_data)
        y_predict(i)=a_array(volumn_data-1)+b_array(volumn_data-1)*(x_predict(i)-x_data(volumn_data))+c_array(volumn_data-1)*power(x_predict(i)-x_data(volumn_data),2)+d_array(volumn_data-1)*power(x_predict(i)-x_data(volumn_data),3);
    end
    %内插
    for j=1:volumn_data-1
        if x_predict(i)>=x_data(j) && x_predict(i)<=x_data(j+1)
            y_predict(i)=a_array(j)+b_array(j)*(x_predict(i)-x_data(j))+c_array(j)*power(x_predict(i)-x_data(j),2)+d_array(j)*power(x_predict(i)-x_data(j),3);
            break;
        end
    end
end

end






