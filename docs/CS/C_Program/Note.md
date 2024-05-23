# The C Programming Language
## 工作流
预处理 -> 编译 -> 链接 -> 
###
###
###
###
## 基本语法
### 易错易忘
+ 复合语句在语法上被认为是一条语句
+ ;空语句
+ 函数类型未加显式说明，则函数的隐含类型为int
+ %%可输出百分号
+ 赋值语句的结果是右侧表达式的值
+ 函数分为库函数和自定义函数
+ ,分隔可以在一行执行多条指令
+ 变量交换
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
 ### 类型转换
 1. 赋值操作
 2. 算术运算
 整数提升，较低类型的操作数会被提升到较高类型
 3. 表达式求值
 4. 函数调用
 实参的类型被转换为形参的类型
 5. 强制类型转换

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
 参考：[ZhouTimeMachine/Note](https://zhoutimemachine.github.io/note/courses/C-review/#week-3) 和 [C语言运算符优先级](https://blog.csdn.net/yuliying/article/details/72898132)

 |优先级|运算符|结和性/目数|
 |:-:|:-:|:-:|
 1|[]数组()
 1|-> 指向 . 结构
 2|- 取负 ++ 自增 -- 自减|右 / 单
 2|(类型)|右
 2|* 指针 & 取地址|右 / 单
 2|！非 ~ 按位反|右 / 单
 2|sizeof|右
 3|* / %|/ 双
 4|+ -|/ 双
 5|<< >>|/ 双
 6|>(=) <(=)|/ 双
 7|== !=|/ 双
 8 / 9 / 10|& 按位与 ^按位异或 \| 按位非|/ 双
 11 / 12|&& || 逻辑|/ 双
 13|?:|右 / 三
 14|各种赋值|右
 15|，

>逻辑：非 > 与 > 或
位运算：反 > 左移/右移 > 与 > 异或 > 或
结构体指针：指向/结构 > 自增/自减 > 指针*

### 输入与输出
#### scanf/printf

+ 不会自动换行
+ %d 十进制整型数 %ld 长整型数
+ %x 十六进制数 %o 八进制数
+ %-4d 整型数打印，占四位左对齐
+ %02d 整型数打印，不足的用0填充
+ %f float %lf double 
+ %6.2f 浮点数打印，小数点后有两位小数
+ %c 字符 %s 字符串
+ scanf 无法接收带有空格字符串
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
- 反码由原码按位取反（符号位除外）得到
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
### 数组
#### 一维数组初始化
##### 全局或静态变量
+ 未显式地初始化，自动赋予初始值0
+ 不完全初始化，未赋值元素自动赋予初始值0
##### 局部变量
+ 未初始化，初始值未知，可能为任意值
+ 不完全初始化，未赋值元素自动赋予初始值0
#### 二维数组初始化
+ 列数必须给出
+ 每行一个{}，逗号分隔
+ 如果省略，表示补零
#### 集成初始化（C99 only）
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
#### 字符串初始化
```c
%以下都可以实现字符串的初始化
static char s[6] = {'H', 'a', 'p', 'p', 'y', '\0'};
static char s[6] = {'H', 'a', 'p', 'p', 'y'};
static char s[6] ="Happy";
static char s[6] ={"Happy"};
static char s[6] = {'H', 'a', 'p', 'p', 'y', 0};
```
#### 字符串函数
strcmp(str1,str2) //如果字符串相同返回0，否则返回1
strcpy(target,source); 永远按正方向复制
memcpy(target,source,n); 永远按正方向地址
memmove(target,source,n); 能正确处理部分重叠
### 指针
#### 用途
+ 函数返回多个值  
+ 传入较大的数据时用作参数
+ 传入数组后对数组做操作
+ 用函数修改不止一个变量
+ 动态申请内存
#### 比较
+ 可以比较指向同一数组的指针、同一对象的成员指针、同一内存块的指针
+ 所有指针都可以与空指针比较
#### 注意
```c
//p+n=p+n*sizeof(*p)
```
### 结构体
+ 定义结构体时需要分号
+ -> 称为指向运算符
+ . 称为分量/成员运算符
```c
//访问结构体成员
//struct_point->member
//(*struct_point).member
```
---
## 算法
### 辗转相除法
```c
int gcd(int a, int b) {
    return b == 0 ? a : gcd(b, a % b);
}
```
### 搜索和排序
#### 时间复杂度
|排序算法|最佳情况|最坏情况|平均情况
|:-:|:-:|:-:|:-:|
|冒泡排序|$O(n)$（优化后）|$O(n^2)$|$O(n^2)$
#### 冒泡排序（Bubble Sort）：
通过比较相邻元素的大小，将较大（或较小）的元素交换到右边（或左边），从而实现排序。 
```c
void bubble_sort(int arr[], int n) {
    for (int i = 0; i < n-1; i++) {
        for (int j = 0; j < n-i-1; j++) {
            if (arr[j] > arr[j+1]) {
                int temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
            }
        }
    }
}

int main() {
    int arr[] = {64, 34, 25, 12, 22, 11, 90};
    int n = sizeof(arr) / sizeof(arr[0]);
    bubble_sort(arr, n);
    printf("Sorted array is: ");
    for (int i = 0; i < n; i++) {
        printf("%d ", arr[i]);
    }
    return 0;
}
```
#### 选择排序（Selection Sort）：
在未排序部分中找到最小（或最大）的元素，将其放到已排序部分的末尾，然后递归进行。
```c
void selection_sort(int arr[], int n) {
    for (int i = 0; i < n-1; i++) {
        int min_idx = i;
        for (int j = i+1; j < n; j++) {
            if (arr[j] < arr[min_idx]) {
                min_idx = j;
            }
        }
        int temp = arr[i];
        arr[i] = arr[min_idx];
        arr[min_idx] = temp;
    }
}

int main() {
    int arr[] = {64, 34, 25, 12, 22, 11, 90};
    int n = sizeof(arr) / sizeof(arr[0]);
    selection_sort(arr, n);
    printf("Sorted array is: ");
    for (int i = 0; i < n; i++) {
        printf("%d ", arr[i]);
    }
    return 0;
}
```
#### 插入排序（Insertion Sort）：
将未排序的元素插入到已排序的部分中，直到所有元素都排好序。插入排序的时间复杂度也为 ，但是对于小型数据集来说效率较高。
```c
void insertion_sort(int arr[], int n) {
    for (int i = 1; i < n; i++) {
        int key = arr[i];
        int j = i - 1;
        while (j >= 0 && arr[j] > key) {
            arr[j + 1] = arr[j];
            j--;
        }
        arr[j + 1] = key;
    }
}

int main() {
    int arr[] = {64, 34, 25, 12, 22, 11, 90};
    int n = sizeof(arr) / sizeof(arr[0]);
    insertion_sort(arr, n);
    printf("Sorted array is: ");
    for (int i = 0; i < n; i++) {
        printf("%d ", arr[i]);
    }
    return 0;
}
```
#### 快速排序（Quick Sort）：
通过选择一个基准值，将数组分为两部分，左边部分的元素都小于基准值，右边部分的元素都大于基准值，然后对左右两部分分别递归进行快速排序。快速排序的平均时间复杂度为 
O(nlogn)，但最坏情况下可能达到 

归并排序（Merge Sort）：
将数组分为两个子数组，对每个子数组进行排序，然后合并两个已排序的子数组以产生最终排序结果。归并排序的时间复杂度始终为 

堆排序（Heap Sort）：
将数组视为二叉树，然后将其转换为最大堆或最小堆，然后依次将堆顶元素与堆的最后一个元素交换，然后对剩余元素进行堆调整。堆排序的时间复杂度为 

计数排序（Counting Sort）：
首先统计数组中每个元素的出现次数，然后根据元素的值和出现次数将其放置到正确的位置上。计数排序的时间复杂度为 

基数排序（Radix Sort）：
将整数按照位数进行分桶排序，从低位到高位依次进行排序，直到所有位数都排序完成。基数排序的时间复杂度为 
