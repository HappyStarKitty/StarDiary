# Python数据分析

## Chap6 字符串

### 概述

### 通用序列操作

字符串、列表、元组都属于序列

通用操作：indexing, slicing, adding, multiplying, in, length, max, min

### 字符串格式化

### 字符串方法

#### 字符串测试函数

#### 字符串查找函数

s.find(t)
s.rfind(t)
s.index(t)
s.rindex(t)

#### 字符串替换函数

s.replace(old,new)
s.expandtabs(n)

#### 字符串合并

join
reduce

#### 字符串拆分函数

s.partition(t)
s.rpartition(t)
s.split(t)
s.rsplit(t)
s.splitlines(t)

#### 字符串与日期的转换

- strftime()实现从时间到字符串的转换
- 字符串到时间的转换使用time模块和datetime类

#### 改变大小写函数

s.capitalize()
s.lower()
s.upper()
s.swapcase()
s.title()

#### 设置格式函数

s.center(n,ch)
s.ljust(n,ch)
s.rjust(n,ch)
s.format(vars)

#### 剥除函数

s.strip(ch)
s.lstrip(ch)
s.rstrip(ch)

### 正则表达式简介

#### re模块重要函数

compile(pattern,[,flags])
search(pattern,string[,flags])
match(pattern,string[,flags])
split(pattern,string)
findall(pattern,string)
sub(pat,repl, string,[.Count=0])
escape(string)

#### 匹配对象的重要方法

group([group1,...])
start([group])
end([group])
span([group])

## Chap8 文件处理

### 概述

- 文件分为两类：文本文件和二进制文件
- Python 提供os、os.path、shutil等模块处理文件

### 文件的常见操作

文件处理一般分为三个步骤：
- 创建并打开文件，使用open()函数返回一个file对象
- 调用file对象的read()、write()等方法处理文件
- 调用close()关闭文件，释放file对象占用的资源

#### 文件的创建

```
open(file,[mode[,buffering]])->file object
```

- `file`是被打开的文件名，若不存在，`open()`将创建改文件再打开
- `mode`是文件的打开模式，参照下表
- `buffering`设置缓存模式，0表示无缓冲，1表示行缓冲，大于1表示缓冲区的大小，-1（或者任何负数）代表使用默认的缓冲区大小，以字节为单位
- `open()`返回一个`file`对象
- `with open`自带try finally机制且自动调用f.close()方法

![无法显示](figures/chap8/table8_1.png)

![无法显示](figures/chap8/table8_2.png)

![无法显示](figures/chap8/table8_2_next.png)

#### 文件的读取

- readline()
每次读取文件中的一行，当文件指针指向文件末尾将出现错误，需要判断以终止循环
- readlines()
一次性读取文件中的多行内容
- read()
一次性读取所有内容，并赋值给1个字符串变量

#### 文件的写入

- write()
将字符串写入文件
- writelines()
将列表中存储的字符串序列写入文件

#### 文件的删除

- 删除文件需要使用os和os.path模块
- os模块提供了对系统环境、文件、目录等操作系统级的接口函数

![无法显示](figures/chap8/table8_3.png)

![无法显示](figures/chap8/table8_4.png)

#### 文本内容的搜索与替换

#### 处理二进制文件

### 目录的常见操作

![无法显示](figures/chap8/table8_5.png)

### os.path模块

os.path.join 将路径和文件名合成一个路径
os.path.splitext(path) 分割路径，返回路径名和文件扩展名的元组

## Chap10 异常处理与程序调试

### 概述

异常是一种特殊的错误对象，程序可以捕获并检查，以决定如何处理错误。

异常可能改变程序的控制流程。根据发生时机，异常可能导致执行流程跳出函数或进入处理错误的代码块。

#### 常见异常类型

- SyntaxError 
Python不能理解程序
- NameError
局部或全局变量名找不到
- AttributeError
属性引用失败
- IndexError
索引引用越界
- TypeError
操作数的类型不正确
- ValueError
操作数类型正确但值非法
- ZeroDivisionError
被零除
- FileNotFoundError
文件未找到
- IOError
IO system 报告故障

### 异常处理

#### try...except的使用

try子句放置可能出现异常的语句

except子句处理异常

生成一个异常对象，包括异常的具体信息、种类和错误位置

#### try...finally的使用

finally子句用于关闭因异常而不能释放的系统资源

#### 使用raise抛出异常

raise语句用于抛出自定义异常
一旦执行后续代码不被执行

#### 自定义异常

继承Exception类
以Error结尾，显式表示是异常类
使用raise语句触发

#### assert语句的使用

断言语句，认为检测表达式永真
断言失败引发AssertionError异常

### 调试

测试方法 调试方法

#### 测试套件

将输入分解为子集，为代码正确性提供等效信息
构造测试套件
运行测试套件

### 使用自带IDEL调试程序

## Chap11 聚类算法

聚类：无监督问题中，数据没有标签，需要将相似的东西分到一组

### Kmeans算法

### DBSCAN算法
