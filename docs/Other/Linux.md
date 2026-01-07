# Linux

## gcc

C程序从源代码到可执行文件需要经过四个步骤：**预处理、编译、汇编、链接**

1. `-c`(Compile)

    - 只进行预处理、编译和汇编，不进行链接
    - 将源文件（.c文件）转换为目标文件（.o文件）

    
    ```bash
    gcc -c main.c
    gcc -c utils.c
    ```

    - 生成main.o和utils.o文件，但不生成最终的可执行文件

2. `-o`(Output)
    - 指定输出文件的名称

    ```bash
    gcc main.c -o my_program
    gcc -c main.c -o main.o
    ```

    - 生成my_program可执行文件和main.o目标文件

3. `-l`(Link Library)
    - 在链接阶段，链接指定的库
    - 使用非标准的C库函数，如数学函数（sqrt、sin在libm库中）
    - 库函数的前缀lib缺省

    ```bash
    gcc mythread.c -lpthread
    ```

    - 链接名为libpthread的共享库文件

## 命令

sudo：superuser do，它允许普通用户执行超级用户（或root）权限的命令

su：switch user，用于切换用户，通常用于切换到root用户

uname：显示系统信息，如操作系统名称、主机名、内核版本等

free：显示系统的内存使用情况，包括物理内存、交换内存等

df：disk filesystem，显示文件系统的磁盘空间占用情况

top：动态显示当前系统中进程的状态，包括CPU、内存使用情况等

passwd：用于更改用户的密码

ls：列出目录中的文件和子目录

more：用于查看文本文件的内容，一页一页地显示

cat：用于连接并打印文件的内容到标准输出

cp：copy，用于复制文件和目录

mv：move，用于移动或重命名文件和目录

rm：remove，用于删除文件和目录

mkdir：make directory，用于创建新目录

ping：用于测试与目标主机的网络连接

ip：用于配置和显示Linux内核中网络接口的参数

reboot：重新启动系统

shutdown：关闭系统。

halt：关闭系统，与shutdown相似

man：查看命令的手册页，获取详细的使用说明

mount：用于挂载文件系统。


## Linux 用户、启动与登录

    + 多用户系统，超级用户root的主目录为/root，pi用户的主目录为/home/pi
    + $sudo raspi-config // 以超级用户身份运行raspi-config 程序
    + $sudo passwd // 设置root的密码

- 用户环境
    + 系统启动时为用户设置的环境，包括shell(bash,csh等)，启动时执行相应的脚本PATH, HOME等环境变量


- 文件的符号链接与硬链接
    + ln a b #硬链接，对文件a拷贝一个新文件b
    + ln a b -s #符号链接，对文件a起一个别名b
- I/O重定向、管道
    + echo "hello world" > mygreetings
    + ls -l | more
- 应用程序开发用到的头文件和库文件
    + include files: /user/include
    + libraries: /user/lib, /lib


- 多进程与多线程编程
    + fork,wait,pthread_create,pthread_join
    + gcc mythread.c -lpthread -lwiringPi
- 软件升级
    + apt与apt-get：advanced package tool, Ubuntu、Debian等系统的包管理工具，如：
    + apt install, apt-get install, apt-get update, apt-get upgrade
    + pip, pip3（python包管理工具），如：
    + pip3 install opencv-***.whl；pip3 uninstall package_name;pip3 list
- 树莓派的wiringPi库的安装与升级
    + sudo apt-get install wiringpi #安装 
    + wget https://project-downloads.drogon.net/wiringpi-latest.deb
    + sudo dpkg–i wiringp