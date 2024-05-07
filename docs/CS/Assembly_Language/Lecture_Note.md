# Lecture Note
## 汇编程序
### 工作流
edit(asm) --> masm(obj) --> link(exe) --> run
### 源程序指令
分为汇编指令（编译为机器指令，CPU执行）和伪指令（编译器执行）
## 指令
#### 伪指令
- XXX segment / XXX ends 
定义一个段，用于存放指令/数据/栈
ends表示段的结束
- end 
标记整个程序的结束
- assume 
将某一段寄存器和和某个具体的段相关联
#### 汇编指令

+ mov
+ movzx
+ daa
加法的十进制调整(decimal adjust for addition)
+ clc
+ adc
add with CF 带进位加
+ lea
计算地址
+ nop 
no operation 无操作
在代码窗修改键入nop
在数据窗修改键入90
#### 数据传送指令
##### 通用
|指令|功能|指令|功能|
|---|---|---|---|
|push|压入|pop|弹出|
##### 端口
|指令|功能|指令|功能|
|---|---|---|---|
|in|端口读取|out|端口写入|
#### 算数指令
##### 加法减法指令
|指令|功能|指令|功能|
|---|---|---|---|
|add|加法|sub|减法|
|inc|自增|dec|自减|
##### 乘法除法指令
##### 逻辑运算指令
|指令|功能|指令|功能|
|---|---|---|---|
|and|按位与|or|按位或|
|xor|按位异或|not|按位取反|
##### 移位指令
|指令|功能|指令|功能|
|---|---|---|---|
|shl|逻辑左移|shr|逻辑右移|
|sal|算数左移|sar|算数右移|
#### 转移指令
修改IP，或同时修改CS和IP的指令
段内转移：只修改IP，又分为短转移和近转移
段间转移：同时修改CS和IP
##### 循环
|指令|功能|说明|
|---|---|---|
|loop|循环|相当于C语言中的for循环，变量为cx的值|
##### 无条件转移
|功能|语法|
|---|---|
|段内短转移|jmp short 标号|
|段内近转移|jmp near ptr 标号|
|段间转移|jmp far ptr 标号|
##### 子程序调用
|指令|功能|说明|
|---|---|---|
|ret
|call
---
## 寄存器
寄存器是CPU内部的全局变量
### 通用寄存器
+ eax
32位寄存器，存储函数返回值
Noname(高16位)+AX(AH+AL)
### 段寄存器
段：一段内存，编程时需要code segment(存放代码)、data segment(存放数据)、stack segment(存放栈)
段地址：指示段
偏移地址：访问段内的单元
#### code段
+ cs
段寄存器 code segment
当前将要执行的指令的段地址
#### data段
+ ds
段寄存器 data segment
段首地址的十六进制值各位必须等于0
```asm
mov ds, seg s ;有语法错误，因为ds作为段寄存器
              ;不能接受常数给它赋值，只能用寄存器或变量赋值         
```
#### stack段
+ ss

#### 指针寄存器(表示偏移地址)
+ bx(补充偏移地址寄存器)
base
+ bp
base pointer
+ si 
source index
+ di
destination index

+ ip
instuction pointer
当前将要执行的指令的偏移地址
cs:ip指向当前将要执行的指令
+ sp
ss:sp用来指向堆栈的顶端
sp不能放在[]内
;偏移地址bx,bp,si,di

#### FL标志寄存器
| 位 | 标志|
|:-:|:-:|
11|O
10|D
11 10 9 8 7 6 4 2 0
O D I T S Z A P C

+ CF
进位标志(carry flag)
加法进位、减法借位 CF=1
左移、右移 CF一定是最后一次移位
用jc和jnc跳转指令或adc指令间接知道CF

+ ZF
零标志(zero flag)
jz/jnz指令

+ SF
符号标志(sign flag)
运算结果的最高位
js/jns指令

+ OF
溢出标志(overflow flag)
正负相加永不溢出
jo/jno指令

+ PF
奇偶标志(parity flag)
结果二进制位中1的个数

+ AF
低四位向高四位产生进位或借位
与BCD(Binary Coded Decimal)码有关

+ DF
DF=0为正方向
cld使DF=0，复制按正方向
std使DF=0，复制按反方向
