# Numerical Methods Lab Test
## Lab 01
+ 语句加上分号可以隐藏输出
+ matlab可以自动解方程
+ 清空命令行命令：clc
+ 开始/结束命令行日志命令：diary lab01.txt / diary off  
+ 块注释：%{    %}  

```matlab
a = input("");
x = double(a-1); 
y = double((a-1)/(a+1));
term = double(0);
result1 = double(0);
result2 = double(0);
i = 1;

%采用方法一
while i<=100
    term = power(-1,i+1)/i*power(x,i);
    result1 = result1 + term;
    i = i + 1;
end
fprintf("%.6f\n",result1)

i = 1;
term = double(0);

%采用方法二
while i<=100
    term = 1/(2*i-1) * power(y,2*i-1);
    result2 = result2 + term;
    i = i + 1;
end
result2 = result2 * 2;
fprintf("%.6f\n",result2)
```
## Lab02
+ 一个文件一般只有一个同名函数
+ 函数定义：function [k, p, err, P] = fixpt(g, p0, to1, max1)
+ 函数调用：[k,p,err,P]  = fixpt(@fun3,1,eps,10000);
```matlab
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
```
> 1.上方代码为不动点迭代函数
>2. fun1在x处的导数绝对值>1，迭代显示出发散性；fun2、fun3反之,，迭代显示出收敛性
## Lab03
**矩阵赋值**
直接赋值
```matlab
A = [1, 2, 3; 4, 5, 6; 7, 8, 9];
```
使用函数
```matlab
B = zeros(3, 4); % 创建一个 3x4 的全零矩阵
C = ones(2, 3);  % 创建一个 2x3 的全一矩阵
D = eye(3);      % 创建一个 3x3 的单位矩阵
```
**代码样例**
```matlab
function X=gauss(A,B,n)
%A表示系数矩阵，A|B表示增广矩阵，n表示未知数个数
%消去
for i=1:n-1 %以第i行为基准
    for j=i+1:n %对第j行进行操作
        factor=A(j,i)/A(i,i);
        for k=i+1:n %对第k个进行操作
            A(j,k)=A(j,k)-factor*A(i,k);
        end
        B(j)=B(j)-factor*B(i);
    end
end

%回代
X(n)=B(n)/A(n,n)
for i=n-1:-1:1
    sum=B(i);
    for j=i+1:n
        sum=sum-A(i,j)*X(j);
    end
    X(i)=sum/A(i,i);
end
end
```
+ 原始高斯消去算法即有一定误差
+ 当系数矩阵发生扰动时，解的变化较大，表明该线性方程组为病态