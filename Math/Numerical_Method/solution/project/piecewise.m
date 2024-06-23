%分段低次插值
function y_predict=piecewise(x_data,y_data,x_predict)

volumn_data=length(x_data);
volumn_predict=length(x_predict);
y_predict=zeros(1,volumn_predict);

%分段线性插值

for i=1:volumn_predict
    %外推
    if x_predict(i)<x_data(1)
        y_predict(i)=y_data(1)+(y_data(2)-y_data(1))/(x_data(2)-x_data(1))*(x_predict(i)-x_data(1));
    end
    if x_predict(i)>x_data(volumn_data-1)
        y_predict(i)=y_data(volumn_data-1)+(y_data(volumn_data)-y_data(volumn_data-1))*(x_data(volumn_data)-x_data(volumn_data-1))*(x_predict(i)-x_data(volumn_data-1));
    end
    %内插
    for j=1:volumn_data-1
        if x_predict(i)>=x_data(j) && x_predict(i)<=x_data(j+1)
            y_predict(i)=y_data(j)+(y_data(j+1)-y_data(j))/(x_data(j+1)-x_data(j))*(x_predict(i)-x_data(j));
        end
    end
end


%{
%分段抛物插值
coefficient=zeros(volumn_data-2,3);%系数矩阵
for i=1:volumn_data-2
    k2=(y_data(i+2)-y_data(i+1))/(x_data(i+2)-x_data(i+1));
    k1=(y_data(i+1)-y_data(i))/(x_data(i+1)-x_data(i));
    coefficient(i,1)=(k2-k1)/(x_data(i+2)-x_data(i));
    coefficient(i,2)=k1-coefficient(i,1)*(x_data(i+1)+x_data(i));
    coefficient(i,3)=y_data(i)-coefficient(i,1)*x_data(i)*x_data(i)-coefficient(i,2)*x_data(i);
end

for i=1:volumn_predict
    %外推
    if x_predict(i)<x_data(1)
            y_predict(i)=coefficient(1,1)*x_predict(i)*x_predict(i)+coefficient(1,2)*x_predict(i)+coefficient(1,3);
    end
    if x_predict(i)>x_data(volumn_data-2)
            y_predict(i)=coefficient(volumn_data-2,1)*x_predict(i)*x_predict(i)+coefficient(volumn_data-2,2)*x_predict(i)+coefficient(volumn_data-2,3);
    end
    %内插
    for j=1:volumn_data-2
        if x_predict(i)>=x_data(j) && x_predict(i)<=x_data(j+2)
            y_predict(i)=coefficient(j,1)*x_predict(i)*x_predict(i)+coefficient(j,2)*x_predict(i)+coefficient(j,3);
            break;
        end
    end
end
%}

end