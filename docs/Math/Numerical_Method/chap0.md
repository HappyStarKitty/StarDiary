## Chapter0 Matlab

### 官方文档
[*Matlab Manual*](https://ww2.mathworks.cn/help/matlab/index.html?s_tid=CRUX_lftnav)

### 文件操作

+ 开始/结束命令行日志命令：diary lab01.txt / diary off 
+ 清空命令行命令：clc
+ 删除日志命令：delete("diary.txt")
+ 切换文件路径：cd D:\workspace\matlab
+ 一个文件一般只有一个同名函数

### 基本语法
+ 语句加上分号可以隐藏输出
+ 块注释：%{    %}
+ 数组的索引从1开始
+ 函数调用可以使用feval
+ :运算符可以创建向量
+ ~=不等于

### 数学函数
1. 常用运算
    + mod %求余
    + rem %求余，返回的余数与被除数符号相同
    + mean %计算数组平均值
    + sum %计算数组元素和
    + exp %指数函数
    + log(x,base) %对数函数

2. 保留小数位数 
    + floor %向下取整
    + roundn(n,-p) %注意负号，如果缺省-p则为四舍五入
    + format short %控制显示
    + fprintf %美化输出  

3. 求根
    + fzero %单函数求根
    + roots %求多项式的根

4. 多项式
    + poly %用已知的根构建多项式
    + polyval %求多项式的值
    + polyvalm %求带有矩阵变量的多项式的值

5. 矩阵
    + cond %计算矩阵条件数
    + norm %计算矩阵或向量的范数
    + inv %矩阵求逆
    + pinv %求矩阵伪逆
    + det %计算行列式的值
    + rank %求秩
    + eig eigs %矩阵特征值
    + lu %LU分解
    + chol %cholesky分解

6. 插值与拟合
    + polyfit %多项式最小二乘拟合
    + interp1 %一维插值(查表)
    + interp1q %快速一维线性插值
    + interp2 %二维插值
    + interpn %n维插值
    + spline,csape %三次样条插值
    + ppval %分段多项式估计函数

7. 绘图
    + plot %生成图形
    + legend %标识各条线
    + hold on %将绘图添加到现有图形中
    + figure %打开新的图窗，并将其作为当前图窗
    + clf reset %清空图窗
    + grid on %启用网格线
    + grid off %禁用网格线

8. 随机数
    + rand %生成均匀分布的随机数
    + randi %生成服从离散均匀分布的随机整数
    + randn %生成服从标准正态分布的随机数
    + randperm %生成包含随机排列的整数序列

9. 数值微分和积分
    + quad %Simpson公式
    + trapz %梯形公式
    + diff %数值微分(连续函数求导)
    + quadl %Lobatto求积(一种高斯求积公式，取代quad8)
    + dblquad %二重积分

10. 常微分方程
    + ode23 %二阶、三阶R-K方法，求解非刚性微分方程的低阶方法，较低精度
    + ode45 %四阶、五阶R-K方法，求解非刚性微分方程的中阶方法，大多数场合的首选算法，中等精度
    + ode113 %非刚性微分方程，可变阶
    + ode23s %解刚性微分方程的低阶方法
    + ode15s %刚性微分方程，可变阶
    + desolve %符号解

11. 杂项
    + length %获取数组或向量的长度，即元素数量
    + size %返回数组或矩阵的维度信息
    + tic %开始计时
    + toc %结束及时
    + linspace %生成指定区间等间距数组
    + importdata %导入数据文件
    + whos %列出工作区中的变量及类型与大小
    + factorial %阶乘函数

### 常用操作

#### 矩阵与向量

matlab的向量化操作非常强大，需要善于利用
```matlab
% 1.读取所有行与列
a
a(:,:)
% 2.读取前i行，前j列
a(1:i,1:j)
% 3.读取第i行，第j列
a(i,j)
% 4.读取所有行，第j列；第i行，所有列
a(:,j)
a(i,:)
% 5.读取某几行的某几列
a([i1,i2..ip],[j1,j2..jq])
```

#### 求解多项式方程

``` matlab
%-----次数已知-----
% 声明符号变量
syms a b c x;
% 定义方程
eqn = a*x^2 + b*x +c == 0;
% 求解方程
solutions = solve(eqn,[a,b,c]);

%-----次数未知-----
syms x;
n_max = 5; % 最大阶次
solutions = [];

for n = 1:n_max
    % 定义方程
    eqn = poly2sym(sym('a', [1, n+1]), x) == 0;
    
    % 求解方程
    sol = solve(eqn);
    
    % 将解添加到结果中
    solutions = [solutions; sol];
end

% 显示所有解
solutions
```

#### 矩阵乘法

matlab矩阵乘法分为两种，times 和 .*

##### 语法

```matlab
C=A.*B;
C=times(A,B);
```
##### 说明

- 对应元素的相乘，A和B的大小必须相同和兼容
- 如果A和B的大小兼容，则两个数组会隐式扩展以相互匹配
- 如A或B中的一个是标量，则该标量与另一个数组的每个元素相结合
- 此外，行向量或列向量会隐式扩展以形成矩阵


### Error List
>**警告: 冒号操作数必须为实数标量**
**错误使用 * 用于矩阵乘法的维度不正确**

---