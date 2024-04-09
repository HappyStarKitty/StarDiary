# The C Programming Language
## Dev C++ error list
***[Error] ld returned 1 exit status***
+ 程序没有主函数
+ printf/scanf 书写错误
+ 出现主函数前未定义的函数
+ 上一个运行结果未关闭
---
## 基本语法
### 易错易忘
+ 复合语句在语法上被认为是一条语句
+ 整数除法舍位
+ ;空语句
+ 函数类型未加显式说明，则函数的隐含类型为int
+ %%可输出百分号
+ 赋值语句的结果是右侧表达式的值
```c
int x=0, y=0, z=0;
z = (x==1) && (y=2);
printf("%d ", y);

// &&惰性，当前一个条件为真，执行赋值操作
<<<0
```
```c
int i=10;
long long t = sizeof(i++);
printf("%d", i);

// sizeof()只是获取值，不影响实际值
<<<10
```
```c
int i,x,y;	
i=x=y=0;
do {
	++i;
	if ( i%2 ) 
		x+=i, 
	i++;
	y +=i++;
} while ( i<=7 );
printf("%d %d %d", i, x, y);

// 注意逗号
<<<9 1 20
 ```
 ### 位运算
 |符号|描述|运算规则|常用功能
 |:-:|:-:|:-:|:-:
 &|与|均1为1，反之为0|单元清零，取数的指定位，判断奇偶
 \||或|有1为1，反之为0|对一个数据的某些位置设置为1
 ^|异或|相同为0，相异为1[^1]|反转指定位，交换两数
 ~|取反
 <<|左移|左移若干位，高位丢弃，低位补0|左移一位，相当于乘2
 \>>|右移|右移若干位，无符号数高位补0，有符号数据编译器定[^2]|右移一位，相当于除以2

[^1]: 异或的一些性质
    1. 交换律
    2. 结合律
    3. x^0=x, x^x=0
    4. 自反性：a^b^b=a^0=a 
