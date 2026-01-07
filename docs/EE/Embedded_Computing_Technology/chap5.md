# Chap5 Sensors and Actuators

## Overview of Sensors and Actuators

传感器是测量物理量的一种装置，执行器（作动器）是改变物理量的装置

??? summary "Sensor & Actuator"
    - Sensor
        + A sensor is a device that **measures** a physical quantity
        + Cameras(相机)、Accelerometers(加速度计)、Gyroscopes(陀螺仪)、Barometer(气压计)、Strain gauges(应力仪)、Magnetometers(磁力计)、Radar/Lidar(雷达/激光雷达)
    - Actuator
        + An actuator is a device that **modifies** a physical quantity
        + Solenoids(电磁阀)、Valves(阀门)、Loudspeakers、LCD(液晶显示屏)、LED(发光二极管)

??? note "传感器"
    - 磁力仪
        + 功用：测量磁场强度和方向
        + 原理：霍尔效应
    - 加速度计
        + 功用：导航、定向、跌落检测、图像稳定、气囊系统
        + 原理：弹簧-质量-阻尼系统、牛顿定律
        + 难点：区分倾斜和加速度、振动干扰、弹簧或阻尼器的非线性特性、二次积分获取位置
    - 陀螺仪
        + 功用：测量方向变化
        + 原理：萨格纳克效应
    - 应变仪
        + 功用：测量物体表面应变      

MPU6050：InvenSense公司的芯片，集成加速度计和陀螺仪，同时检测三轴角速度和三轴加速度

Inertial Navigation Systems(惯性导航系统): **GPS** for initialization and periodic correction、three axis **gyroscope** measures orientation、three axis **accelerometer** double integrated for position after correction for orientation

## Design Issues

!!! summary "Design Issues"
    - Calibration-标定/校准
        + Relating measurements to the physical phenomenon
        + Can dramatically increase manufacturing costs
    - Nonlinearity-非线性
        + Measurements may not be proportional to physical phenomenon
        + Correction may be required
        + Feedback can be used to keep operating point in the linear region
    - Sampling-采样
        + Aliasing(混叠)
        + Missed events
    - Noise-噪声
        + Analog signal conditioning(模拟信号调节)
        + Digital filtering(数字滤波)
        + Introduces latency(引入延迟)
    - Failures-错误
        + Redundancy(冗余)(sensor fusion problem)

### Nonlinearity

!!! info "线性与仿射模型"
    传感器可以由一个仿射函数进行近似建模。假设传感器在t时刻给出物理量x(t)的值为f(x(t))

    Linear model(线性函数)：$f(x(t))=ax(t)$

    Affine model(仿射函数)：$f(x(t))=ax(t)+b$

    a: sensitivity(灵敏度), b: bias(偏置)

    传感器的量程（range）有限，测量范围范围外的物理量会出现饱和（saturate），即产生最大值或最小值

    仿射模型可扩展为

    $$f(x(t))=\left\{\begin{aligned}ax(t)+b , L \le x(t) \le H \\ aH+b , x(t)>H \\ aL+b , x(t)<L\end{aligned}\right.$$

!!! note "动态范围"
    数字传感器无法区分物理量的两个间距极近的数值

    传感器的精度（presicion）p是传感器读数可区分的物理量的两个值之间的最小绝对差

    动态范围（Dynamic Range）定义为

    $$D=\frac{H-L}{p}$$

    动态范围通常以分贝（decibels，dB）为单位进行测量

    $$D_{dB}=20\log_{10}(\frac{H-L}{p})$$
### Sampling

### Noies

## Faults in Sensors

!!! note "Marzullo's Algorithm"
    马祖诺传感器融合算法：

    - 公理：若传感器无故障，其区间包含真实值
    - 观察：真实值必定处于无故障传感器区间的重叠区域
    - 共识（融合）区间（用于在n个传感器中容忍f个故障）：选择包含所有“n−f个传感器区间重叠部分”的区间

    ![无法显示](figures/chap6/mzn.png)

!!! note "Schmid and Schossmaier's Method"
    马祖诺算法会产生极大的不连续性（不连续问题：如果有传感器的测量值区间发生略微变化，可能导致最后的判定结果有跳变）

    考察n个传感器有f个故障的情况，选择区间是从(f+1)个最大的下界到(f+1)个最小的上界，这个选择在满足连续性条件下是最优的

    ![无法显示](figures/chap6/ssm.png)


