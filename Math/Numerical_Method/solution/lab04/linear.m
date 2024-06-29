% 分段线性插值函数
function y=linear(f,n,x)
    x_dot=linspace(-5,5,n);
    y_dot=f(x_dot);
    for i=1:n-1
        if (x_dot(i)<=x && x<=x_dot(i+1))
            k=(y_dot(i+1)-y_dot(i))/(x_dot(i+1)-x_dot(i));
            y=y_dot(i)+k*(x-x_dot(i));
        end
    end
end