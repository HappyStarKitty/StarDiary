%拉格朗日插值多项式
function y_predict=lagrange(x_data,y_data,x_predict,num)
%num为插值节点数目

volumn_data=length(x_data);
volumn_predict=length(x_predict);
y_predict=zeros(1,volumn_predict);

%根据插值节点数目进一步筛选数据
divide=floor((volumn_data-1)/num);
x_train=zeros(1,num);
y_train=zeros(1,num);
for i=1:num
    x_train(i)=x_data(1+i*divide);
    y_train(i)=y_data(1+i*divide);
end

%计算预测值
for i=1:volumn_predict
    for j=1:num
        term=1;
        for k=1:num
            if k~=j
                term=term*(x_predict(i)-x_train(k))/(x_train(j)-x_train(k));
            end
        end
        y_predict(i)=y_predict(i)+term*y_train(j);
    end
end

end

