# Chap3 Memory Architectures

## Types of memory

!!! note "存储器分类"
    - 非易失存储器（Non-Volatile Memory）：Preserves contents when power is off
        + 可擦除可编程只读存储器（erasable programmable read only memory, EPROM）：可以被紫外线擦除并重新编程
        + 电可擦除可编程只读存储器（electrically erasable programmable read only memory, EEPROM）：可以通过电子方式擦除或编程
        + Flash存储器
        + 磁盘存储器：辅助存储器，存储容量大但访问速度慢，一般不用于嵌入式系统
    - 易失存储器（Volatile Memory）：Loses contents when power is off
        + 静态随机访问存储器（static random-access memory, SRAM）：速度快，不需要刷新，成本高，常用于高速缓存（caches）、暂存器（scratchpads）
        + 动态随机访问存储器（dynamic random-access memory, DRAM）：需要定期刷新以保存数据，成本低，常用于主存（main memory）
        + Boot loader：On power up, transfers data from non-volatile to volatile memory

!!! note "Flash"
    Flash是嵌入式系统广泛采用的主流存储器，主要特点是**按整块擦除**和**按字节编程**，具有低功耗、高密度、小体积等优点

    块擦除：把数据块的所有位，置为逻辑1，即浮栅晶体管电荷释放

    按字节编程：将字节的相应位从1变成0（不能从0变成1，要擦除）

    - NOR Flash(随机读取)
        + 读取速度快，擦除和写速度慢
        + 存储容量小，适用于存储嵌入式系统的**固件/程序代码**，如BIOS芯片
    - NAND Flash(按块读取)
        + 读取速度慢，擦除和写速度快
        + 存储容量大，常用于存储**数据**，如USB驱动器、SSD

??? note "SRAM存储单元"
    - 基本存储单元通常由6个晶体管组成（4个N沟道MOS管和2个P沟道MOS管）组成，构成一个双稳态触发器
    - 双稳态存储器可以稳定存储一个比特的数据，只要不断电，数据就会一直保持
    - 进行读写操作时，通过字线（Word Line）和位线（Bit Line）来控制存储单元，字线激活时，存储单元和位线连接，进行数据的读写
    - 随机访问时延接近逻辑门延迟，读写一次即可得到

??? note "DRAM存储单元"
    - 基本存储单元由一个晶体管和一个电容组成，数据以电荷的形式存储到电容中，有电荷表示1，无电荷表示0
    - 由于电容存在漏电现象，所以电容上存储的电荷会逐渐丢失，需要定期刷新保持数据的正确性
    - 存取时，先进行行选通（Row Address Strobe, RAS），再列选通（Column Address Strobe, CAS），一次完整访问需要2~3个阶段

Scratchpad：Scratchpad Memory是集成到芯片上的非cache用途的SRAM存储器的统称，通常指的是**专用的、显式管理**的高速存储区，有时也称为**Tightly Coupled Memory(TCM)**

Cache：是一种**硬件管理的、自动执行的**数据缓冲存储器，位于主存和处理器之间，旨在缓存最近使用或常用的数据，以加速对内存的访问

存储器性能指标：存储容量、访问时间、带宽、成本、可靠性

## Memory organization

内存组织是指程序运行时在内存中的布局方式

静态分配内存（Statically-allocated memory）：编译时就确定并分配内存的方式，静态变量和全局变量通常存储在静态分配内存中

动态分配内存（Dynamically-allocated memory）：运行时分配内存

栈（Stack）：动态分配给程序的以后进先出（Last-In-First-Out, LIFO）方式访问的一块存储区域

堆（Heap）：动态分配的另一种区域，与栈不同，堆上的内存分配和释放不遵循LIFO原则。相反，它通常是由程序员显式地管理，或者通过垃圾回收机制来自动管理。在C语言中，程序员使用malloc()和free()函数来在堆上分配和释放内存

## Memory map

操作系统和硬件通过地址转换，将连续地址空间的逻辑地址转换为某个存储器的物理位置

处理器的存储器映射（memory map）定义了如何将地址映射到硬件，且处理器的地址宽度限定了地址空间的总大小

## Memory Management Unit

如果处理器具有内存管理单元（Memory Management Unit），程序就可以使用逻辑地址，并将这些逻辑地址译成物理地址

## Memory hierarchies

在现代计算机中，为了平衡不同类型的内存之间的速度、成本和容量，内存被组织成一个层次结构

### Basic cache organization structure

cache的映射规则：直接相联映射、全相联映射、组相联映射

- 有效标签块（Valid Tag Block）：表示缓存行是否有效
- 集合索引（Set Index）：用于确定数据应存放在哪个集合
- 块偏移（Block Offset）：在集合内部用于定位数据
- 标签（Tag）：用于识别一个特定的内存块

当CPU尝试从内存中读取数据时，首先检查缓存。如果请求的地址的标签与缓存行中的标签匹配，则称为缓存命中，数据直接从缓存中读取。如果不匹配，则发生缓存未命中（cache miss），需要从主内存中获取数据，并更新缓存行

### Direct-Mapped Cache

直接映射缓存（Direct-Mapped Cache）：一种缓存策略，其中每个主内存块只能被放置到一个特定的缓存行中。缓存被组织成多个集合（Set），每个集合包含多个行（Line）

### Set-Assocaitive Cache

组相联缓存（Set-Assocaitive Cache）：每个集合可以包含多个行，每个行都可以存储一个块。当查找一个块时，会在一个集合内的多个行中进行查找，需要使用关联存储器（associative memory）或内容可寻址存储器（content-addressable memory）。如果缓存未命中，则需要从主内存中获取该块，并替换集合中的某个行,这时就需要一个替换策略，如最近最少使用（LRU）或先进先出（FIFO）

