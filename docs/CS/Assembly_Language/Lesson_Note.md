# Assembly Language
## Lesson 1
### 注意事项
+ 文件可以直接拖拽进虚拟机
+ 命令行使用command(cmd字体比较小)
### cpu
#### 处理指令
1. 取指令
2. 解释指令
3. 执行指令
#### 类型
+ 指令长度不固定 复杂指令集
+ 指令长度固定 精简指令集
### 快捷键
#### OllyDBG
+ F8 ;单步执行
+ F2 ;设置断点
+ Ctrl+G ;goto指令
+ Alt+Backspace ;复原修改的指令

#### 010edtior
#### qeditor


#### 010editor
+ Ctrl+F ;搜索
### sum.exe
### password.exe
+ 不要关掉命令行窗口，否则程序会结束运行
+ 不是从main函数开始执行，编译器会强行插入一段初始化代码

+ 观察406030内容时，要点一下左下角数据窗口
+ '\0'的Ascll码值为00
+ 修改数据值只需点一下数据即可输入，可输入多个连续字节
## Lesson 2
### reg.exe
+ 找到MessageBoxA
+ a xor b = c ==> b xor c = a 且 a xor c = b 
+ 破解的两种思路：从前向后和从后向前
+ wsprintf用法与C语言库函数sprintf相同
+ MessageBoxA(0,&result[0],&prompt[0],0);
父窗口编号 正文 标题 消息框式样
## Lesson 3
### outs.asm
```asm
mov ax,seg s ;或mov ax,data
mov dl,s[bx] ;经过编译后变成 mov dl,ds:[3+bx]
             ;相当于C语言的 dl = *(ds:3+bx)
```
+ 在调试器里，可以Ctrl+G，输入ds:03找到数据
+ 汇编语言中的常数没有宽度，比如55h既有可能是一个
char,也可能是short int,也可能是long int
+ 小段规则：先存放低位，后存放高位
+ byte ptr ds:[si]表示：
地址ds:si指向的那个字节
ptr pointer缩写
同理有 word ptr,dword ptr
## Lesson 4
### 寻址
源操作数和目标操作数等宽
段寄存器不允许用常数
+ 直接寻址
偏移地址用常数
+ 间接寻址
用寄存器或寄存器+常数来表示变量的偏移地址

---
### 中断
#### int 21
+ func1:
+ func2:输出字符
+ func9:显示字符串
### 寄存器
寄存器是CPU内部的全局变量
#### 通用寄存器
+ eax
32位寄存器，存储函数返回值
Noname(高16位)+AX(AH+AL)
#### 段寄存器
+ cs
段寄存器 code segment
当前将要执行的指令的段地址
+ ds
段寄存器 data segment
段首地址的十六进制值各位必须等于0
```asm
mov ds, seg s ;有语法错误，因为ds作为段寄存器
              ;不能接受常数给它赋值，只能用寄存器或变量赋值         
```
+ ss


#### 偏移地址寄存器
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
### 指令
+ lea
计算地址
+ retn/retf
return near/return far
近返回/远返回
+ call 00401000 
call 调用函数 
00401000 main函数地址
+ nop 
no operation 无操作
在代码窗修改键入nop
在数据窗修改键入90
+ push 
压入堆栈
用于传入参数
#### 运算指令
+ mov ; 赋值
+ add ; +=
#### 无条件跳转
+ jmp
#### 条件跳转
JE - 如果相等（ZF = 1）
JNE - 如果不相等（ZF = 0）
JZ - 如果为零（ZF = 1）
JNZ - 如果不为零（ZF = 0）
JS - 如果为负（SF = 1）
JNS - 如果为非负（SF = 0）
JO - 如果溢出（OF = 1）
JNO - 如果没有溢出（OF = 0）
JB、JNAE - 如果低于/不以上溢（CF = 1）
JNB、JAE - 如果不低于/以上溢（CF = 0）
JBE、JNA - 如果小于等于/不大于（CF = 1 或 ZF = 1）
JA、JNBE - 如果大于/不小于等于（CF = 0 且 ZF = 0）
JCXZ - 如果 CX 寄存器为零（CX = 0）
JECXZ - 如果 ECX 寄存器为零（ECX = 0）
JP、JPE - 如果偶校验（PF = 1）
JNP、JPO - 如果奇校验（PF = 0）
JG、JNLE - 如果大于（ZF = 0 且 SF = OF）
JGE、JNL - 如果大于等于（SF = OF）
JL、JNGE - 如果小于（SF ≠ OF）
JLE、JNG - 如果小于等于（ZF = 1 或 SF ≠ OF）
