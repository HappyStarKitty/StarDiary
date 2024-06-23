# Assembly Language
## Lesson 1
### 指令
1. 取指令
2. 解释指令
3. 执行指令
+ 指令长度不固定 复杂指令集
+ 指令长度固定 精简指令集
### 快捷键
#### OllyDBG
+ F8 ;单步执行
+ F7 ;单步步入
+ F2 ;设置断点
+ Ctrl+G ;goto指令
+ Alt+Backspace ;复原修改的指令
#### 010editor
+ Ctrl+F ;搜索
#### QuickView
- Enter ;切换到汇编模式或文本模式
- F2 ;16位汇编与32位汇编切换
- F3 ;恢复
- Alt+F9 ;保存修改该结果
- Esc ;推出
### sum.exe
### password.exe
+ 不要关掉命令行窗口，否则程序会结束运行
+ 不是从main函数开始执行，编译器会强行插入一段初始化代码
+ 观察406030内容时，要点一下左下角数据窗口
+ '\0'的Ascll码值为00
+ 修改数据值只需点一下数据即可输入，可输入多个连续字节
zf=0 计算结果非零
jnz 根据z=0跳转
#### regester
库函数
系统内核函数,又叫api
ansi:MessageBoxA
unidcoe:MessageBoxW
---
## Lesson 2
### reg.exe
+ 找到MessageBoxA
+ a xor b = c ==> b xor c = a 且 a xor c = b 
+ 破解的两种思路：从前向后和从后向前
+ wsprintf用法与C语言库函数sprintf相同
+ MessageBoxA(0,&result[0],&prompt[0],0);
父窗口编号 正文 标题 消息框式样
## Lesson 3
变量定义：db,dw,dd,dq,dt
dd:32位 dq:32位 dt：80位
不区分有符号数和无符号数
imul 有符号乘法
小端规则：先存放低8位后存放高8位
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
+ 使用变量时需要指定宽度 byte ptr ds:[si]表示：
地址ds:si指向的那个字节
ptr pointer缩写
同理有 word ptr,dword ptr
## Lesson 4
adc 带进位加
sbb 带借位减
clc 清除借位标志，确保CF=0
rol 循环左移
rol destination, count
ror 循环右移
同理
### 寻址
源操作数和目标操作数等宽
段寄存器不允许用常数
+ 直接寻址
偏移地址用常数
+ 间接寻址
用寄存器或寄存器+常数来表示变量的偏移地址
## Lesson 5
编程的时候只能使用逻辑地址，不适用物理地址
cs不能通过mov修改
无bp默认段寄存器是ds
## Lesson 6
int 10h
## Lesson 7
es可以表示段址
标志寄存器 6个状态标志 3个控制标志
CF jc jnc
ZF jz jnz je jne
SF js jns
OF jo jno
mov 不影响标志位
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
PF 奇偶标志 偶数个1为1 jp/jpe jnp/jpo
AF 辅助借位标志 
DF 方向标志 DF=0为正方向低地址到高地址
cld 使DF=0 std使DF=1
TF 跟踪/陷阱标志 TF=1 单步模式
IF 中断标志 IF=1允许中断 cli使IF=0 sti使IF=1
寄存器相加的间接寻址时 bx或bp通常用来表示数组的首地址，而si或di则用来表示下表
两个寄存器相加再加一个常数的间接寻址用来访问结构数组某个元素中的某个成员
端口编号就是端口地址
60h使CPU和键盘可通讯
70h和71h端口与CMOS内部的时钟有关
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
地址传送指令 LEA LDS LES
编译时某个值无法求出时，无法通过编译
lea 可以用来做间接求和
lea 做乘法比mul快
les di, video_addr[bx]; 取出32位，分成高16位和低16位，并赋值给es,di
lds si, video_addr[bx]
xchg 交换数据指令 16位且不能是常数
## Lesson 10
gdt表数组
保护模式（段有权限）实模式（段无权限）
符号扩充指令
cbw 将al扩充成为AX
cwd 将AX扩充为DX：AX
cdq 将EAC扩充成为EDX：EAX
 movzx  零扩充指令
 movsx 符号扩充指令
## Lesson 11
xlat 查表指令/换马指令
先让ds:bx指向标 al赋值为下标 执行后al变成对应元素
算术指令
inc不影响CF标志位
dex不影响CF
neg 
neg ax == (not ax)+1
adc 带进位加
sbb 带借位减
小数运算 fadd fsub fmul fdiv
pi dd 3.14
## Lesson 12
and or xor not test
test 按位与但不保存结果
移位指令
shl shr sal sar rol ror rcl rcr
rcl 带进位循环左移
rcr 带进位循环右移
sal 算术左移
sar 算术右移
字符串传送指令
movsb 传送字节 movsw 传送字 movsd 传送双字
rep mpvsb;准备工作
；ds:si执行源字符串
；es:di指向目标字符串
；cx 移动次数
；df 方向表示设为正方向
字符串比较指令
cmpsb cmpsw cmpsd
- cmpsb
- repe cmpsb 相等则比较下一个
- repne cmpsb 不等则比较下一个
字符串扫描指令
scasb scasw scasd
字符串操作指令
stosb stosw stosd
lods
lodsb lodsw lodsd
stos 存储
scas 比较
## Lesson 13
控制转移指令
## Lesson 14
_cdecl 参数从右到左压入，调用这清理
_pascal 参数从左到右压入，被调用者清理
_stdcall 参数从右到左压入，被调用者清理
动态变量
c语言函数保护bp,bx,si,di



### 中断
#### int 21h
+ func1:
+ func2:输出字符
+ func9:显示字符串



