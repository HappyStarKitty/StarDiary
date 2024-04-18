# C Program Problem Set
个人整理的C程问题集，兴许对考前补天有所帮助
## Part01 Debug篇
比较菜，不会专业的Debug技巧，就简单列举一些error和应对方法
### PTA调试
PTA的编译器会与Dev等稍有不同，可以在测试样例中输入，观察编译器的报错信息
一般来讲，PTA的编译器会更严格，如果在Dev上可行但在PTA上无法通过，可能的原因有：
-  变量初始化
### DevC++调试
***[Error] ld returned 1 exit status***
+ 程序没有主函数
+ printf/scanf 书写错误
+ 出现主函数前未定义的函数
+ 上一个运行结果未关闭
### VScode调试

---

## Part02 理论篇
**常见的陷阱**:
- 打断施法的分号
- 考验眼力的赋值
- 莫名奇妙的代码缩进
- 混乱不堪的复合语句   

**易错的记忆难点**:
+ 优先级
+ 类型转换

### 判断与选择
> **Q1**: 如果变量已经正确定义，则执行以下程序段后，x的值不变。
>```c
>if (x = 20) {
>   y = 1;
>} else {
>   y = 0;
>}  
>```
> **A1**: 错误
>x=20将x赋值为20，并返回赋值的值，故x=20,y=1

> **Q2**: 执行以下程序段，输入20，输出20.00。
>```c
>double x;   
>scanf("%f", &x);  
>printf("%.2f", x);  
>```
>***A2***: 错误
>double输入用"%.lf",否则会赋值为0

> ***Q3***: 以下求 n! 的函数可以正确计算21！，正确的选项是（ ）。
>```c
>_______ fact(int n)
>{
>    int i;
>    _______ product;
>
>    product = 1;
>    for (i = 1; i <= n; i++){
>         product = product * i;
>    }
>
>    return  product;
>}
>```
>A: double B: int C: float D: void
>***A3***: A.double
>int只有四字节或八字节，21！超出存储范围，而double可以

>***Q4***: 执行以下程序段，并回答下列问题。请注意，直接填数字，前后不要加空格等任何其他字符。
>```c
>int fahr;
>double celsius;   
>for (fahr = 91 ; fahr <= 100; fahr++)   
 >   celsius = 5.0 * (fahr - 32) / 9.0;         /* 语句① */
 >   printf("%4d%6.1f\n", fahr, celsius);       /* 语句② */
 >```
 >语句1执行了____次，语句2执行了____次
 >***A4***: 10次，1次
 >语句2不在循环体内

 >***Q5***: 执行以下程序段，并回答下列问题。请注意，直接填数字，前后不要加空格等任何其他字符。
 >```c
 >int fahr;
>double celsius;   
>for (fahr = 121 ; fahr <= 125; fahr++) ;  
>    celsius = 5.0 * (fahr - 32) / 9.0;         /* 语句① */
 >   printf("%4d%6.1f\n", fahr, celsius);       /* 语句② */
 >```
 >语句1执行了____次，语句2执行了____次
 >***A5***: 1次，1次
 >分号表示语句结束，两条语句均不在循环体内

 >***Q6***: 表达式 (z=0, (x=2)||(z=1),z) 的值是1。
 ***A6***: 错误
 逗号操作符对每个子表达式求值，并返回最后一个子表达式的值
 z赋值为0，且由于||的惰性不再赋值，故返回为0

 >***Q7***: 运算符“+”不能作为单目运算符。
***A7***: 错误
比如说在表达式y=+x中，"+" 就是单目运算符

>***Q8***: 设字符型变量x的值是064，表达式 ~ x ^ x << 2 & x 的值是（）。
A: 0333 B: 333 C: 0x333 D: 020
***A8***: A
先写出x的二进制值：001101000，依次进行非运算、左移、按位与和异或即可

>***Q9***: 在C语言中，可以将主调函数放在被调函数的后面，省略函数的声明。
***A9***: 正确
C语言编译采用"后定义优先"原则，在编译器遇到某个调用函数的代码时，会搜索整个程序确保函数已经定义

>***Q10***: 静态局部变量如果没有赋值，其存储单元中将是随机值。
***A10***: 错误
如果没有显式地初始化，则自动赋值为0或空字符

>***Q11***: C语言中函数返回值的类型是由以下（ ）决定的。
A. 函数定义时指定的类型
B. return语句中的表达式类型
C. 调用该函数时的实参的数据类型
D. 形参的数据类型
***A11***: A
如果返回的类型不一致会进行隐式的类型转换

>***Q12***: 以下关于函数叙述中，错误的是（ ）。
A.函数未被调用时，系统将不为形参分配内存单元
B.实参与形参的个数必须相等，且实参与形参的类型必须对应一致
C.当形参是变量时，实参可以是变量、常量或表达式
D.如函数调用时，实参与形参都为变量，则这两个变量不可能占用同一内存空间
***A12***: B
类型转换问题

>***Q13***: 下面这段代码，用%.2f格式打印输出 int 型变量，不会进行类型转换，打印输出的结果不会是2019.00
>```c
>#include <stdio.h>
>int main(){
>   int k=2019;
>   printf("%.2f",k);
>   return 0;
>}
>```
>***A13***: 正确
标志错误会发生错误，实际输出的是 0.00，如果是浮点型输出为整型，实际输出的是0

>***Q14***: 已知字符 B 的 ASCII 码是66，那么也可以用转义符\，用'\66'来表示字符常量B
***A14***: 错误
不需要使用转义符，可直接用66表示

