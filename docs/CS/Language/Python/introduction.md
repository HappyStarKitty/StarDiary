---
comments: true
---
# Python
## 基础工具

python3.X + IDE（Pycharm or VSCode）+ Anaconda（包管理器）


### Anaconda

Python 经常面临的问题是版本环境和包依赖。举个例子，在学量子计算的时候我们会使用 qiskit 。但你会发现 IBM 在 qiskit 的迭代中对原有函数和类进行了大幅修改。但问题是，我们参考的代码还在使用 qiskit0.X，显然重构代码比较繁琐，此时我们使用 Anaconda 包管理器管理依赖和使用虚拟环境。

创建虚拟环境

```bash
conda create -n myenv python=3.12.0 #myenv为自定义虚拟环境名称
```

查看虚拟环境列表
```bash
conda env list
```

切换到指定虚拟环境
```bash
conda activate myenv
```

安装python包
```bash
conda install numpy
```

退出虚拟环境
```bash
conda deactivate
```

移除指定虚拟环境
```bash
conda remove -n myenv --all
```


## 基本语法

## 语言特性

面向对象的解释性计算机程序设计语言
简洁性、易读性和可扩展性
动态类型系统、强类型
## 表达式
数据类型：整数，浮点数，复数，字符串，布尔值，空值
数制：0b二进制，0o八进制，0x十六进制（打印其对应的十进制数）

/得到浮点型结果（即使运算对象是整数）
//浮点数整除结果仍为浮点数
整数和浮点数混合运算结果为浮点数
乘幂从右往左

字符串比较大小比字母 ASILL 码值
and，or 惰性求值或者逻辑短路
not > and > or

交互式解释器输出的字符串用单引号包裹
```python
>>>'\12'
>>>'\n'
>>>'\x0a'
>>>'\n'
>>>'\141'
>>>'a'

>>>i=3
>>>++i
>>>3
>>>--i
>>>3

>>>[]*3
>>>[]
```
## 函数抽象
科学计算扩展库：NumPy（快速数组处理）、Pandas（数值运算）、Matplotlib（绘图）
用“.”记法调用的函数也称方法
### 变量
变量将名字和对象关联。赋值操作不实际复制值。名字是对象的引用，不是对象本身。
变量名大小写敏感。
星号变量名，实现扩展序列赋值。

```python
>>>i,*j=[1,2,3]
>>>i
1
>>>j
[2,3]
```
### 纯函数
divmod() 计算商和余数
complex() 创建值为 real+imagej 的复数
list 根据传入参数创建一个新的列表
int 可以带另一个参数，表示进制
bin(),oct(),hex() 返回字符串
sum 求列表的和
abs() 对象为复数，返回模长
add，sub，mul，truediv，floordiv 中缀运算符

```python
>>>float()
0.0
>>>complex()
0j
>>>str()
'None'
>>>list()
[]
>>>int(True)
1
>>>bool([])
False
>>>bin(12)
‘0b1100’
#bin参数为int
```

id() 显示对象的地址
格式化输入输出
```python
>>>x=3.14159
>>>y=2*x*3
>>>print("{0:.2f}{1:.2f}".format(x,y))
3,14  18.85
>>>print("这是字符串输出格式{:5d}".format(123))
这是字符串输出格式  123
#默认右对齐，不能用于字符串
```
### 非纯函数
print()函数缺省执行一次即换行（返回值 None）
# 程序结构
列表推导式
```python
>>>[1/i if i%2==1 else -1/i for i in range(1,50) if i%2==1]
```

## 算法设计
算法是求解问题步骤的有序集合，产生结果并在有限时间内结束（确定性、有穷性、有效性）

结构化设计：程序结构有顺序结构、分支结构，循环结构；程序设计自顶向下进行
分类：数值计算、非数值计算
方法：迭代、递归、排序、查找

求解斐波那契数列
迭代
```python
def fibs(n):
	result=[0,1]
	for i in range(n-2):
		result.append(result[-2]+result[-1])
	return result
```
递归
```python
def fib(n):
	if n==0 or n==1:
		return 1
	else:
		return fib(n-1)+fib(n-2)
```
递归优化
```python
def fib(n):
    a=[1,1]
    n=n-2
    while n>0:
        a.append(a[-1]+a[-2])
        n-=1
    return a[-1]
```

### 递归

```python
def count_change(amount):
    """Return the number of ways to make change for amount.

    >>> count_change(7)
    6
    >>> count_change(10)
    14
    >>> count_change(20)
    60
    >>> count_change(100)
    9828
    """
    "*** YOUR CODE HERE ***"
    import math
    def process(amount, upper):
        if amount == 0 or upper == 1:
            return 1
        if amount < 0:
            return 0
        return process(amount-upper, upper) + process(amount, upper // 2)
    return process(amount, pow(2, round(math.log2(amount))))
```

```python
def make_anonymous_factorial():
    """Return the value of an expression that computes factorial.

    >>> make_anonymous_factorial()(5)
    120
    >>> from construct_check import check
    >>> # ban any assignments or recursion
    >>> check(HW_SOURCE_FILE, 'make_anonymous_factorial', ['Assign', 'AugAssign', 'FunctionDef', 'Recursion'])
    True
    """
    # return 'YOUR_EXPRESSION_HERE'
    return (lambda f:lambda x: f(f,x))(lambda f,x:1 if x == 1 else  x*f(f,(x - 1)))
 
>>>make_anonymous_factorial()(4)
24

```

选择排序：找到最小数与第一个位置交换，以此类推
冒泡排序：比较相邻的元素，若第一个比第二个大则交换位置
顺序查找：从列表第一个元素开始
折半查找：对大小有序的列表从中间位置查找（迭代或递归思想实现）
#### 算法方法学
贪心：可行性、局部最优、不可取消性（找零钱问题）

分治：递归求解子问题，从小问题的解构建大问题的解（金块问题）

动态规划：大问题分解为若干子问题，子问题具有重叠，将子问题的解存放在表中，通过查表解决问题（核心以空间换时间）（背包问题）

回溯：分步解决问题，可取消前几步的计算（递归实现）（八皇后问题）
##  数据结构
定义：逻辑结构、存储结构、对数据的操作
结构形式：链、表、堆、队、树、图
基本数据结构：线性结构、树状结构、网状结构

---



