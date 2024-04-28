function [k, p, err, P] = fixpt(g, p0, to1, max1)
    % k=迭代次数，p=不动点近似值，err=误差，P=存储迭代结果的数组
    % g=迭代函数，p0=初始值，to1=误差，max1=最大迭代次数
    P(1) = p0;
    for k = 2:max1
        P(k) = feval(g, P(k - 1)); % 迭代
        err = abs(P(k) - P(k - 1));
        relerr = err / (abs(P(k)) + eps);
        p = P(k);
        if (err < to1) || (relerr < to1)
            break
        end
    end
    if k == max1
       disp('maximum number of iterations exceeded');
    end
end

