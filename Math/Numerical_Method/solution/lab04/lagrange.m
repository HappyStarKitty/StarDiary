% 拉格朗日插值函数
function y=lagrange(f, n, x)
    x_dot=linspace(-5, 5, n);
    y_dot=f(x_dot);
    y=0;
    for i=1:n
        term=1;
        for j=1:n
            if j ~= i
                term=term.*(x-x_dot(j))/(x_dot(i)-x_dot(j));
            end
        end
        y=y+y_dot(i)*term;
    end
end