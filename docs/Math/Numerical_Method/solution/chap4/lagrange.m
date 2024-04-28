%拉格朗日插值函数
function ybar=lagrange(x_data,y_data,x)
num=length(x_data); %插值节点数目
ybar=0;
for i=1:num
    term=1;
    for j=1:num
        if i~=j
            term=term*(x-x_data(j))/(x_data(i)-x_data(j));
        end
    end
    term=term*y_data(i);
    ybar=ybar+term;
end

