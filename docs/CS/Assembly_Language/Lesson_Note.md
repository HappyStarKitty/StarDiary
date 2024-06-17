# Assembly Language
## Lesson 7 question
1. 如何控制cpu中的寄存器
汇编语言主要控制寄存器，内存，外部设备
## Lesson 1
### 概览
本节课从OllyDBG开始引入讲解汇编语言，可以学一学一些逆向常用的思路方法
### 注意事项

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
## Lesson 7
在begin和end中定义变量或函数需用jmp绕过，否则会被误当作指令执行
```asm
stk segment stack
db 200h dup('S')
stk ends
end main
```

堆栈段只能定义一个
程序刚开始运行时ss=stk,sp=200h
push一下，sp回到合法位置

---
源程序未定义堆栈段，操作系统如何分配堆栈
```asm
;psp 段地址1000:0
;data段 1010:0;设data段长度=20h字节
;code段 1012:0;设code段长度=30h字节
;1015:0
;当源代码没有定义堆栈段时，操作系统会在程序开始运行时自动把ss赋值为首段的段地址，并把sp赋值为0
;data+code长度接近FFFFh时，需要定义一个堆栈空间，否则会覆盖到堆栈空间，造成安全隐患
```

如何定位到数组位置
在data段定义数组
mov 时会先找到data，再根据assume的内容找到相应段寄存器
用eax等32位寄存器，需要加上.386，然后在data段和code段行加上use16
end main; 用来指定main:作为程序第一条指令的标号，即程序从main开始运行

cmp和sub的差别
sub ax, ax; AX=0,ZF=1
cmp ax, ax; AX不受影响，ZF=1
奇校验
偶校验
## Lesson 8
字符串复制时如果有重叠，复制按反方向
源首地址>目标首地址，复制按正方向，即先复制低位再复制高位

rep movab; 将ds:si指向的长度为cx字节的内存块按反方向复制到目标地址es:di
int 21h; 软件中断
显式地通过int n 的形式的来调用某个函数集的子函数
int 9h; 键盘中断
硬件中断则是由某个硬件的某个事件触发，并由CPU自动插入并用一份隐式的int n指令调用某个中断服务子函数
int 1h
反调试加密上一条指令，解密下一条指令，让CPU进入单步模式
mov两边不能同时都是内存变量，所以使用堆栈
in out实现CPU和外设的通讯
## Lesson 9
### 32位间接寻址方式
32位比16位多了以下这种寻址方式
[寄存器+寄存器*n+常数]
```asm
mov eax, [ebx+esi*4+6]
```
对[]中的两个寄存器几乎不加限制
都可以放进[]里面，两个寄存器可以任意组合
### 段覆盖(segment overriding)
通过在操作数前添加一个段前缀(segment prefix)如CS:、DS:、ES:、SS:来强制改变操作数的段址
当[]中包含有寄存器bp时，该变量的段地址一定是ss。
默认的段地址是可以改变的, 例如:
mov ax, ds:[bp+2]
这条指令的源操作数段地址从默认的ss改成了ds。
### 通用数据传送指令：MOV，PUSH，POP，XCHG
8086中, push不能跟常数, 但80386及以后的cpu允许push一个常数。
push/pop后面不能跟一个8位的寄存器或变量:
### lea
编译时某个值无法求出时，无法通过编译
lea 可以用来做间接求和
lea 做乘法比mul快
les di, video_addr[bx]; 取出32位，分成高16位和低16位，并赋值给es,di
lds si, video_addr[bx]

## Lesson 10
## Lesson 11
## Lesson 12
## Lesson 13
## Lesson 13




### 中断
#### int 21h
+ func1:
+ func2:输出字符
+ func9:显示字符串



