%请采用递推公式计算积分，要求每项的绝对误差小于0.01

n = str2num(input("请输入迭代项数：","s"));
%输入项数
p = str2num(input("请输入想保留的小数点位数：","s"));
%输入小数点位数

en = double(1 - 1/exp(1));
%n=0时积分结果
i = 0;
%迭代器

while i < n
    en = -1/exp(1) + (i+1) * en; %递推公式
    en = roundn(en,-p); %数值精度
    i = i + 1;
end

fprintf("\n%f",en)




