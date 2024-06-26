## 一些注意点
Ascll
0 - 30h(48) 9-3Ah(58)
## Chapter4 源程序格式
### 语句
1. 指令语句
2. 伪指令语句
3. 汇编指示语句
### 语法成分
#### 变量与标号
##### 取名
+ 变量可以使用的字符是 0~10 a~z A~Z @ $ ? _
+ 不能以数字开头
+ $ 与 ？不能单独用作变量名或标号名
+ 缺省情况下，变量名及标号名均不区分大小写
##### 定义
```asm
变量名 db | dw | dd | dq | dt 初始值
```
数组赋值
```asm
abc db 100 dup(0)
; DUP括号内的值可以重复
x db 3 dup(1,2)
; DUP允许嵌套
y db 2 dup('A', 3 dup('B'), 'C')
```
## Chapter5 程序调试
### Turbo Debugger(TD)
```bash
#编译
tasm /zi hello; #参数/zi表示full debug info
tlink /v hello; #参数/v表示include full symbolic debug information
#调试
td hello.exe
```
## Chapter1 绪论
### 代码实例
```arm
data segment
s db "Hello,world!", 0Dh, 0Ah, '$'
data ends

code segment
assume cs:code, ds:data
main:
    mov ax, data
    mov ds, ax
    mov ah, 9
    mov dx, offset s
    int 21h
    mov ah, 4Ch
    int 21h
code ends
end main
```
```
d: //进入D盘
cd \masm //进入目录
edit hello.asm //edit编辑源程序
masm hello; //编译
link hello; //链接
hello //运行
```
+ edit F1查询 F3+E保存
+ 源程序保存到d:\masm目录下
+ 注意分号
---
### ASM理解C
#### 指针
#### 变量类别
#### 递归
### Debug技能
#### 硬件断点
## Chapter2 基础知识
### 数制
+ 十六进制用H/h做后缀，若最高位为字母加前缀0
+ 八进制用Q/q做后缀
+ 二进制用B/b做后缀
### 数据组织
#### 字节
+ 内存中每个字节都有一个地址
+ 可表示[0,255]的非符号数和[-128,127]的符号数
+ 可存放字符的ASCII码
+ 关键字db定义字节类型数组或变量,相当于char或unsigned char
```
a db 10,20,30,40 ; 定义一个字节类型的数组a
b db 0FFH ; 定义一个字节类型的变量b
c db 'A' ; 定义一个字节类型的变量c
```
#### 字(word)
+ 2个字节，16位
+ 高8位称为高字节
+ 可存放16位的段地址及16位的偏移地址
+ dw定义字类型的变量或数组，相当于short int或unsigned short int
#### 双字(dword)
+ 2个字，4字节，32位
+ 分为低字和双字
+ 可存放float类型的浮点数
+ dd定义双字类型的变量或数组，相当于long int,unsigned long int,float
#### 四字(qword)
+ 可存放double类型的浮点数
+ dq定义四字类型的变量或数组，相当于long long,double
#### 十字节(tbyte)
+ 可存放80位的浮点数
+ 相当于long double
### 扩充
#### 零扩充
+ 非符号数
+ 左侧补0
#### 符号扩充
---
## Chapter3 CPU、内存、接口
### 内存
#### 地址
+ 物理地址
+ 逻辑地址 段地址:偏移地址
#### 段(segment)
+ 内存块长度64KB
+ 20位首地址低4位等于0
#### 寻址
+ 直接寻址
$$段寄存器:[常数]$$
+ 间接寻址
$$段寄存器:[寄存器_1+寄存器_2+常数]$$
### 小端规则
输入和读取宽度大于8位的数据时，先低8位后高8位
### 缺省段址
### 总线
+ 地址总线：决定内存单元的数量
+ 数据总线：决定CPU和外界的数据传送速度
+ 控制总线：决定CPU对外部器件的控制能力
### 寄存器
8086所有寄存器都是16位的
#### 通用寄存器(AX BX CX DX)
#### 段寄存器(CS DS ES SS)
CS（代码段寄存器） IP（指令指针寄存器）
#### 物理地址
地址加法器：物理地址=段地址*16+偏移地址
### 寄存器（内存访问）
ds 段寄存器
### 指令
+ mov 传送指令
mov al,[0] (0表示内存单元的偏移地址)
+ jmp 转移指令 修改CS IP  
jmp 段地址：偏移地址
jmp 某一合法寄存器 功能为：用寄存器中的值修改IP
jmp ax 类似 mov IP,ax