>***Q15***: 执行以下程序段，sum 的值是 1.5
>```c
>int sum, i;
>sum = 0;
>for (i = 1; i <= 2; i++)
>{
>   sum = sum + 1.0 / i;
>}
>```
>***A15***: 错误
赋值表达式的值先类型转换为整型再加在 sum，故 sum 值为1


>***Q16***: 下列程序段输出结果为
>```c
>int x=-3,y=2;
>   if (x>y);
>       x=-x;
>   if (x<y>)
>       y=-y;
>   printf("x=%d,y=%d\n",x,y);
>A. x=3,y=-2 B. x=3,y=2 C. x=-3,y=2 D. x=-3,y=-2
>```
>***A16***: B
>注意阴间的负号

</details>

### 程序阅读与填空
#### 求整数平均值
```c
int sum,n;整数之和与数目
double average;平均值

;计算sum

average=1.0*sum/n;强制类型转换
```
---
## Part03 实验篇
免责声明：部分题目为我上机作业未能解决的题目，不保证能通过PTA测试
### 算法实例
### 编程题目
#### Q1: 查询水果价格
>给定四种水果，分别是苹果（apple）、梨（pear）、桔子（orange）、葡萄（grape），单价分别对应为3.00元/公斤、2.50元/公斤、4.10元/公斤、10.20元/公斤。
>
>首先在屏幕上显示以下菜单：
>
>[1] apple
[2] pear
[3] orange
[4] grape
[0] exit
用户可以输入编号1~4查询对应水果的单价。当连续查询次数超过5次时，程序应自动退出查询；不到5次而用户输入0即退出；输入其他编号，显示价格为0。
>
>输入格式:
输入在一行中给出用户连续输入的若干个编号。
>
>输出格式:
首先在屏幕上显示菜单。然后对应用户的每个输入，在一行中按格式“price = 价格”输出查询结果，其中价格保留两位小数。当用户连续查询次数超过5次、或主动输入0时，程序结束。
>
>输入样例1:
3 -1 0 2
输出样例1:
[1] apple
[2] pear
[3] orange
[4] grape
[0] exit
price = 4.10
price = 0.00
输入样例2:
1 2 3 3 4 4 5 6 7 8
输出样例2:
[1] apple
[2] pear
[3] orange
[4] grape
[0] exit
price = 3.00
price = 2.50
price = 4.10
price = 4.10
price = 10.20
### Solution
```c
#include <stdio.h>

int main() {
    char *fruits[] = {"apple", "pear", "orange", "grape"};
    double prices[] = {3.00, 2.50, 4.10, 10.20};
    int i, query_count = 0;

    printf("[1] apple\n[2] pear\n[3] orange\n[4] grape\n[0] exit\n");

    while (1) {
        int choice;
        scanf("%d", &choice);

        if (choice == 0 || query_count >= 5) {
            break;
        } else if (choice >= 1 && choice <= 4) {
            printf("price = %.2f\n", prices[choice - 1]);
            query_count++;
        } else {
            printf("price = 0.00\n");
            query_count++;
        }
    }

    return 0;
}
```
### Q2: 统计字符
>本题要求编写程序，输入N个字符，统计其中英文字母、空格或回车、数字字符和其他字符的个数。
>
>输入格式:
>输入在第一行中给出正整数N，第二行输入N个字符，最后一个回车表示输入结束，不算在内。
>
>输出格式:
在一行内按照
>
>letter = 英文字母个数, blank = 空格或回车个数, digit = 数字字符个数, other = 其他字符个数
>的格式输出。请注意，等号的左右各有一个空格，逗号后有一个空格。
>
>输入样例:
>10
aZ &
09 Az
输出样例:
letter = 4, blank = 3, digit = 2, other = 1
### Solution
```c
#include <stdio.h>

int main() {
    int N;
    scanf("%d\n", &N); // 读取N，并丢弃换行符

    int letter = 0, blank = 0, digit = 0, other = 0;
    char c;

    for (int i = 0; i < N; i++) {
        c = getchar();
        if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')) {
            letter++;
        } else if (c == ' ' || c == '\n') {
            blank++;
        } else if (c >= '0' && c <= '9') {
            digit++;
        } else {
            other++;
        }
    }

    printf("letter = %d, blank = %d, digit = %d, other = %d\n", letter, blank, digit, other);

    return 0;
}
```

### Q3: 简单计算器
>模拟简单运算器的工作。假设计算器只能进行加减乘除运算，运算数和结果都是整数，四种运算符的优先级相同，按从左到右的顺序计算。
>
>输入格式:
输入在一行中给出一个四则运算算式，没有空格，且至少有一个操作数。遇等号”=”说明输入结束。
>
>输出格式:
>在一行中输出算式的运算结果，或者如果除法分母为0或有非法运算符，则输出错误信息“ERROR”。
>
>输入样例:
1+2*10-10/2=
输出样例:
10
### Solution
```c
#include <stdio.h>
int main() {
    char operator;
    int operand, result;
    scanf("%d", &result);
    while (scanf("%c", &operator) == 1 && operator != '=') {
        scanf("%d", &operand);
        switch (operator) {
            case '+':
                result += operand;
                break;
            case '-':
                result -= operand;
                break;
            case '*':
                result *= operand;
                break;
            case '/':
                if (operand == 0) {
                    printf("ERROR\n");
                    return 0;
                }
                result /= operand;
                break;
            default:
                printf("ERROR\n");
                return 0;
        }
    }

    printf("%d\n", result);
    return 0;
}
```