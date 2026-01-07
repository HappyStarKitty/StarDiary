# Chap2 Embedded Processors

## Classification of embedded processors

!!! note "嵌入式处理器"
    - 嵌入式微处理器（Embedded Microprocessor Unit, EMPU）
        + 与通用计算机中的CPU不同，只保留和嵌入式应用相关的功能
        + 如Inter系列、PowerPC系列、ARM系列（Broadcom, Qualcomn, STM等）
    - 嵌入式微控制器（Microcontroller Unit, MCU）
        + 内部集成ROM、RAM、总线、定时/计数器、WatchDog、I/O、串口、PWM、A/D、D/A、Flash等
        + 单片化，体积大大减小，从而使功耗和成本下降、可靠性提高
        + **相对低端的MCU又称单片机**
        + 如Inter8051、MicroChip的PIC系列、ATMEL的AVR ATMEGA系列
        + 应用在涡喷发动机的ECU等
    - 嵌入式DSP处理器（Embedded Digital Signal Processor, EDSP）
        + 专门用于处理数字信号的处理器
        + 内部集成多种数字信号处理的算法和硬件加速器
        + 如TI的TMS320、Motorola的DSP56000系列
    - 嵌入式片上系统（System On Chip, SoC）
        + 分为通用和专用两类
        + 通用系列如Infineon的TriCore、Motorola的M-core
        + 专用系列如Philips的Smart XA

!!! example "示例"
    - Arduino的MCU：ATMEGA328是一款8位MCU，常用于Arduino Uno等开发板
    - Raspberry的MPU：BCM2837和BCM2711是Raspberry Pi的处理器，都是ARM架构的MPU
    - Pixhawk的MCU：STM32F427和STM32F765是Pixhawk飞行控制器使用的MCU，具有强大的处理和控制能力

嵌入式处理器技术指标：功能、字长、工作温度、功耗、寻址能力、电磁兼容性、平均故障间隔时间MTBF等

处理速度指标:主频(Clock Speed)、CPI(Clock Cycles per Instruction)、MIPS(Million Instructions Per Second)、FLOPS(Floating-Point Instructions per Second)

## Instrucition Set Architecture

!!! note "指令架构"
    - ISA(Instruction Set Architecture)：指令架构
    - RISC(Reduced Instruction Set Computer)：精简指令集计算机，如ARM
    - CISC(Complex Instruction Set Computer)：复杂指令集计算机，如Intel/AMD的X86

??? note "RISC指令集的特点"
    1. 选取使用频率高、有用且不复杂的简单指令；指令长度固定，指令格式
    2. 指令长度固定，指令格式种类少，寻址方式种类少
    3. 只有load/store指令会访问内存，其余指令执行都在寄存器之间进行，即限制内存访问
    4. CPU中通用寄存器数量相当多
    5. 大部分指令在一个机器周期内完成
    6. 采用流水线组织
    7. 以硬布线控制逻辑为主，不用或少用微程序控制
    8. 重视编译工作，以简单有效的方式支持高级语言，减少程序运行时间

!!! note "ARM架构"
    - ARM架构发展到V9(2021)，V8开始64位总线，V9加入machine learning部件
    - 基于ARMV7结构的处理器，冠上Cortex的代号，如基于V7A的Cortex-A，基于V7R的Cortex-R，基于V7M的Cortex-M3(A-Application, M-Microcontroller, R-Real-time)
    - 华为Kirn 9000/Kunpeng 920采用V8指令集，苹果A15/A16采用V9指令集
    - 低功耗、高扩展性、高性能与低功耗平衡、多核支持、生态系统丰富

## Processor Architecture

!!! note "处理器架构"
    - 冯诺依曼架构：程序和数据存储在相同的存储空间，传统架构
    - 哈佛架构：程序和数据存储在不同的存储空间，增加存取带宽，提高并行性

一般而言，RISC指令集处理器常采用哈佛架构，如ARM处理器V9系列；CISC指令集处理器常采用冯诺依曼架构，如X86

## Storage Format

!!! note "存储模式"
    - 大端模式（Big-endian）：低字节在高地址
    - 小端模式（Little-endian）：低字节在低地址
    - Arm支持大端和小端，缺省情况下是小端
    - Inter是小端模式，PowerPC是大端模式

    ![无法显示](figures/chap2/endian.png)

判断处理器的存储模式

```C
int main(){
    union{
        int i;
        char c[sizeof(int)];
    } x;
    x.i = 1;
    if (x.c[0] == 1)
        printf("小端模式\n");
    else
        printf("大端模式\n");
    return 0;
}

int main(){
    int x = 1;
    char *c = (char *)&x;
    if (*c)
        printf("小端模式\n");
    else
        printf("大端模式\n");
    return 0;
}
```

## Instruction-level Parallelism
!!! note "指令集并行"
    - Pipelining：将指令的执行分解为多个阶段，使得在每个时钟周期中，不同的指令可以同时处于不同的执行阶段
    - Superscalar(超标量)：超标量处理器有多个执行单元，如整数单元、浮点单元、加载/存储单元等，让它们能同时工作
    - Subword parallelism(子字并行)：将一个宽运算器（ALU）划分为多个较窄的运算单元，从而能够对较短的字长数据同时执行算术或逻辑运算。如Intel Pentium的MMX技术，让具有64位数据处理能力的CPU拆分为多个处理8位数据的单元，同时工作；是vector processing的一种形式
    - VLIW(Very Long Instruction Word, 超长指令字)：依赖于编译器，多个指令并在一起，同时执行相应的操作，比superscalar易于预测执行时间
    - Multicore(多核)：在单块芯片上集成多个处理器的结构，可以是同构（homogenous）或异构（heterogeneous）的

homogenous multicore（同构多核）：指芯片上集成的多个处理器核心架构、性能完全相同，例如常见的桌面级CPU（如Intel Core i7 的8 个核心），适合处理可均匀分配的并行任务（如多线程程序、数据计算）

heterogeneous multicore（异构多核）：指芯片上集成的多个处理器核心架构、性能存在差异，各自负责不同类型的任务，例如智能手机的SoC（系统级芯片）常同时包含高性能核心（如ARM Cortex-X 系列，负责复杂计算）和低功耗核心（如ARM Cortex-A 系列，负责日常轻量任务），可在性能与能耗之间实现平衡，广泛应用于移动设备、物联网终端等对功耗敏感的场景
