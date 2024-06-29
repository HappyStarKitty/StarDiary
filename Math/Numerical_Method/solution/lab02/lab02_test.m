%函数调用部分
cal_start = 1.5; %设置起点
cal_end = 2.0; %设置终点
step = 0.1; %设置步长
i = cal_start;

while i<=cal_end
    [k,p,err,P] = fixpt(@fun1,i,eps,10000);
    fprintf("fun1: k = %d p = %f\n",k,p);
    [k,p,err,P] = fixpt(@fun2,i,eps,10000);
    fprintf("fun2: k = %d p = %f\n",k,p);
    [k,p,err,P] = fixpt(@fun3,i,eps,10000);
    fprintf("fun3: k = %d p = %f\n",k,p);
    i = i + step;
end