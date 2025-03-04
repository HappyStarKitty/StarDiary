# Chap3 线性代数方程组

## 系数矩阵类型

+ 低阶稠密矩阵
+ 大型稀疏矩阵(矩阵中0元素较多)
+ 三对角矩阵(非0元素集中于主对角线及相邻两对角线上)

## 数值解法
![无法显示](chapter3_1/chap3_1_2024_page-0005.jpg)

- 直接法
    + 经过有限步算数运算，可求得方程组的精确解的方法（若在计算过程）

## 直接法

### 高斯消去法

![无法显示](chapter3_1/chap3_1_2024_page-0023.jpg)
#### 病态方程组判别
+ 行列式的值
+ 矩阵求逆
    + 缩放系数矩阵，使每一行最大元素为1，缩放后的逆矩阵元素值大于1数倍则为病态
    + 将逆矩阵与原矩阵相乘，结果不接近单位阵则为病态
    + 求逆矩阵的逆矩阵，与原系数矩阵对比，不相等则为病态
+ 系数微小改变再求解

##### 解求精技术

+ 使用扩展精度
+ 选主元
列主元消去法或者全主元消去法
+ 缩放
缩放之后的系数用来确定是否需要交换主元，但实际消去和回代中仍使用原系数值
##### 消去法
+ 顺序消去法条件苛刻，且数值不稳定
+ 全主元消去法工作量偏大，需要比较的元素及行列交换工作较多，算法复杂
+ 高斯约当消去法形式上简单，且无回代求解，但计算量大
+ 从算法优化的角度考虑，列主元消去法较好
```matlab
function X=Gauss(A,B)
%采用高斯消去法
n=length(B);
for i=1:n-1
    %寻找该列绝对值最大的元素
    max=abs(A(i,i));
    mark=i;
    for j=i+1:n
        if (abs(A(i,j)) > max)
            max=abs(A(i,j));
            mark=j;
        end
    end
    %交换行
    l=A(i,:);
    A(i,:)=A(mark,:);
    A(mark,:)=l;
    c=B(i);
    B(i)=B(mark);
    B(mark)=c;
    %顺序消元
    %消去
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

#### 三角分解(LU分解)
LU分解矩阵求逆可减少计算量
##### Doolittle分解
+ L为单位下三角矩阵，U为上三角矩阵
##### Crout分解
+ L为下三角矩阵，U为单位上三角矩阵
##### 三角分解和高斯消去的比较

+ 计算量相当
+ 三角分解不必计算中间结果，不需要提前知道右端项
+ 解相同系数矩阵方程相当方便
##### Cholesky分解
对称正定矩阵的平方根法

+ 由Doolittle分解，A有唯一分解$A=LU$
+ LDR分解：(L、R分别为下、上三角矩阵，D为对角矩阵)
+ 三角分解：$A=LDL^T$
+ 优势：存储量小，计算量小，数值稳定
+ 缺点：存在开方运算，可能会出现根号下复数
#### 带状方程组
+ 高斯消去或LU分解效率低
+ 元素满足对角占优条件，可以证明A非奇异，且各阶顺序主子式都采用三对角方程组的追赶法(Thomas算法)
#### Thomas算法
1. 分解计算公式：$A=LU$
2. 求解方程组 $Ly=f$ 的递推算式
3. 求解方程组 $Ux=y$ 的递推算式
```matlab
function X=Thomas(A,B)
%采用三对角方程组的追赶法
n=length(B);
%crout分解
L=eye(n);
U=zeros(n);
for i=1:n
    %计算U矩阵的第i行
    U(i,i:n)=A(i,i:n)-L(i, 1:i-1)*U(1:i-1,i:n);        
    %计算L矩阵的第i+1列到第n列
    for j=i+1:n
        L(j,i)=(A(j,i)-L(j,1:i-1)*U(1:i-1,i))/U(i,i);
    end
end
%求解方程组Ly=f
Y=zeros(1,n);
Y(1)=B(1)/A(1,1);
for i=2:n
    Y(i)=(B(i)-A(i,i-1)*Y(i-1))/(A(i,i)-A(i,i-1)*U(i,i-1));
end 
%求解方程组Ux=y
X(n)=Y(n);
for i=n-1:-1:1
    X(i)=Y(i)-X(i+1)*U(i,i+1);
end
end
```
### 误差分析、条件数
#### 向量范数
满足条件：正定，齐次，三角不等式
+ "2"范数(欧几里得范数)
$$
||x||_2=(\sum\limits_{i=1}^{n}x_i^{2})^{1/2}
$$
+ "1"范数
$$
||x||_1=\sum\limits_{i=1}^{n}|x_i|
$$
+ "∞"范数(极大值范数或一致向量范数)
$$
||x||_∞=\mathop{\max_{1\leq{i}\leq{n}}^{}}{|x_i|}
$$
+ "p"范数
$$
||x||_p=(\sum\limits_{i=1}^{n}|x_i|^{p})^{1/p}
$$
#### 矩阵范数
满足条件：正定，齐次，三角不等式，矩阵乘法不等式(相容性条件)
+ "2"范数(谱范数)
$$
||A||_2=[\lambda_{max}A^TA]^{1/2}
$$
+ "1"范数(列和范数)
$$
||A||_1=\max\limits_{1\leq{j}\leq{n}}\sum\limits_{i=1}^{n}|a_{ij}|
$$
+ "∞"范数(行和范数)
$$
||A||_∞=\max_{1\leq{i}\leq{n}}\sum_{j=1}^n|a_{ij}|
$$
##### 谱半径
+ A的所有特征值的集合称为谱
+ 称$\rho(A)=\max\limits_{1\leq{i}\leq{n}}|\lambda_i|$
+ $||A||$为$A$的任意一种范数，有$\rho{(A)}\leq{||A||}$
#### 病态方程组和矩阵条件数
相对误差直接与A的条件数相关
![无法显示](chapter3_2\chap3_2_2024_page-0010.jpg)
![无法显示](chapter3_2\chap3_2_2024_page-0011.jpg)
![无法显示](chapter3_2\chap3_2_2024_page-0012.jpg)
![无法显示](chapter3_2\chap3_2_2024_page-0015.jpg)
![无法显示](chapter3_2\chap3_2_2024_page-0016.jpg)
![无法显示](chapter3_2\chap3_2_2024_page-0017.jpg)
![无法显示](chapter3_2\chap3_2_2024_page-0018.jpg)

### 迭代方法
#### 迭代法
![无法显示](chapter3_2\chap3_2_2024_page-0021.jpg)
![无法显示](chapter3_2\chap3_2_2024_page-0023.jpg)

#### 雅可比迭代法(同步迭代法)
![无法显示](chapter3_2\chap3_2_2024_page-0024.jpg)

#### 高斯-赛德尔方法(异步迭代法)
![无法显示](chapter3_2\chap3_2_2024_page-0025.jpg)
#### 收敛性
![无法显示](chapter3_2\chap3_2_2024_page-0029.jpg)
![无法显示](chapter3_2\chap3_2_2024_page-0030.jpg)
![无法显示](chapter3_2\chap3_2_2024_page-0031.jpg)
![无法显示](chapter3_2\chap3_2_2024_page-0032.jpg)
#### 逐次超松弛迭代法(SOR)
![无法显示](chapter3_2\chap3_2_2024_page-0034.jpg)
![无法显示](chapter3_2\chap3_2_2024_page-0036.jpg)


