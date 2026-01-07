# Chap4 Input, Output and Interrupts

!!! note "Wired Connections"

    - Parallel (one wire per bit)
        + ATA: Advanced Technology Attachment 
        + PCI: Peripheral Component Interface 
        + SCSI: Small Computer System Interface
    - Serial (one wire per direction)
        + SPI: Serial Peripheral Interface bus
        + I2C: Inter-Integrated Circuit
        + USB: Universal Serial Bus
        + SATA: Serial ATA
        + CAN: Control Area Network
    - Mixed (one or more lanes)
        + PCIe: PCI Express
    - GPIO: General Purpose I/O
    - PWM: Pulse Width Modulation

串行总线：数据在一位宽的线上按位进行传输

并行总线：数据在多位宽的线上同时进行传输

串行异步通信（Universal Asynchronous Receiver-Transmitter）：在异步通信中，发送方和接收方没有共同的时钟信号。为了确保双方能够正确地传输和接收数据，发送方会在每个字节的数据前加上起始位，后加上停止位，用来标识数据的开始和结束。接收方则依靠检测起始位和停止位来同步数据。

串行同步通信：在同步通信中，发送方和接收方使用同一个时钟信号来同步数据。这个时钟信号可以是外部分配的，也可以是嵌入在数据流中的。由于使用了共同的时钟信号，同步通信可以更高速度地传输数据，且数据传输效率较高。

RS-232：物理层的通信协议，定义信号电平和接口的物理标准

总线接口：
I2C, SPI：都是串行通信协议，用于连接微控制器和各种外围设备。CAN：控制器局域网，用于汽车和工业应用。以太网：局域网的标准。串口：通常指RS-232接口，用于串行通信。USB：通用串行总线，用于连接各种外围设备。PWM：脉冲宽度调制，一种模拟信号控制方法。IEEE1394：一种高速串行总线接口。

无线接口技术：
红外：利用波长在750nm至1mm之间红外线进行数据传输。蓝牙：短距离无线通信技术。WLAN：无线局域网。

!!! note "I2C总线"
    I2C(Inter-Integrated Circuit)总线

    - 由数据线SDA和时钟SCL构成的串行总线，可发送和接收数据
    - 各种被控制电路均并联在这条总线上，每个电路和模块都有唯一地址
    - CPU发出的控制信号分为地址码和控制量两部分
    - I2C总线在传送数据时共有三种类型信号：开始信号、结束信号、应答信号
        + 开始信号：SCL为高电平时，SDA由高电平向低电平跳变，开始传送数据
        + 结束信号：SCL为高电平时，SDA由低电平向高电平跳变，结束传送数据
        + 应答信号：接收数据的IC在接收到8bit数据后，向发送数据的IC发出特定的低电平脉冲，表示已收到资料

!!! note "CAN总线"
    CAN(Controller Area Network)总线


PCIe (PCI Express)：PCIe是一种高速串行计算机扩展总线标准，用于连接计算机内部的各种设备。与传统的PCI总线相比，PCIe具有更高的传输速度和更低的功耗。
GPIO (General Purpose I/O)：GPIO是一种通用输入输出接口，用于在微控制器或计算机与其他数字逻辑电路之间进行通信。GPIO引脚可以配置为输入或输出模式，用于读取或设置数字信号。
PWM (Pulse Width Modulation)：PWM是一种模拟控制方式，它通过调节脉冲的宽度来控制模拟电路。PWM可以用于控制电机的速度、LED的亮度等。输出电压=(接通时间/脉冲时间)×最大电压值

!!! note "I/O"
    - Polling
        + Main loop uses each I/O device periodically.
        + If output is to be produced, produce it.
        + If input is ready, read it.
    - Interrupts 
        + External hardware alerts the processor that input is ready.
        + Processor suspends what it is doing.
        + Processor invokes an interrupt service routine (ISR).
        + ISR interacts with the application concurrently.

??? note "I/O"
    - 轮询
        + 主循环定期使用每个I/O设备
        + 如果要产生输出，则产生它
        + 如果输入准备就绪，则读取它
    - 中断
        + 外部硬件提醒处理器输入已准备就绪
        + 处理器暂停当前操作
        + 处理器调用一个中断服务例程（ISR）
        + ISR与应用程序并发交互

轮询（Polling）和中断（Interupts）是两种处理I/O操作的方法。轮询是软件定期发起的，适用于快速响应或定期接收大量数据的情况。而中断是由外部硬件事件触发的，适用于需要高效处理或多设备监控的情况