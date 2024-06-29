an_single = single(1);
%求第n项单精度数值
an_double = double(1);
%求第n项双精度数值
cos_single = single(0);
%求单精度前n项和
cos_double = double(0);
%求双精度前n项和
n = 0;
%迭代器

%--------------------------------------------
%分别以单精度和双精度数据类型，计算x=1时的近似值，要求计算结果具有4位有效数字

while n == 0 || abs(an_single/cos_single) >= 0.5e-4 %判断是否达到4位有效数字
    an_single = power(-1,n) * power(1,n*2) / factorial(2*n);
    cos_single = cos_single + an_single;
    n = n + 1;
end
fprintf("cos_single is %.4f\n",cos_single);
%计算单精度

n=0;
while n == 0 || abs(an_double/cos_double) >= 0.5e-4
    an_double = power(-1,n) * power(1,n*2) / factorial(2*n);
    cos_double = cos_double + an_double;
    n = n + 1;
end
fprintf("cos_double is %.4f\n",cos_double)
%计算双精度

%------------------------------------------
%如果采用单精度数据类型要求计算结果达到机器精度，此时结果如何

an1_single = single(1);
cos1_single = single(0);
n = 0;

while 1 + abs(an1_single) > 1 %判断是否达到机器精度
    an1_single = power(-1,n) * power(1,n*2) / factorial(2*n);
    cos1_single = cos1_single + an1_single;
    n = n + 1;
end
fprintf("cos1_single is %f\n",cos1_single);