[^2]:有的补符号位(算术右移)，有的补0(逻辑右移)
 ### 符号优先级
 > 参考：[ZhouTimeMachine/Note](https://zhoutimemachine.github.io/note/courses/C-review/#week-3)
 > [C语言运算符优先级](https://blog.csdn.net/yuliying/article/details/72898132)

 |优先级|运算符|结和性/目数|
 |:-:|:-:|:-:|
 1|[]数组()
 1|- > .结构
 2|-取负 ++ --自增减|右/单
 2|(类型)|右
 2|* & 指针/地址|右/单
 2|！~ 非/按位反|右/单
 2|sizeof|右
 3|* / %|/双
 4|+ -|/双
 5|<< >>|/双
 6|>(=) <(=)|/双
 7|== !=|/双
 8/9/10|&/^/ \|位|/双
 11/12|&& || 逻辑|/双
 13|?:|右/三
 14|各种赋值|右
 15|，

>逻辑：非 > 与 > 或
位运算：反 > 与 > 异或 > 或

### 错题整理
> **Q1**:如果变量已经正确定义，则执行以下程序段后，x的值不变。
>```c
>if (x = 20) {
>   y = 1;
>} else {
>   y = 0;
>}  
>```
> **A1**: 错误
>x赋值为20，y赋值为1

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
#### 代码样例
***Q1***：华氏度转摄氏度
```c
#include <stdio.h>
int main(){
    float farh,celsius;
    int lower,upper,step;

    lower=0;
    upper=300;
    step=20;

    farh=lower;
    while(farh<=upper){
        celsius=(5.0/9.0)*(farh-32.0);
        printf("%3.0f %6.1f\n",farh,celsius);
        farh=farh+step;
    }

    return 0;
}
```

### 输入与输出
#### printf
+ 不换行
+ %d 十进制整型数 %x 十六进制数 %o 八进制数
+ %ld long整型数
+ %f float %lf double 
+ %6.2f 浮点数打印，小数点后有两位小数
+ %c 字符 %s 字符串
+ 八进制的前缀是0，十六进制的前缀是0x
```c
int k=11;
printf("k=%d,k=%o,k=%x\n",k,k,k);
>>>k=11,k=13,k=b
```
#### getchar/putchar
```c
#include <stdio.h>
int main(){
    int c;
    while ((c=getchar()) != EOF)
        putchar(c);
}
/* 将输入复制到输出 */
```
#### puts/gets
```c
int buf[100];
gets(buf); //等价于gets(&buf[0]);
```
### 循环与判断
#### switch
+ case必须互不相同且与表达式类型一致
+ 执行case符合以后所有的语句（break以避免不必要结果）
+ default可放在任意位置
### 数据类型
#### 整型&浮点型
##### 无符号整型
```c
unsigned short sht=0;
sht--;
printf("%d",sht);

>>>65535
```
##### 有符号整型
###### 正数：
- 原码、反码、补码相同
###### 负数：
- 原码由对应正数原码最高位取反得到
- 反码由原码按位取反(符号位除外)得到
- 补码由原码取反加1得到
#### 字符
```c
//表示字符A,ASCLL对应八进制101，十六进制41
//'A', '\101', '\x41'
```
### 强制类型转换

```
(type_name) expression
```
+ 强制类型转换运算符的优先级大于除法
+ 浮点型转整型舍去小数部分
### 常量与变量
#### 常量
```c
#include <stdio.h>

#define IN 1
#define OUT 0

int main(){
    int c,nl,nw,nc,state;

    state=OUT;
    nl=nw=nc=0;
    while((c=getchar())!=EOF){
        ++nc;
        if (c=='\n')
            ++nl;
        if (c==' ' || c=='\n' || c=='\t')
            state=OUT;
        else if (state==OUT){
            state==IN;
            ++nw;
        }
    }
    printf("%d %d %d\n",nl,nw,nc);
    return 0;
}
/* 统计输入的行数，单词数与字符数 */
```
+ 常量名大写，与变量区分
+ #define指令行末尾无分号（C99：const）
#### 变量
+ 全局变量和静态变量默认值为0
+ 局部变量初始值未定义
---
## 类型、运算、表达式
++后缀 使用后自增
++前缀 使用前自增
函数声明时（）中无参数表示参数未知，并非无参数（无参数：void f(void)）
### 二维数组初始化
+ 列数必须给出
+ 每行一个{}，逗号分隔
+ 如果省略，表示补零
### 集成初始化（C99 only）
+ 用[n]在初始化数据中给出定位
+ 没有定位的数据接在前面位置数据的后面
+ 其他位置的值补零
+ 适用于初始数据稀疏的矩阵
### 数组与指针
+ 函数参数表中的数组实际是指针
+ sizeof(a)==size(int*)
+ 可以用数组的运算符[]进行运算
```c
#include <stdio.h>
int main(){
	int a[3]={1,2,3},sum=0,i;
	for (i=0;i<3;i++)
		sum+=0[a+i];
	printf("%d",sum);	
} 
//加0可以让数组名放在里面
```
### 字符与字符串
char用%d读返回ascll
#### 字符串函数
strcmp(str1,str2) //如果字符串相同返回0，否则返回1
## 指针
### 用途
+ 函数返回多个值  
+ 传入较大的数据时用作参数
+ 传入数组后对数组做操作
+ 用函数修改不止一个变量
+ 动态申请内存
### 注意
p+n=p+n*sizeof(*p)
>**例题**：
NMEA-0183协议是为了在不同的GPS（全球定位系统）导航设备中建立统一的BTCM（海事无线电技术委员会）标准，由美国国家海洋电子协会（NMEA-The National Marine Electronics Associa-tion）制定的一套通讯协议。GPS接收机根据NMEA-0183协议的标准规范，将位置、速度等信息通过串口传送到PC机、PDA等设备。
NMEA-0183协议是GPS接收机应当遵守的标准协议，也是目前GPS接收机上使用最广泛的协议，大多数常见的GPS接收机、GPS数据处理软件、导航软件都遵守或者至少兼容这个协议。
NMEA-0183协议定义的语句非常多，但是常用的或者说兼容性最广的语句只有\$GPGGA、\$GPGSA、\$GPGSV、\$GPRMC、\$GPVTG、\$GPGLL等。其中\$GPRMC语句的格式如下：

    \$GPRMC,024813.640,A,3158.4608,N,11848.3737,E,10.05,324.27,150706,,,A*50
这里整条语句是一个文本行，行中以逗号“,”隔开各个字段，每个字段的大小（长度）不一，这里的示例只是一种可能，并不能认为字段的大小就如上述例句一样。
    字段0：\$GPRMC，语句ID，表明该语句为Recommended Minimum Specific GPS/TRANSIT Data（RMC）推荐最小定位信息
    字段1：UTC时间，hhmmss.sss格式
    字段2：状态，A=定位，V=未定位
    字段3：纬度ddmm.mmmm，度分格式（前导位数不足则补0）
    字段4：纬度N（北纬）或S（南纬）
    字段5：经度dddmm.mmmm，度分格式（前导位数不足则补0）
    字段6：经度E（东经）或W（西经）
    字段7：速度，节，Knots
    字段8：方位角，度
    字段9：UTC日期，DDMMYY格式
    字段10：磁偏角，（000 - 180）度（前导位数不足则补0）
    字段11：磁偏角方向，E=东W=西
    字段16：校验值
这里，“\*”为校验和识别符，其后面的两位数为校验和，代表了“\$”和“\*”之间所有字符（不包括这两个字符）的异或值的十六进制值。上面这条例句的校验和是十六进制的50，也就是十进制的80。
提示：\^运算符的作用是异或。将\$和\*之间所有的字符做\^运算(第一个字符和第二个字符异或，结果再和第三个字符异或，依此类推)之后的值对65536取余后的结果，应该和\*后面的两个十六进制数字的值相等，否则的话说明这条语句在传输中发生了错误。注意这个十六进制值中是会出现A-F的大写字母的。
现在，你的程序要读入一系列GPS输出，其中包含\$GPRMC，也包含其他语句。在数据的最后，有一行单独的
    END
表示数据的结束。
你的程序要从中找出\$GPRMC语句，计算校验和，找出其中校验正确，并且字段2表示已定位的语句，从中计算出时间，换算成北京时间。一次数据中会包含多条\$GPRMC语句，以最后一条语句得到的北京时间作为结果输出。
你的程序一定会读到一条有效的\$GPRMC语句。
输入格式:
多条GPS语句，每条均以回车换行结束。最后一行是END三个大写字母。
输出格式：
6位数时间，表达为：
    hh:mm:ss
其中，hh是两位数的小时，不足两位时前面补0；mm是两位数的分钟，不足两位时前面补0；ss是两位数的秒，不足两位时前面补0。
输入样例：
$GPRMC,024813.640,A,3158.4608,N,11848.3737,E,10.05,324.27,150706,,,A*50
END
输出样例：
10:48:13
```c
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int calculate_checksum(const char *sentence) {
    int checksum = 0;
    // 从$到*之间的字符进行异或运算
    for (int i = 1; i < strlen(sentence) && sentence[i] != '*'; i++) {
        checksum ^= sentence[i];
    }
    return checksum;
}

int main() {
    char sentence[1000];
    int valid_checksum = 0;  // 校验和是否有效
    char time[7];  // 保存时间字符串

    while (1) {
        fgets(sentence, sizeof(sentence), stdin);

        // 去掉末尾的换行符
        sentence[strcspn(sentence, "\n")] = 0;

        if (strcmp(sentence, "END") == 0) {
            // 输入结束
            break;
        }

        // 判断是否为$GPRMC语句
        if (strncmp(sentence, "$GPRMC,", 7) == 0) {
            // 计算校验和
            int checksum = calculate_checksum(sentence);

            // 从语句中获取状态字段（字段2）
            char *status = strtok(sentence, ",");
            for (int i = 0; i < 2; i++) {
                status = strtok(NULL, ",");
            }

            // 判断校验和是否有效且状态为定位
            if (checksum == strtol(strtok(NULL, "*"), NULL, 16) && strcmp(status, "A") == 0) {
                valid_checksum = 1;
                // 从语句中获取时间字段（字段1）
                char *utc_time = strtok(NULL, ",");
                strncpy(time, utc_time, 6);
            }
        }
    }

    // 输出北京时间
    if (valid_checksum) {
        int hour = atoi(strncpy(NULL, time, 2));
        int minute = atoi(strncpy(NULL, time + 2, 2));
        int second = atoi(strncpy(NULL, time + 4, 2));

        // 转换成北京时间
        hour = (hour + 8) % 24;

        printf("%02d:%02d:%02d\n", hour, minute, second);
    }

    return 0;
}

```
## 算法
### 辗转相除法
```c
int gcd(int a, int b) {
    return b == 0 ? a : gcd(b, a % b);
}
```